.class Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/ForwardingListener;


.method constructor <init>(Landroid/support/v7/widget/ForwardingListener;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;->this$0:Landroid/support/v7/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 298
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;->this$0:Landroid/support/v7/widget/ForwardingListener;

    iget-object v1, v1, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 299
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 300
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 302
    :cond_0
    return-void
.end method
