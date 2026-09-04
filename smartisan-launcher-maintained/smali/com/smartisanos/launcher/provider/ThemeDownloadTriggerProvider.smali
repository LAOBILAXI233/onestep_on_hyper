.class public Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;
.super Landroid/content/ContentProvider;
.source "ThemeDownloadTriggerProvider.java"


.field private static final ALL_ROWS:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.smartisanos.theme.download"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final METHOD_DOWNLOAD_FAILED:Ljava/lang/String; = "downloadFailed"

.field public static final METHOD_DOWNLOAD_SUCCESS:Ljava/lang/String; = "downloadSuccess"

.field public static final METHOD_INSTALL_FAILED:Ljava/lang/String; = "installFailed"

.field public static final METHOD_INSTALL_SUCCESS:Ljava/lang/String; = "installdSuccess"

.field public static final METHOD_SET_DOWNLOAD_ID:Ljava/lang/String; = "setDownloadId"

.field public static final METHOD_SET_PROGRESS:Ljava/lang/String; = "setProgress"

.field private static final SINGLE_ROW:I = 0x2

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static final matcher:Landroid/content/UriMatcher;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    const-class v0, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->log:Lcom/smartisanos/launcher/LOG;

    .line 26
    const-string v0, "content://com.smartisanos.theme.download"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 29
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->matcher:Landroid/content/UriMatcher;

    .line 30
    sget-object v0, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->matcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.theme.download"

    const-string v2, "theme"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    sget-object v0, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->matcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.theme.download"

    const-string v2, "theme/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static updateDownloadProgress(Landroid/content/Context;Ljava/lang/String;D)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "progress"    # D

    .prologue
    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "pkg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v1, "progress"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "setProgress"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 225
    return-void
.end method


.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 83
    sget-object v6, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ThemeDownloadTriggerProvider call method ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string v6, "setDownloadId"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    :try_start_0
    const-string v6, "pkg"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "pkg":Ljava/lang/String;
    const-string v6, "downloadId"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 89
    .local v0, "downloadId":J
    invoke-virtual {p0, v4, v0, v1}, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->setDownloadId(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "downloadId":J
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    return-object v6

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v6, "setProgress"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    :try_start_1
    const-string v6, "pkg"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .restart local v4    # "pkg":Ljava/lang/String;
    const-string v6, "progress"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v5, v6

    .line 97
    .local v5, "progress":I
    sget-object v6, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "METHOD_SET_PROGRESS pkg ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], progress ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v4, v5}, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->setProgress(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 99
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "progress":I
    :catch_1
    move-exception v2

    .line 100
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v6, "downloadSuccess"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 104
    :try_start_2
    const-string v6, "pkg"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .restart local v4    # "pkg":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->downloadSuccess(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 106
    .end local v4    # "pkg":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 107
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v6, "downloadFailed"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 111
    :try_start_3
    const-string v6, "pkg"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .restart local v4    # "pkg":Ljava/lang/String;
    const-string v6, "errorCode"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 113
    .local v3, "errorCode":I
    invoke-virtual {p0, v4, v3}, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->downloadFailed(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 114
    .end local v3    # "errorCode":I
    .end local v4    # "pkg":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 115
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 117
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v6, "installdSuccess"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 119
    :try_start_4
    const-string v6, "pkg"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .restart local v4    # "pkg":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->installedSuccess(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 121
    .end local v4    # "pkg":Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 122
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 124
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v6, "installFailed"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    :try_start_5
    const-string v6, "pkg"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .restart local v4    # "pkg":Ljava/lang/String;
    const-string v6, "errorCode"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 128
    .restart local v3    # "errorCode":I
    invoke-virtual {p0, v4, v3}, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->installFailed(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 129
    .end local v3    # "errorCode":I
    .end local v4    # "pkg":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 130
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "strings"    # [Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public downloadFailed(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 183
    sget-object v1, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadFailed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-nez p1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 188
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v0, :cond_1

    .line 189
    sget-object v1, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadFailed return by find theme return null ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    const/16 v2, 0x65

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public downloadSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 175
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v0, :cond_1

    .line 176
    sget-object v1, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadSuccess return by find theme return null ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    const/16 v2, 0x69

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 46
    sget-object v1, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 47
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.theme.download"

    .line 52
    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.theme.download"

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public installFailed(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 208
    sget-object v1, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installFailed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    if-nez p1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 213
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v0, :cond_1

    .line 214
    sget-object v1, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installFailed return by find theme return null ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    const/16 v2, 0x65

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public installedSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 200
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v0, :cond_1

    .line 201
    sget-object v1, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installdSuccess return by find theme return null ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    const/16 v2, 0x66

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings1"    # [Ljava/lang/String;
    .param p5, "s1"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDownloadId(Ljava/lang/String;J)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "downloadId"    # J

    .prologue
    .line 138
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_0

    .line 139
    sget-object v3, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDownloadId failed by illegal download id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 142
    :cond_0
    sget-object v3, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDownloadId ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    .line 144
    .local v1, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v1, :cond_1

    .line 145
    sget-object v3, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDownloadId failed by find theme return null ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v2, v1, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    .line 149
    .local v2, "themeId":Ljava/lang/String;
    new-instance v0, Lcom/smartisanos/launcher/data/handler/DLRecord;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/handler/DLRecord;-><init>()V

    .line 150
    .local v0, "dlRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    iput-wide p2, v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .line 151
    iput-object v2, v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    .line 152
    invoke-static {v0}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->addRecord(Lcom/smartisanos/launcher/data/handler/DLRecord;)J

    .line 153
    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public setProgress(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    const/16 v2, 0x67

    .line 157
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 158
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v0, :cond_0

    .line 159
    sget-object v1, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProgress failed by find theme return null ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_0
    iget v1, v0, Lcom/smartisanos/launcher/theme/Theme;->status:I

    if-ne v1, v2, :cond_1

    .line 163
    iput p2, v0, Lcom/smartisanos/launcher/theme/Theme;->progress:I

    .line 164
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    goto :goto_0

    .line 166
    :cond_1
    sget-object v1, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProgress return by status ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/smartisanos/launcher/theme/Theme;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not DOWNLOADING"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method
