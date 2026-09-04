.class public Lcom/smartisan/moreapps/download/DownloaderPref;
.super Ljava/lang/Object;
.source "DownloaderPref.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/moreapps/download/DownloaderPref$OnUpdateChangeListener;
    }
.end annotation


.field public static final PREF_NAME:Ljava/lang/String; = "apk_download"

.field private static instance:Lcom/smartisan/moreapps/download/DownloaderPref;


.field private mSharedPreferences:Landroid/content/SharedPreferences;


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/smartisan/moreapps/download/DownloaderPref;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v0, Lcom/smartisan/moreapps/download/DownloaderPref;->instance:Lcom/smartisan/moreapps/download/DownloaderPref;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/smartisan/moreapps/download/DownloaderPref;

    invoke-direct {v0}, Lcom/smartisan/moreapps/download/DownloaderPref;-><init>()V

    sput-object v0, Lcom/smartisan/moreapps/download/DownloaderPref;->instance:Lcom/smartisan/moreapps/download/DownloaderPref;

    .line 26
    sget-object v0, Lcom/smartisan/moreapps/download/DownloaderPref;->instance:Lcom/smartisan/moreapps/download/DownloaderPref;

    invoke-direct {v0, p0}, Lcom/smartisan/moreapps/download/DownloaderPref;->initSharedPreferences(Landroid/content/Context;)V

    .line 28
    :cond_0
    sget-object v0, Lcom/smartisan/moreapps/download/DownloaderPref;->instance:Lcom/smartisan/moreapps/download/DownloaderPref;

    return-object v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smartisan/moreapps/download/DownloaderPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private initSharedPreferences(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v0, "apk_download"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/moreapps/download/DownloaderPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 37
    return-void
.end method


.method public getDownloadId(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/smartisan/moreapps/download/DownloaderPref;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setDownloadId(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/smartisan/moreapps/download/DownloaderPref;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    return-void
.end method
