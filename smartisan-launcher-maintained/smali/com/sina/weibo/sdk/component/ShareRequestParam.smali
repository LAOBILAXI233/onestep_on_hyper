.class public Lcom/sina/weibo/sdk/component/ShareRequestParam;
.super Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
.source "ShareRequestParam.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/component/ShareRequestParam$UploadPicResult;
    }
.end annotation


.field public static final REQ_PARAM_AID:Ljava/lang/String; = "aid"

.field public static final REQ_PARAM_KEY_HASH:Ljava/lang/String; = "key_hash"

.field public static final REQ_PARAM_PACKAGENAME:Ljava/lang/String; = "packagename"

.field public static final REQ_PARAM_PICINFO:Ljava/lang/String; = "picinfo"

.field public static final REQ_PARAM_SOURCE:Ljava/lang/String; = "source"

.field public static final REQ_PARAM_TITLE:Ljava/lang/String; = "title"

.field public static final REQ_PARAM_TOKEN:Ljava/lang/String; = "access_token"

.field public static final REQ_PARAM_VERSION:Ljava/lang/String; = "version"

.field public static final REQ_UPLOAD_PIC_PARAM_IMG:Ljava/lang/String; = "img"

.field public static final RESP_UPLOAD_PIC_PARAM_CODE:Ljava/lang/String; = "code"

.field public static final RESP_UPLOAD_PIC_PARAM_DATA:Ljava/lang/String; = "data"

.field public static final RESP_UPLOAD_PIC_SUCC_CODE:I = 0x1

.field private static final SHARE_URL:Ljava/lang/String; = "http://service.weibo.com/share/mobilesdk.php"

.field public static final UPLOAD_PIC_URL:Ljava/lang/String; = "http://service.weibo.com/share/mobilesdk_uppic.php"


.field private mAppKey:Ljava/lang/String;

.field private mAppPackage:Ljava/lang/String;

.field private mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

.field private mAuthListenerKey:Ljava/lang/String;

.field private mBase64ImgData:[B

.field private mBaseRequest:Lcom/sina/weibo/sdk/api/share/BaseRequest;

.field private mHashKey:Ljava/lang/String;

.field private mShareContent:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;-><init>(Landroid/content/Context;)V

    .line 68
    sget-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->SHARE:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mLaucher:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    .line 69
    return-void
.end method

.method private handleMblogPic(Ljava/lang/String;[B)V
    .locals 7

    .prologue
    .line 134
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 137
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v3, v0, [B
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    const/4 v1, 0x0

    .line 140
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 142
    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/Base64;->encodebyte([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mBase64ImgData:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    if-eqz v0, :cond_0

    .line 149
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 148
    :goto_1
    if-eqz v0, :cond_1

    .line 149
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 158
    :cond_1
    :goto_2
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 159
    invoke-static {p2}, Lcom/sina/weibo/sdk/utils/Base64;->encodebyte([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mBase64ImgData:[B

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    .line 148
    :goto_3
    if-eqz v1, :cond_2

    .line 149
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    .line 152
    :cond_2
    :goto_4
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1

    .line 156
    :catch_1
    move-exception v0

    goto :goto_2

    .line 151
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_4

    .line 146
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 144
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private handleSharedMessage(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 92
    new-instance v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>()V

    .line 93
    invoke-virtual {v1, p1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->toObject(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    instance-of v0, v0, Lcom/sina/weibo/sdk/api/TextObject;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    .line 98
    iget-object v0, v0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    instance-of v0, v0, Lcom/sina/weibo/sdk/api/ImageObject;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 102
    iget-object v3, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    invoke-direct {p0, v3, v0}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->handleMblogPic(Ljava/lang/String;[B)V

    .line 104
    :cond_1
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v0, v0, Lcom/sina/weibo/sdk/api/TextObject;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    check-cast v0, Lcom/sina/weibo/sdk/api/TextObject;

    .line 106
    iget-object v0, v0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_2
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v0, v0, Lcom/sina/weibo/sdk/api/ImageObject;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    check-cast v0, Lcom/sina/weibo/sdk/api/ImageObject;

    .line 110
    iget-object v3, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    invoke-direct {p0, v3, v0}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->handleMblogPic(Ljava/lang/String;[B)V

    .line 112
    :cond_3
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v0, v0, Lcom/sina/weibo/sdk/api/WebpageObject;

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    check-cast v0, Lcom/sina/weibo/sdk/api/WebpageObject;

    .line 114
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_4
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v0, v0, Lcom/sina/weibo/sdk/api/MusicObject;

    if-eqz v0, :cond_5

    .line 117
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    check-cast v0, Lcom/sina/weibo/sdk/api/MusicObject;

    .line 118
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/MusicObject;->actionUrl:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_5
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v0, v0, Lcom/sina/weibo/sdk/api/VideoObject;

    if-eqz v0, :cond_6

    .line 121
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    check-cast v0, Lcom/sina/weibo/sdk/api/VideoObject;

    .line 122
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/VideoObject;->actionUrl:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_6
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v0, v0, Lcom/sina/weibo/sdk/api/VoiceObject;

    if-eqz v0, :cond_7

    .line 125
    iget-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    check-cast v0, Lcom/sina/weibo/sdk/api/VoiceObject;

    .line 126
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/VoiceObject;->actionUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mShareContent:Ljava/lang/String;

    .line 130
    return-void
.end method

.method private sendSdkResponse(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 245
    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 248
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sina.weibo.sdk.action.ACTION_SDK_REQ_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 250
    const-string v2, "_weibo_appPackage"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 253
    const-string v0, "_weibo_appPackage"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v0, "_weibo_resp_errcode"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const-string v0, "_weibo_resp_errstr"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const/16 v0, 0x2fd

    :try_start_0
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    goto :goto_0
.end method


.method public buildUploadPicParam(Lcom/sina/weibo/sdk/net/WeiboParameters;)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->hasImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-object p1

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mBase64ImgData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 210
    const-string v1, "img"

    invoke-virtual {p1, v1, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public buildUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    const-string v0, "http://service.weibo.com/share/mobilesdk.php"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 218
    const-string v1, "title"

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mShareContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 219
    const-string v1, "version"

    const-string v2, "0031405000"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 220
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    const-string v1, "source"

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/Utility;->getAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 229
    const-string v2, "aid"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 232
    const-string v1, "packagename"

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 234
    :cond_3
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mHashKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 235
    const-string v1, "key_hash"

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mHashKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 237
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 238
    const-string v1, "picinfo"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 240
    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execRequest(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 193
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->sendSdkCancleResponse(Landroid/app/Activity;)V

    .line 194
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAuthListenerKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->closeBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthListener()Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    return-object v0
.end method

.method public getAuthListenerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAuthListenerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBase64ImgData()[B
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mBase64ImgData:[B

    return-object v0
.end method

.method public getHashKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mHashKey:Ljava/lang/String;

    return-object v0
.end method

.method public getShareContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mShareContent:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mBase64ImgData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mBase64ImgData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateRequestParamBundle(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mBaseRequest:Lcom/sina/weibo/sdk/api/share/BaseRequest;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mBaseRequest:Lcom/sina/weibo/sdk/api/share/BaseRequest;

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/share/BaseRequest;->toBundle(Landroid/os/Bundle;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mHashKey:Ljava/lang/String;

    .line 171
    :cond_1
    const-string v0, "access_token"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "source"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "packagename"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "key_hash"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mHashKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "_weibo_appPackage"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "_weibo_appKey"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "_weibo_flag"

    const v1, 0x20130329

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v0, "_weibo_sign"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mHashKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/WeiboCallbackManager;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->genCallbackKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAuthListenerKey:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAuthListenerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->setWeiboAuthListener(Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 187
    const-string v0, "key_listener"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAuthListenerKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_2
    return-void
.end method

.method protected onSetupRequestParam(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppKey:Ljava/lang/String;

    .line 75
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppPackage:Ljava/lang/String;

    .line 76
    const-string v0, "key_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mHashKey:Ljava/lang/String;

    .line 77
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mToken:Ljava/lang/String;

    .line 79
    const-string v0, "key_listener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAuthListenerKey:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAuthListenerKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/WeiboCallbackManager;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAuthListenerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->getWeiboAuthListener(Ljava/lang/String;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->handleSharedMessage(Landroid/os/Bundle;)V

    .line 88
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mUrl:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public sendSdkCancleResponse(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x1

    const-string v1, "send cancel!!!"

    invoke-direct {p0, p1, v0, v1}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->sendSdkResponse(Landroid/app/Activity;ILjava/lang/String;)V

    .line 264
    return-void
.end method

.method public sendSdkErrorResponse(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->sendSdkResponse(Landroid/app/Activity;ILjava/lang/String;)V

    .line 272
    return-void
.end method

.method public sendSdkOkResponse(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 267
    const/4 v0, 0x0

    const-string v1, "send ok!!!"

    invoke-direct {p0, p1, v0, v1}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->sendSdkResponse(Landroid/app/Activity;ILjava/lang/String;)V

    .line 268
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppKey:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAppPackage:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setAuthListener(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 324
    return-void
.end method

.method public setBaseRequest(Lcom/sina/weibo/sdk/api/share/BaseRequest;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mBaseRequest:Lcom/sina/weibo/sdk/api/share/BaseRequest;

    .line 276
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/ShareRequestParam;->mToken:Ljava/lang/String;

    .line 292
    return-void
.end method
