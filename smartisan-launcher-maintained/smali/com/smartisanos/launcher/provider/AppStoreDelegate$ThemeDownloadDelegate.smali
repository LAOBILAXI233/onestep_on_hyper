.class Lcom/smartisanos/launcher/provider/AppStoreDelegate$ThemeDownloadDelegate;
.super Ljava/lang/Object;
.source "AppStoreDelegate.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/provider/AppStoreDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeDownloadDelegate"
.end annotation


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadFailed(Ljava/lang/String;I)V
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "errorCode"    # I

    .prologue
    .line 235
    invoke-static {}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadFailed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-nez p0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 240
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v0, :cond_1

    .line 241
    invoke-static {}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadFailed return by find theme return null ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    const/16 v2, 0x65

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static downloadSuccess(Ljava/lang/String;)V
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 223
    if-nez p0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 227
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v0, :cond_1

    .line 228
    invoke-static {}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadSuccess return by find theme return null ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    const/16 v2, 0x69

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static installFailed(Ljava/lang/String;I)V
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "errorCode"    # I

    .prologue
    .line 260
    invoke-static {}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installFailed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-nez p0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 265
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v0, :cond_1

    .line 266
    invoke-static {}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installFailed return by find theme return null ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    const/16 v2, 0x65

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static installedSuccess(Ljava/lang/String;)V
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 248
    if-nez p0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 252
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v0, :cond_1

    .line 253
    invoke-static {}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installdSuccess return by find theme return null ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    const/16 v2, 0x66

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static isThemePackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDownloadId(Ljava/lang/String;J)V
    .locals 7
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "downloadId"    # J

    .prologue
    .line 190
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_0

    .line 191
    invoke-static {}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v3

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDownloadId failed by illegal download id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v3

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDownloadId ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    .line 196
    .local v1, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v1, :cond_1

    .line 197
    invoke-static {}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v3

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDownloadId failed by find theme return null ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v2, v1, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    .line 201
    .local v2, "themeId":Ljava/lang/String;
    new-instance v0, Lcom/smartisanos/launcher/data/handler/DLRecord;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/handler/DLRecord;-><init>()V

    .line 202
    .local v0, "dlRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    iput-wide p1, v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .line 203
    iput-object v2, v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    .line 204
    invoke-static {v0}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->addRecord(Lcom/smartisanos/launcher/data/handler/DLRecord;)J

    .line 205
    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static setProgress(Ljava/lang/String;I)V
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "progress"    # I

    .prologue
    const/16 v2, 0x67

    .line 209
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 210
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v0, :cond_0

    .line 211
    invoke-static {}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProgress failed by find theme return null ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 214
    :cond_0
    iget v1, v0, Lcom/smartisanos/launcher/theme/Theme;->status:I

    if-ne v1, v2, :cond_1

    .line 215
    iput p1, v0, Lcom/smartisanos/launcher/theme/Theme;->progress:I

    .line 216
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

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
