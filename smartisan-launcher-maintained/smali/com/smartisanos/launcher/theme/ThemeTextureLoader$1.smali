.class Lcom/smartisanos/launcher/theme/ThemeTextureLoader$1;
.super Ljava/lang/Thread;
.source "ThemeTextureLoader.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->loadThemeShadowTexture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeTextureLoader;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeTextureLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader$1;->this$0:Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 67
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "loadThemeShadowTexture start"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader$1;->this$0:Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->access$100(Lcom/smartisanos/launcher/theme/ThemeTextureLoader;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadThemeShadowTexture(Z)V

    .line 72
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader$1;->this$0:Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->access$300(Lcom/smartisanos/launcher/theme/ThemeTextureLoader;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader$1;->this$0:Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->access$200(Lcom/smartisanos/launcher/theme/ThemeTextureLoader;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 77
    :goto_0
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "loadThemeShadowTexture complete"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 80
    :cond_1
    return-void

    .line 75
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->setNeedLoadShadowInMainGL()V

    goto :goto_0
.end method
