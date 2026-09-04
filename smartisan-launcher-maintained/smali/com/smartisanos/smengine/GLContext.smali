.class public Lcom/smartisanos/smengine/GLContext;
.super Ljava/lang/Object;
.source "GLContext.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static mContext:Landroid/content/Context;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/smartisanos/smengine/GLContext;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/GLContext;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 0
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 35
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/smartisanos/smengine/GLContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    sput-object p0, Lcom/smartisanos/smengine/GLContext;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method
