.class Lsmartisanos/widget/ShareView$1;
.super Ljava/lang/Object;
.source "ShareView.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/ShareView;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/ShareView;


.method constructor <init>(Lsmartisanos/widget/ShareView;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lsmartisanos/widget/ShareView$1;->this$0:Lsmartisanos/widget/ShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lsmartisanos/widget/ShareView$1;->this$0:Lsmartisanos/widget/ShareView;

    invoke-virtual {v0}, Lsmartisanos/widget/ShareView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lsmartisanos/widget/ShareView$1;->this$0:Lsmartisanos/widget/ShareView;

    invoke-virtual {v0}, Lsmartisanos/widget/ShareView;->dismiss()V

    .line 97
    :cond_0
    return-void
.end method
