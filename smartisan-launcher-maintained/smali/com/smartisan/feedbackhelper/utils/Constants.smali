.class public Lcom/smartisan/feedbackhelper/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;
    }
.end annotation


.field public static final BUGREPORT_CONN_TIMEOUT:I = 0x2710

.field public static final BUGREPORT_DEFAULT_SETTINGS_FILE_NAME:Ljava/lang/String; = "default_settings"

.field public static final BUGREPORT_DEVICE_ID_CONF_KEY:Ljava/lang/String; = "ro.bugreport.uid.type"

.field public static final BUGREPORT_DEVICE_ID_DEFAULT:Ljava/lang/String; = "INVALID_DEVICE_ID"

.field public static final BUGREPORT_DEVICE_ID_TYPE_SERIAL:Ljava/lang/String; = "SERIAL"

.field public static final BUGREPORT_DEVICE_ID_TYPE_TELEPHONY_DEVICE_ID:Ljava/lang/String; = "TELEPHONY_DEVICE_ID"

.field public static final BUGREPORT_DEVICE_ID_TYPE_WIFI_MAC:Ljava/lang/String; = "WIFI_MAC"

.field public static final BUGREPORT_EXEC_TIMEOUT:I = 0x78

.field public static final BUGREPORT_EXEC_VARIABLE_OUTPUT_DIR:Ljava/lang/String; = "B2G_REPORT_DIR"

.field public static final BUGREPORT_EXEC_VARIABLE_TIMESTAMP:Ljava/lang/String; = "B2G_REPORT_TIMESTAMP"

.field public static final BUGREPORT_INTENT_BATTERY_THRESHOLD_CHANGED:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.BATTERY_THRESHOLD_CHANGED"

.field public static final BUGREPORT_INTENT_BUGREPORT_END:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.END"

.field public static final BUGREPORT_INTENT_BUGREPORT_ERROR:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.ERR"

.field public static final BUGREPORT_INTENT_BUGREPORT_START:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.START"

.field public static final BUGREPORT_INTENT_COLLECT_CATEGORY_LOG:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.COLLECT_CATEGORY_LOG"

.field public static final BUGREPORT_INTENT_CONFIGURATION_UPDATED:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.CONFIGURATION_UPDATED"

.field public static final BUGREPORT_INTENT_DISCARD_REPORT:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.DISCARD_REPORT"

.field public static final BUGREPORT_INTENT_EDIT_REPORT:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.EDIT_REPORT"

.field public static final BUGREPORT_INTENT_EXTRA_BATTERY_THRESHOLD:Ljava/lang/String; = "BATTERY_THRESHOLD"

.field public static final BUGREPORT_INTENT_EXTRA_NOTIFICATION_BAR:Ljava/lang/String; = "NOTIFICATION_BAR"

.field public static final BUGREPORT_INTENT_EXTRA_NOTIFICATION_DIALOG:Ljava/lang/String; = "NOTIFICATION_DIALOG"

.field public static final BUGREPORT_INTENT_EXTRA_NOTIFICATION_TOAST:Ljava/lang/String; = "NOTIFICATION_TOAST"

.field public static final BUGREPORT_INTENT_EXTRA_NOTIFICATION_TYPE:Ljava/lang/String; = "NOTIFICATION_TYPE"

.field public static final BUGREPORT_INTENT_EXTRA_PRIORITY_FROM:Ljava/lang/String; = "PRIORITY_FROM"

.field public static final BUGREPORT_INTENT_EXTRA_PRIORITY_TO:Ljava/lang/String; = "PRIORITY_TO"

.field public static final BUGREPORT_INTENT_EXTRA_REPORT:Ljava/lang/String; = "COMPLAINT_REPORT"

.field public static final BUGREPORT_INTENT_EXTRA_REPORT_IDS:Ljava/lang/String; = "REPORT_IDS"

.field public static final BUGREPORT_INTENT_PARA_AVAIL_SIZE:Ljava/lang/String; = "availsize"

.field public static final BUGREPORT_INTENT_PARA_DETAIL:Ljava/lang/String; = "ISSUE_DETAIL"

.field public static final BUGREPORT_INTENT_PARA_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field public static final BUGREPORT_INTENT_PARA_ERROR_TITLE:Ljava/lang/String; = "ERROR_TITLE"

.field public static final BUGREPORT_INTENT_PARA_ERROR_TYPE:Ljava/lang/String; = "errortype"

.field public static final BUGREPORT_INTENT_PARA_ID:Ljava/lang/String; = "id"

.field public static final BUGREPORT_INTENT_PARA_REQ_SIZE:Ljava/lang/String; = "reqsize"

.field public static final BUGREPORT_INTENT_PARA_SUMMARY:Ljava/lang/String; = "ISSUE_SUMMARY"

.field public static final BUGREPORT_INTENT_PARA_TAG:Ljava/lang/String; = "ISSUE_TAG"

.field public static final BUGREPORT_INTENT_PARA_VERSION:Ljava/lang/String; = "version"

.field public static final BUGREPORT_INTENT_PAUSE_UPLOAD:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.PAUSE_UPLOAD"

.field public static final BUGREPORT_INTENT_REPORT_CREATED:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.REPORT_CREATED"

.field public static final BUGREPORT_INTENT_REPORT_REMOVED:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.REPORT_REMOVED"

.field public static final BUGREPORT_INTENT_REPORT_UPDATED:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.REPORT_UPDATED"

.field public static final BUGREPORT_INTENT_SAVE_REPORT:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.SAVE_REPORT"

.field public static final BUGREPORT_INTENT_STANDARD_DATA:Ljava/lang/String; = "smartisan.intent.action.REPORT.DATA"

.field public static final BUGREPORT_INTENT_UPLOAD_FAILED:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.REPORT_UPLOAD_FAILED"

.field public static final BUGREPORT_INTENT_UPLOAD_PAUSED:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.UPLOAD_PAUSED"

.field public static final BUGREPORT_INTENT_UPLOAD_PRIORITY_CHANGED:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.UPLOAD_PRIORITY_CHANGED"

.field public static final BUGREPORT_INTENT_UPLOAD_PROGRESS:Ljava/lang/String; = "smartisan.intent.action.upload.progress"

.field public static final BUGREPORT_INTENT_UPLOAD_SUCCESS:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.REPORT_UPLOAD_SUCCESS"

.field public static final BUGREPORT_INTENT_UPLOAD_UNPAUSED:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.UPLOAD_UNPAUSED"

.field public static final BUGREPORT_INTENT_USER_SETTINGS_UPDATED:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.USER_SETTINGS_UPDATED"

.field public static final BUGREPORT_INTENT_VIEW_REPORT:Ljava/lang/String; = "smartisan.intent.action.BUGREPORT.VIEW_REPORT"

.field public static final BUGREPORT_PERMISSION_USER_SETTINGS:Ljava/lang/String; = "com.smartisan.bug_report.permission.USER_SETTINGS"

.field public static final BUGREPORT_READ_TIMEOUT:I = 0x3a98

.field public static final BUGREPORT_SDCARD_EXT_PATH:Ljava/lang/String;

.field public static final BUGREPORT_SDCARD_EXT_STORAGE_PATH:Ljava/lang/String;

.field public static final BUGREPORT_SDCARD_PATH:Ljava/lang/String;

.field public static final BUGREPORT_SDCARD_STORAGE_PATH:Ljava/lang/String;

.field public static final BUGREPORT_SERVER:Ljava/lang/String;

.field public static final BUGREPORT_SERVICE:Ljava/lang/String;

.field public static final BUGREPORT_SETTINGS_FILE_NAME:Ljava/lang/String; = ".settings.properties"

.field public static final BUGREPORT_SHELL_ERROR_NOSTORAGE:Ljava/lang/String; = "nostorage"

.field public static final BUGREPORT_SHELL_HIGHEST_COMPAT_VERSION:I = 0x2

.field public static final BUGREPORT_SHELL_LOWEST_COMPAT_VERSION:I = 0x2

.field public static final BUGREPORT_URL_FILELIST:Ljava/lang/String;

.field public static final BUGREPORT_URL_FILEUPLOAD:Ljava/lang/String;

.field public static final BUGREPORT_URL_FOLDERCREATE:Ljava/lang/String;

.field public static final BUGREPORT_URL_GETUPLOADID:Ljava/lang/String;

.field public static final BUGREPORT_URL_LOGOFF:Ljava/lang/String;

.field public static final BUGREPORT_URL_LOGON:Ljava/lang/String;

.field public static final BUGREPORT_URL_RESUME:Ljava/lang/String;

.field public static final BUGREPORT_URL_UPLOAD:Ljava/lang/String;

.field public static final BYTE_FORMAT:Ljava/lang/String; = "%d bytes"

.field public static final COLLECTOR_TIMEOUT:I = 0x927c0

.field public static final DEFAULT_ATTACH_SCREENSHOT:Ljava/lang/String; = "PROMPT"

.field public static final DEFAULT_AUTO_REPORT:Z = false

.field public static final DEFAULT_AUTO_UPLOAD:Z = false

.field public static final DEFAULT_BATTERY_PERCENT:I = 0x0

.field public static final DEFAULT_COLLECT_LOCATION:Z = false

.field public static final DEFAULT_DEAM_NOTIFICATION:Z = true

.field public static final DEFAULT_FIRST_BOOT:Z = true

.field public static final DEFAULT_MOBILE_UPLOAD_ALLOWED:Z = false

.field public static final DEFAULT_PROVIDE_ADDITIONAL_INFO:Z = true

.field public static final DEFAULT_USER_TYPES:I = 0x0

.field public static final DEFAULT_WIFI_ONLY:Z = true

.field public static final DEVICE_PROPERTY_APVERSION_1:Ljava/lang/String; = "ro.modversion"

.field public static final DEVICE_PROPERTY_APVERSION_2:Ljava/lang/String; = "ro.build.description"

.field public static final DEVICE_PROPERTY_BPVERSION:Ljava/lang/String; = "gsm.version.baseband"

.field public static final GB:I = 0x40000000

.field public static final GB_FORMAT:Ljava/lang/String; = "%.1f GB"

.field public static final KB:I = 0x400

.field public static final KB_FORMAT:Ljava/lang/String; = "%.1f KB"

.field public static final LOG_FILES_LABEL:Ljava/lang/String; = "files"

.field public static final LOG_FILES_REMOVE_LABEL:Ljava/lang/String; = "files_to_remove"

.field public static final LOG_SCREENSHOT_LABEL:Ljava/lang/String; = "screenshot"

.field public static final MB:I = 0x100000

.field public static final MB_FORMAT:Ljava/lang/String; = "%.1f MB"

.field public static final MIN_SPACE_REQUIRED:I = 0x3200000

.field public static final REPORT_INFO_LABEL:Ljava/lang/String; = "report_info"

.field public static final REPORT_LOG_CATEGORY:Ljava/lang/String; = "log_category"

.field public static final REPORT_LOG_PATH:Ljava/lang/String; = "log_path"

.field public static final SECURE_STORAGE_PATH:Ljava/lang/String; = "/data/bug_report"

.field private static final TAG:Ljava/lang/String; = "BugReportConstants"

.field public static final TIMESTAMP_LABEL:Ljava/lang/String; = "timestamp"

.field public static final USER_BANNED:I = 0x3

.field public static final USER_DEV:I = 0x2

.field public static final USER_SETTINGS_KEY_ADD_SCREENSHOT:Ljava/lang/String; = "user_attach_screenshot"

.field public static final USER_SETTINGS_KEY_AUTO_REPORT:Ljava/lang/String; = "user_auto_report_enabled"

.field public static final USER_SETTINGS_KEY_AUTO_UPLOAD:Ljava/lang/String; = "user_auto_upload_enabled"

.field public static final USER_SETTINGS_KEY_BATTERY_PERCENT:Ljava/lang/String; = "user_battery_percent"

.field public static final USER_SETTINGS_KEY_COLLECT_LOCATION:Ljava/lang/String; = "user_collect_location"

.field public static final USER_SETTINGS_KEY_COREID:Ljava/lang/String; = "user_coreid"

.field public static final USER_SETTINGS_KEY_COREID_REQUIRED:Ljava/lang/String; = "user.coreid.required"

.field public static final USER_SETTINGS_KEY_DEAM_NOFITIFCATION:Ljava/lang/String; = "user.deam.notification.enabled"

.field public static final USER_SETTINGS_KEY_EMAIL:Ljava/lang/String; = "user_email"

.field public static final USER_SETTINGS_KEY_ENGINEERING_MODE_ENABLED:Ljava/lang/String; = "user.engineering.mode.enabled"

.field public static final USER_SETTINGS_KEY_FIRST_BOOT:Ljava/lang/String; = "user_firstboot"

.field public static final USER_SETTINGS_KEY_FIRST_NAME:Ljava/lang/String; = "user_first_name"

.field public static final USER_SETTINGS_KEY_PHONE:Ljava/lang/String; = "user_phone"

.field public static final USER_SETTINGS_KEY_UPLOAD_MOBILE_ALLOWED:Ljava/lang/String; = "user_upload_mobile_allowed"

.field public static final USER_SETTINGS_KEY_USER_TYPES:Ljava/lang/String; = "user_types"

.field public static final USER_SETTINGS_KEY_WIFI_ONLY:Ljava/lang/String; = "user_upload_wifi_only"

.field public static final USER_TESTER:I = 0x0

.field public static final USER_USER:I = 0x1

.field private static cookieStore:Lorg/apache/http/client/CookieStore; = null

.field public static final smartisan_EMAIL_DOMAIN:Ljava/lang/String; = "@smartisan.com"


.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 28
    .local v2, "props":Ljava/util/Properties;
    const-string v3, "bugreport.service"

    const-string v4, "bugreport"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SERVICE:Ljava/lang/String;

    .line 29
    const-string v3, "server.host"

    const-string v4, "http://auto.smartisan.com"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SERVER:Ljava/lang/String;

    .line 112
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_PATH:Ljava/lang/String;

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/smartisan/feedback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_STORAGE_PATH:Ljava/lang/String;

    .line 118
    const-string v3, "SECONDARY_STORAGE"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "envSecondaryStorage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 122
    const-string v3, "[:]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "paths":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_EXT_PATH:Ljava/lang/String;

    .line 130
    .end local v1    # "paths":[Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_EXT_PATH:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_EXT_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/smartisan/feedback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_EXT_STORAGE_PATH:Ljava/lang/String;

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SERVER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cloud-api/login/clientLogon?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_URL_LOGON:Ljava/lang/String;

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SERVER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cloud-api/login/clientLogout?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_URL_LOGOFF:Ljava/lang/String;

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SERVER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cloud-api/files/list?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_URL_FILELIST:Ljava/lang/String;

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SERVER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cloud-api/files/uploadSal?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_URL_FILEUPLOAD:Ljava/lang/String;

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SERVER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cloud-api/folder/create?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_URL_FOLDERCREATE:Ljava/lang/String;

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SERVER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cloud-api/files/getuploadid?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_URL_GETUPLOADID:Ljava/lang/String;

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SERVER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cloud-api/files/upload?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_URL_UPLOAD:Ljava/lang/String;

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SERVER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cloud-api/files/resume?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_URL_RESUME:Ljava/lang/String;

    .line 215
    new-instance v3, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v3}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->cookieStore:Lorg/apache/http/client/CookieStore;

    return-void

    .line 128
    :cond_0
    const-string v3, "EXTERNAL_ALT_STORAGE"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_EXT_PATH:Ljava/lang/String;

    goto/16 :goto_0

    .line 130
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 236
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getCookieStore()Lorg/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/Constants;->cookieStore:Lorg/apache/http/client/CookieStore;

    return-object v0
.end method

.method public static isUserBuild()Z
    .locals 2

    .prologue
    .line 226
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 227
    .local v0, "buildVariant":Ljava/lang/String;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x1

    .line 230
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 0
    .param p0, "cookieStore"    # Lorg/apache/http/client/CookieStore;

    .prologue
    .line 222
    sput-object p0, Lcom/smartisan/feedbackhelper/utils/Constants;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 223
    return-void
.end method
