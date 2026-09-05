plugins {
    alias(libs.plugins.android.application)
    alias(libs.plugins.kotlin.compose)
}

val zygiskHookRuntime by configurations.creating

abstract class GenerateLegalAssetsTask : org.gradle.api.DefaultTask() {
    @get:org.gradle.api.tasks.InputFiles
    @get:org.gradle.api.tasks.PathSensitive(org.gradle.api.tasks.PathSensitivity.NONE)
    abstract val legalFiles: org.gradle.api.file.ConfigurableFileCollection

    @get:org.gradle.api.tasks.OutputDirectory
    abstract val outputDirectory: org.gradle.api.file.DirectoryProperty

    @get:javax.inject.Inject
    abstract val fileSystemOperations: org.gradle.api.file.FileSystemOperations

    @org.gradle.api.tasks.TaskAction
    fun generate() {
        fileSystemOperations.sync {
            from(legalFiles) {
                into("legal")
            }
            into(outputDirectory)
        }
    }
}

val generateLegalAssets = tasks.register<GenerateLegalAssetsTask>("generateLegalAssets") {
    legalFiles.from(
        rootProject.layout.projectDirectory.file("LICENSE"),
        rootProject.layout.projectDirectory.file("NOTICE"),
        rootProject.layout.projectDirectory.file("THIRD_PARTY_NOTICES.md"),
    )
}

android {
    namespace = "com.hyper.onestep"
    compileSdk {
        version = release(37) {
            minorApiLevel = 0
        }
    }

    defaultConfig {
        applicationId = "com.hyper.onestep"
        minSdk = 29
        targetSdk = 36
        maxSdk = 37
        versionCode = 104
        versionName = "1.3.0"

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
    }

    buildTypes {
        release {
            optimization {
                enable = false
            }
        }
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    kotlin {
        compilerOptions {
            jvmTarget = org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17
        }
    }
    buildFeatures {
        compose = true
        buildConfig = true
    }
    externalNativeBuild {
        cmake {
            path = file("src/main/cpp/CMakeLists.txt")
            version = "3.22.1"
        }
    }
    ndkVersion = "26.1.10909125"
}

val legacyExclusions = listOf(
    "**/view/MainDisplayView.java",
    "**/view/TaskSwitcherView.java",
    "**/view/WindowAnimationController.java",
    "**/view/HostedTouchForwarder.java",
    "**/view/DisplayHostGeometry.java",
    "**/view/SideView.java",
    "**/view/SidebarRootView.java",
    "**/view/SidebarListView.java",
    "**/view/SidebarAdapter.java",
    "**/view/Trash.java",
    "**/view/AppListAdapter.java",
    "**/view/ResolveInfoListAdapter.java",
    "**/view/ContactListAdapter.java",
    "**/view/OngoingAdapter.java",
    "**/view/FloatText.java",
    "**/util/ContactManager.java",
    "**/util/ContactItem.java",
    "**/util/DingDingContact.java",
    "**/util/WechatContact.java",
    "**/util/MailContact.java",
    "**/util/MmsContact.java",
    "**/util/MailContactsHelper.java",
    "**/util/AddContactManager.java",
    "**/util/OngoingManager.java",
    "**/util/OngoingItem.java",
    "**/util/MiuiMirrorDragBridge.java",
    "**/util/ResolveInfoManager.java",
    "**/util/ResolveInfoGroup.java",
    "**/action/UninstallAction.java",
)

tasks.withType<JavaCompile>().configureEach {
    exclude(legacyExclusions)
}

androidComponents {
    onVariants(selector().all()) { variant ->
        variant.sources.assets?.addGeneratedSourceDirectory(generateLegalAssets) {
            it.outputDirectory
        }
    }
}

val prepareZygiskHookRuntime = tasks.register<Sync>("prepareZygiskHookRuntime") {
    from(zygiskHookRuntime.incoming.artifacts.resolvedArtifacts.map { artifacts ->
        artifacts.map { zipTree(it.file) }
    })
    include("classes.dex")
    include("jni/arm64-v8a/**")
    include("jni/armeabi-v7a/**")
    into(layout.buildDirectory.dir("zygisk-hook-runtime"))
}

dependencies {
    implementation(libs.androidx.appcompat)
    implementation(libs.androidx.core.ktx)
    implementation(libs.material)
    implementation(libs.androidx.viewpager2)
    implementation(libs.androidx.recyclerview)
    implementation(libs.androidx.activity.compose)
    implementation(libs.androidx.compose.ui)
    implementation(libs.androidx.compose.foundation)
    implementation(libs.androidx.compose.material3)
    implementation(libs.androidx.compose.icons.extended)
    implementation(libs.miuix.ui)
    implementation(libs.miuix.navigation3.ui)
    implementation(libs.miuix.preference)
    implementation(libs.miuix.icons)
    implementation(libs.miuix.blur)
    implementation(libs.navigation3.runtime)
    implementation(libs.appiconloader)
    compileOnly("com.aliucord:Aliuhook:1.1.4")
    compileOnly(libs.xposed.api)
    zygiskHookRuntime("com.aliucord:Aliuhook:1.1.4") {
        isTransitive = false
    }
    testImplementation(libs.junit)
    testImplementation(libs.xposed.api)
    androidTestImplementation(libs.androidx.espresso.core)
    androidTestImplementation(libs.androidx.junit)
}
