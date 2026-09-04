.class public Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;
.super Ljava/lang/Object;
.source "SystemPreInstallApps.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;
    }
.end annotation


.field public static final APP_STORE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final BROWSER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final CALCULATOR:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final CALENDAR:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final CAMERA:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final CLOCK:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final CLOUD_SYNC:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final DOWNLOAD:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final DRIVING_MODE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final EMAIL:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final FILE_MANAGER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final GALLERY:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final GAME_STORE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final MMS:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final MUSIC:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final NOTE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final PHONE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final RECORDER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final REMOTE_ASSISTANCE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final SARA:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final SEARCH:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final SECURITY_CENTER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final SETTINGS:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final SMARTISAN_BBS:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final SYSTEM_APPS:[Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final SYSTEM_APP_CATEGORY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WEATHER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

.field public static final WIZARD:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;


.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 7
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.android.contacts"

    const-string v5, "com.android.contacts.activities.DialtactsActivity"

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->PHONE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 8
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.android.browser"

    const-string v5, "com.android.browser.BrowserActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->BROWSER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 9
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.ui.ConversationList"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->MMS:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 10
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.appstore"

    const-string v5, "com.smartisanos.appstore.AppStoreActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->APP_STORE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 11
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.android.camera2"

    const-string v5, "com.android.camera.CameraLauncher"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->CAMERA:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 12
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.android.gallery3d"

    const-string v5, "com.android.gallery3d.app.Gallery"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->GALLERY:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 13
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.notes"

    const-string v5, "com.smartisanos.notes.NotesActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->NOTE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 14
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.android.calendar"

    const-string v5, "com.android.calendar.AllInOneActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->CALENDAR:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 15
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.clock"

    const-string v5, "com.smartisanos.clock.activity.ClockActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->CLOCK:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 16
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.music"

    const-string v5, "com.smartisanos.music.activities.MusicMain"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->MUSIC:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 17
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SETTINGS:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 18
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.android.email"

    const-string v5, "com.android.email.activity.Welcome"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->EMAIL:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 19
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.calculator"

    const-string v5, "com.smartisanos.calculator.Calculator"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->CALCULATOR:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 20
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.recorder"

    const-string v5, "com.smartisanos.recorder.activity.EmptyActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->RECORDER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 21
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.weather"

    const-string v5, "com.smartisanos.weather.CityWeather"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->WEATHER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 22
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.quicksearch"

    const-string v5, "com.android.quicksearchbox.SearchActivity"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "com.android.quicksearchbox;com.android.quicksearchbox.SearchActivity"

    aput-object v7, v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SEARCH:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 24
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.setupwizard"

    const-string v5, "com.smartisanos.setupwizard.launcherguidance.LauncherGuidanceActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 25
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.cloudsync"

    const-string v5, "com.smartisanos.cloudsync.AccountsActivityLauncher"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "com.smartisanos.cloudsync;com.smartisanos.accounts.AccountsActivity"

    aput-object v7, v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->CLOUD_SYNC:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 27
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.android.providers.downloads.ui"

    const-string v5, "com.android.providers.downloads.ui.SplashActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->DOWNLOAD:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 29
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.gamestore"

    const-string v5, "com.smartisanos.gamestore.GameStoreActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->GAME_STORE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 30
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.sara"

    const-string v5, "com.smartisanos.sara.SpeechNowActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SARA:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 31
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.securitycenter"

    const-string v5, "com.smartisanos.securitycenter.SecurityCenterActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SECURITY_CENTER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 32
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.handinhand"

    const-string v5, "com.smartisanos.handinhand.activity.HomeActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->REMOTE_ASSISTANCE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 33
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.drivingmode"

    const-string v5, "com.smartisanos.drivingmode.MainActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->DRIVING_MODE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 35
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisanos.filemanager"

    const-string v5, "com.smartisan.filemanager.MainActivity"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->FILE_MANAGER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 38
    new-instance v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    const-string v3, "34"

    const-string v4, "com.smartisan.bbs"

    const-string v5, "com.smartisan.bbs.activity.MainActivity_"

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SMARTISAN_BBS:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 40
    const/16 v2, 0x1a

    new-array v2, v2, [Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    sget-object v3, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->PHONE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v3, v2, v1

    sget-object v3, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->BROWSER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v3, v2, v8

    const/4 v3, 0x2

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->MMS:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->APP_STORE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->CAMERA:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->GALLERY:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->NOTE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->CALENDAR:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->CLOCK:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->MUSIC:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SETTINGS:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->EMAIL:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->CALCULATOR:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->GAME_STORE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->WEATHER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SECURITY_CENTER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->RECORDER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SEARCH:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0x12

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->CLOUD_SYNC:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0x13

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->DOWNLOAD:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0x14

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0x15

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SARA:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0x16

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->DRIVING_MODE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0x17

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->REMOTE_ASSISTANCE:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0x18

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SMARTISAN_BBS:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    const/16 v3, 0x19

    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->FILE_MANAGER:Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    aput-object v4, v2, v3

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SYSTEM_APPS:[Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    .line 46
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SYSTEM_APP_CATEGORY:Ljava/util/Map;

    .line 48
    sget-object v2, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SYSTEM_APPS:[Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;

    array-length v3, v2

    .local v0, "app":Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 49
    sget-object v4, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SYSTEM_APP_CATEGORY:Ljava/util/Map;

    iget-object v5, v0, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    iget-object v6, v0, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;->categoryId:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
