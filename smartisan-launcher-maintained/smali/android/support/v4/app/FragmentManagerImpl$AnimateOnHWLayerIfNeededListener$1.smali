.class Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;


.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    .prologue
    .line 476
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;->this$0:Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;->this$0:Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 480
    return-void
.end method
