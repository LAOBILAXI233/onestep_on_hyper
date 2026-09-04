.class public Lcom/smartisanos/launcher/view/SMRenderer;
.super Ljava/lang/Object;
.source "SMRenderer.java"

.implements Landroid/opengl/GLSurfaceView$Renderer;


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mContext:Landroid/app/Activity;

.field private mHeight:I

.field private mMainView:Lcom/smartisanos/launcher/view/MainView;

.field private mWidth:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/smartisanos/launcher/view/SMRenderer;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/SMRenderer;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mWidth:I

    .line 41
    iput v0, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mHeight:I

    .line 43
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mContext:Landroid/app/Activity;

    .line 44
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->setContext(Landroid/content/Context;)V

    .line 45
    return-void
.end method


.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v1, 0x0

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 51
    const/16 v0, 0x4500

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 52
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 53
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->update()V

    .line 54
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 57
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/SMRenderer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageInitFinishStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mWidth:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mHeight:I

    if-eq v0, p3, :cond_2

    .line 59
    :cond_1
    iput p2, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mWidth:I

    .line 60
    iput p3, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mHeight:I

    .line 61
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {v0, v1, p2, p3}, Lcom/smartisanos/launcher/view/MainView;->create(III)V

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageInitFinishStatus()Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->cleanDataStructureAboutHardwareResource()V

    .line 65
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->loadPage()V

    .line 67
    :cond_3
    if-le p2, p3, :cond_4

    .line 68
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/World;->setCanDraw(Z)V

    .line 72
    :goto_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 73
    return-void

    .line 70
    :cond_4
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/World;->setCanDraw(Z)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 10
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 86
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/smartisanos/launcher/view/SMRenderer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "onSurfaceCreated"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    const/16 v6, 0x1f00

    invoke-static {v6}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "vender":Ljava/lang/String;
    const/16 v6, 0x1f01

    invoke-static {v6}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "render":Ljava/lang/String;
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->updateGLConfig(Ljava/lang/String;)V

    .line 90
    const/16 v6, 0x1f02

    invoke-static {v6}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "version":Ljava/lang/String;
    const v6, 0x8b8c

    invoke-static {v6}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "shadingL":Ljava/lang/String;
    const/16 v6, 0x1f03

    invoke-static {v6}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "extent":Ljava/lang/String;
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/smartisanos/launcher/view/SMRenderer;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vender = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 94
    :cond_1
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/smartisanos/launcher/view/SMRenderer;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "render = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 95
    :cond_2
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/smartisanos/launcher/view/SMRenderer;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "version = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 96
    :cond_3
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/smartisanos/launcher/view/SMRenderer;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shadingL = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 97
    :cond_4
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/smartisanos/launcher/view/SMRenderer;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 98
    :cond_5
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->cleanDataStructureAboutHardwareResource()V

    .line 99
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/World;->setFrameListener(Lcom/smartisanos/smengine/World$FrameListener;)V

    .line 100
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getInputManager()Lcom/smartisanos/smengine/InputManager;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/InputManager;->setTouchListener(Lcom/smartisanos/smengine/InputManager$TouchListener;)V

    .line 101
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    .line 102
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 103
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/home/Launcher;->setGlThreadId(I)V

    .line 104
    sget-object v6, Lcom/smartisanos/launcher/view/SMRenderer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GL_THREAD_ID ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/home/Launcher;->getGlThreadId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v6

    check-cast v6, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 106
    .local v0, "context":Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->setTextureLoaderContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 107
    return-void
.end method

.method public setMainView(Lcom/smartisanos/launcher/view/MainView;)V
    .locals 0
    .param p1, "mainView"    # Lcom/smartisanos/launcher/view/MainView;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SMRenderer;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    .line 77
    return-void
.end method
