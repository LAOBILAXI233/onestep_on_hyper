pluginManagement {
    repositories {
        google {
            content {
                includeGroupByRegex("com\\.android.*")
                includeGroupByRegex("com\\.google.*")
                includeGroupByRegex("androidx.*")
            }
        }
        mavenCentral()
        gradlePluginPortal()
    }
}
plugins {
    id("org.gradle.toolchains.foojay-resolver-convention") version "1.0.0"
}
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        maven {
            name = "AliyunCentralMirror"
            url = uri("https://maven.aliyun.com/repository/central")
        }
        mavenCentral()
        maven {
            name = "Aliucord"
            url = uri("https://maven.aliucord.com/releases")
            content {
                includeGroup("com.aliucord")
                includeGroup("com.aliucord.lsplant")
            }
        }
        maven {
            name = "XposedApi"
            url = uri("https://api.xposed.info/")
            content {
                includeGroup("de.robv.android.xposed")
            }
        }
    }
}

rootProject.name = "VanStep"
include(":app")
include(":xposed-api-stubs")
