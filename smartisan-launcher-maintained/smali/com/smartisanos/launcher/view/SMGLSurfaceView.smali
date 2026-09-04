.class public Lcom/smartisanos/launcher/view/SMGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SMGLSurfaceView.java"


.field private static final TAG:Ljava/lang/String; = "SMGLSurfaceView"


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 23
    .local v1, "ret":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 30
    .local v0, "action":I
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 59
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 48
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 54
    return-void
.end method
