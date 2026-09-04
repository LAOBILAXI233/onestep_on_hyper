.class public Lcom/smartisanos/launcher/theme/ThemeTextureLoader;
.super Ljava/lang/Object;
.source "ThemeTextureLoader.java"


.field private static final EGLCONTEXT_CONFIG:[I

.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final PBUFFER_CONFIG:[I

.field private static final SURFACE_CONFIG:[I

.field private static final TAG:Ljava/lang/String; = "ThemeTextureLoader"

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLPBSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mELGContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mHasEGLContext:Z

.field private mTextureContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mThread:Ljava/lang/Thread;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->log:Lcom/smartisanos/launcher/LOG;

    .line 19
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->SURFACE_CONFIG:[I

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->PBUFFER_CONFIG:[I

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->EGLCONTEXT_CONFIG:[I

    return-void

    .line 19
    :array_0
    .array-data 4
        0x3033
        0x1
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data

    .line 28
    :array_1
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data

    .line 34
    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mTextureContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 40
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 41
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mELGContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 42
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 43
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEGLPBSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/theme/ThemeTextureLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->eglMakeCurrent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/theme/ThemeTextureLoader;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/theme/ThemeTextureLoader;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method private createEGLContext()V
    .locals 12

    .prologue
    const/16 v11, 0x3008

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 97
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 98
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 100
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 101
    .local v8, "version":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 102
    .local v3, "eglConfigs":[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v4, [I

    .line 103
    .local v5, "numConfig":[I
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 105
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->SURFACE_CONFIG:[I

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 106
    aget-object v7, v3, v10

    .line 107
    .local v7, "eglConfig":Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mTextureContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v9, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->EGLCONTEXT_CONFIG:[I

    invoke-interface {v0, v1, v7, v2, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mELGContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 110
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mELGContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    .line 111
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->log:Lcom/smartisanos/launcher/LOG;

    const-string v0, "ThemeTextureLoader"

    const-string v1, "no CONTEXT"

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-boolean v10, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mHasEGLContext:Z

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->PBUFFER_CONFIG:[I

    invoke-interface {v0, v1, v7, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEGLPBSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 118
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEGLPBSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_8

    .line 119
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v6

    .line 120
    .local v6, "ec":I
    if-ne v6, v11, :cond_1

    .line 121
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->log:Lcom/smartisanos/launcher/LOG;

    const-string v0, "ThemeTextureLoader"

    const-string v1, "EGL_BAD_DISPLAY"

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    if-ne v6, v11, :cond_2

    .line 124
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->log:Lcom/smartisanos/launcher/LOG;

    const-string v0, "ThemeTextureLoader"

    const-string v1, "EGL_BAD_DISPLAY"

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_2
    const/16 v0, 0x3001

    if-ne v6, v0, :cond_3

    .line 127
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->log:Lcom/smartisanos/launcher/LOG;

    const-string v0, "ThemeTextureLoader"

    const-string v1, "EGL_NOT_INITIALIZED"

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_3
    const/16 v0, 0x3005

    if-ne v6, v0, :cond_4

    .line 130
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->log:Lcom/smartisanos/launcher/LOG;

    const-string v0, "ThemeTextureLoader"

    const-string v1, "EGL_BAD_CONFIG"

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_4
    const/16 v0, 0x3004

    if-ne v6, v0, :cond_5

    .line 133
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->log:Lcom/smartisanos/launcher/LOG;

    const-string v0, "ThemeTextureLoader"

    const-string v1, "EGL_BAD_ATTRIBUTE"

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_5
    const/16 v0, 0x3003

    if-ne v6, v0, :cond_6

    .line 136
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->log:Lcom/smartisanos/launcher/LOG;

    const-string v0, "ThemeTextureLoader"

    const-string v1, "EGL_BAD_ALLOC"

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_6
    const/16 v0, 0x3009

    if-ne v6, v0, :cond_7

    .line 139
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->log:Lcom/smartisanos/launcher/LOG;

    const-string v0, "ThemeTextureLoader"

    const-string v1, "EGL_BAD_MATCH"

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_7
    iput-boolean v10, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mHasEGLContext:Z

    .line 143
    .end local v6    # "ec":I
    :cond_8
    iput-boolean v4, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mHasEGLContext:Z

    .line 144
    return-void
.end method

.method private eglMakeCurrent()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 48
    iget-boolean v1, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mHasEGLContext:Z

    if-nez v1, :cond_0

    .line 56
    :goto_0
    return v0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEGLPBSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEGLPBSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mELGContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    sget-object v1, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "ThemeTextureLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind failed ECODE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


.method public clear()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mThread:Ljava/lang/Thread;

    .line 93
    :cond_0
    return-void
.end method

.method public hasEGLContext()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mHasEGLContext:Z

    return v0
.end method

.method public loadThemeShadowTexture()V
    .locals 2

    .prologue
    .line 60
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "loadThemeShadowTexture"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->clear()V

    .line 64
    new-instance v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/ThemeTextureLoader$1;-><init>(Lcom/smartisanos/launcher/theme/ThemeTextureLoader;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mThread:Ljava/lang/Thread;

    .line 82
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mThread:Ljava/lang/Thread;

    const-string v1, "loadThemeShadowTexture"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-void
.end method

.method public setTextureContext(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .param p1, "textureContext"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->mTextureContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 148
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->createEGLContext()V

    .line 149
    return-void
.end method
