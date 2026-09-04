.class public Lcom/smartisan/feedbackhelper/utils/ReportGenerate;
.super Landroid/app/IntentService;
.source "ReportGenerate.java"


.field public static final REPORT_ATTACH_FILES:Ljava/lang/String; = "attach_files"

.field public static final REPORT_ATTACH_PICS:Ljava/lang/String; = "snapshots"

.field public static final REPORT_CREATE_TIME:Ljava/lang/String; = "createtime"

.field public static final REPORT_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final REPORT_EMAIL_INFO:Ljava/lang/String; = "email_add"

.field public static final REPORT_FROM:Ljava/lang/String; = "from"

.field public static final REPORT_MAPPVERSION:Ljava/lang/String; = "app_version"

.field public static final REPORT_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final REPORT_PROCESS:Ljava/lang/String; = "process"

.field public static final REPORT_SUMMARY:Ljava/lang/String; = "summary"

.field public static final REPORT_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "BugReportGenerate"


.field private mTimestampFormat:Ljava/text/SimpleDateFormat;


.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "BugReportGenerate"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH-mm-ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ReportGenerate;->mTimestampFormat:Ljava/text/SimpleDateFormat;

    .line 52
    return-void
.end method

.method private copyFiles([Ljava/lang/String;Ljava/io/File;)Z
    .locals 12
    .param p1, "paths"    # [Ljava/lang/String;
    .param p2, "targetFolder"    # Ljava/io/File;

    .prologue
    .line 226
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "folderPath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 228
    .local v8, "result":Z
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 229
    const/4 v10, 0x0

    .line 258
    :goto_0
    return v10

    .line 231
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v10, p1

    if-ge v6, v10, :cond_6

    .line 232
    new-instance v10, Ljava/io/File;

    aget-object v11, p1, v6

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 231
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 235
    :cond_2
    new-instance v10, Ljava/io/File;

    aget-object v11, p1, v6

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 236
    new-instance v9, Ljava/io/File;

    aget-object v10, p1, v6

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v9, "srcFolder":Ljava/io/File;
    aget-object v4, p1, v6

    .line 238
    .local v4, "filePath":Ljava/lang/String;
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 239
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "children":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-eqz v2, :cond_1

    array-length v10, v2

    if-ge v7, v10, :cond_1

    .line 243
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v2, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "_srcFile":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 246
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v2, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "_dstFile":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/smartisan/feedbackhelper/utils/Util;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 242
    .end local v0    # "_dstFile":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 252
    .end local v1    # "_srcFile":Ljava/lang/String;
    .end local v2    # "children":[Ljava/lang/String;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v7    # "j":I
    .end local v9    # "srcFolder":Ljava/io/File;
    :cond_5
    new-instance v10, Ljava/io/File;

    aget-object v11, p1, v6

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "fileName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .restart local v0    # "_dstFile":Ljava/lang/String;
    aget-object v10, p1, v6

    invoke-static {v10, v0}, Lcom/smartisan/feedbackhelper/utils/Util;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_2

    .end local v0    # "_dstFile":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_6
    move v10, v8

    .line 258
    goto/16 :goto_0
.end method

.method private makeLogDir()Ljava/io/File;
    .locals 8

    .prologue
    .line 214
    invoke-static {}, Lcom/smartisan/feedbackhelper/utils/Util;->getLogPath()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "logHome":Ljava/lang/String;
    iget-object v4, p0, Lcom/smartisan/feedbackhelper/utils/ReportGenerate;->mTimestampFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 215
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "timestamp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "others"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "logPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v2, "logPathFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 220
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 222
    :cond_0
    return-object v2
.end method


.method public onCreate()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 57
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "paramIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 64
    const-string v7, "BugReportGenerate"

    const-string v8, "Invalid action!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v7, "smartisan.intent.action.REPORT.DATA"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 69
    const-string v7, "BugReportGenerate"

    const-string v8, "Report Data intent received!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v6, Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-direct {v6}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;-><init>()V

    .line 73
    .local v6, "report":Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    new-instance v7, Ljava/util/Date;

    const-string v8, "createtime"

    const-wide/16 v10, 0x0

    invoke-virtual {p1, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setCreateTime(Ljava/util/Date;)V

    .line 77
    sget-object v7, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->WAIT_USER_INPUT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setState(Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)V

    .line 80
    const-string v7, "summary"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 83
    const-string v7, "summary"

    .line 84
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setSummary(Ljava/lang/String;)V

    .line 88
    const-string v7, "tag"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 91
    const-string v7, "tag"

    .line 92
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setTag(Ljava/lang/String;)V

    .line 96
    const-string v7, "from"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/smartisan/feedbackhelper/R$string;->user_feedback:I

    .line 97
    invoke-virtual {p0, v8}, Lcom/smartisan/feedbackhelper/utils/ReportGenerate;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 96
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "from"

    .line 98
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "sdk"

    .line 99
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 100
    :cond_2
    sget-object v7, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->USER:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setType(Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;)V

    .line 106
    :goto_1
    const-string v7, "description"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 108
    const-string v7, "description"

    .line 109
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 108
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setFreeText(Ljava/lang/String;)V

    .line 118
    :goto_2
    const-string v7, "attach_files"

    .line 119
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 118
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 120
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/utils/ReportGenerate;->makeLogDir()Ljava/io/File;

    move-result-object v4

    .line 121
    .local v4, "logpath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setLogPath(Ljava/lang/String;)V

    .line 138
    .end local v4    # "logpath":Ljava/io/File;
    :goto_3
    const-string v7, "from"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 141
    const-string v7, "from"

    .line 142
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setFrom(Ljava/lang/String;)V

    .line 145
    const-string v7, "snapshots"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    const-string v7, "snapshots"

    .line 146
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 147
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 148
    const-string v7, "snapshots"

    .line 149
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setAttachment(Ljava/lang/String;)V

    .line 155
    :goto_4
    const-string v7, "process"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    .line 156
    const-string v7, "unknown"

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setProcess(Ljava/lang/String;)V

    .line 163
    :goto_5
    const-string v7, "packageName"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    .line 164
    const-string v7, "unknown"

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setPackageName(Ljava/lang/String;)V

    .line 171
    :goto_6
    const-string v7, "ro.modversion"

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/smartisan/feedbackhelper/utils/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "apVersion":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 174
    const-string v7, "ro.build.description"

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/smartisan/feedbackhelper/utils/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setApVersion(Ljava/lang/String;)V

    .line 180
    :goto_7
    const-string v7, "gsm.version.baseband"

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/smartisan/feedbackhelper/utils/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setBpVersion(Ljava/lang/String;)V

    .line 182
    invoke-static {p0}, Lcom/smartisan/feedbackhelper/utils/Util;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setApkVersion(Ljava/lang/String;)V

    .line 194
    const-string v7, "email_add"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v7, "email_add"

    .line 196
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 198
    :cond_3
    const-string v7, "unknown"

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setEmail(Ljava/lang/String;)V

    .line 203
    :goto_8
    const-string v7, "BugReportGenerate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uploadReport "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/smartisan/feedbackhelper/upload/ReliableUploader;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "COMPLAINT_REPORT"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v3}, Lcom/smartisan/feedbackhelper/utils/ReportGenerate;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 102
    .end local v1    # "apVersion":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    sget-object v7, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->AUTO:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setType(Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;)V

    goto/16 :goto_1

    .line 112
    :cond_5
    const-string v7, "description"

    .line 113
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setFreeText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 123
    :cond_6
    const-string v7, "attach_files"

    .line 124
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "filepaths":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "logpaths":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    new-instance v7, Ljava/io/File;

    aget-object v8, v5, v12

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 127
    aget-object v7, v5, v12

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setLogPath(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 129
    :cond_7
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/utils/ReportGenerate;->makeLogDir()Ljava/io/File;

    move-result-object v4

    .line 130
    .restart local v4    # "logpath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 131
    invoke-direct {p0, v5, v4}, Lcom/smartisan/feedbackhelper/utils/ReportGenerate;->copyFiles([Ljava/lang/String;Ljava/io/File;)Z

    .line 132
    invoke-static {v5}, Lcom/smartisan/feedbackhelper/utils/Util;->removeFiles([Ljava/lang/String;)V

    .line 134
    :cond_8
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setLogPath(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 151
    .end local v2    # "filepaths":Ljava/lang/String;
    .end local v4    # "logpath":Ljava/io/File;
    .end local v5    # "logpaths":[Ljava/lang/String;
    :cond_9
    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setAttachment(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 158
    :cond_a
    const-string v7, "process"

    .line 159
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 158
    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setProcess(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 166
    :cond_b
    const-string v7, "packageName"

    .line 167
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setPackageName(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 177
    .restart local v1    # "apVersion":Ljava/lang/String;
    :cond_c
    invoke-virtual {v6, v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setApVersion(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 200
    :cond_d
    const-string v7, "email_add"

    .line 201
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 200
    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setEmail(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 209
    .end local v1    # "apVersion":Ljava/lang/String;
    .end local v6    # "report":Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    :cond_e
    const-string v7, "BugReportGenerate"

    const-string v8, ">>>>>Please change the intent to specific intent!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
