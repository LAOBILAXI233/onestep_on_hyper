.class public Lcom/smartisanos/launcher/actions/HandlePushedMsg;
.super Ljava/lang/Object;
.source "HandlePushedMsg.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    }
.end annotation


.field private static final DATE_UTC:Ljava/lang/String; = "ro.build.date.utc"

.field private static final PRODUCT_MODEL:Ljava/lang/String; = "ro.product.model"

.field private static final PRODUCT_NAME:Ljava/lang/String; = "ro.product.name"

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field public static needShowDialog:Z

.field public static updateInfo:Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/smartisanos/launcher/actions/HandlePushedMsg;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->log:Lcom/smartisanos/launcher/LOG;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->updateInfo:Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->needShowDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method public static handleMsg(Landroid/content/Intent;)V
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    sget-object v1, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "handleMsg begin"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x0

    sput-object v1, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->updateInfo:Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;

    .line 28
    const/4 v1, 0x0

    sput-boolean v1, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->needShowDialog:Z

    .line 29
    if-nez p0, :cond_0

    .line 30
    sget-object v1, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "handleMsg return by intent is null"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v1, "data"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 35
    :cond_1
    sget-object v1, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "handleMsg return by empty body"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_2
    invoke-static {v0}, Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;->toInfo(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;

    move-result-object v1

    sput-object v1, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->updateInfo:Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;

    .line 38
    sget-object v1, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->updateInfo:Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;

    if-nez v1, :cond_3

    .line 39
    sget-object v1, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "handleMsg return by parse body error"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->needUpdate()Z

    move-result v1

    sput-boolean v1, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->needShowDialog:Z

    goto :goto_0
.end method

.method private static needUpdate()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 122
    .local v0, "need":Z
    return v0
.end method

.method public static showDialog()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;

    invoke-direct {v1}, Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method
