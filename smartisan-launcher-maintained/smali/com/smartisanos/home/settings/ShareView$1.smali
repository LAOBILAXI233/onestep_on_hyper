.class Lcom/smartisanos/home/settings/ShareView$1;
.super Ljava/lang/Object;
.source "ShareView.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/ShareView;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/ShareView;


.method constructor <init>(Lcom/smartisanos/home/settings/ShareView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/ShareView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/smartisanos/home/settings/ShareView$1;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/smartisanos/home/settings/ShareView$1;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/ShareView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/smartisanos/home/settings/ShareView$1;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/ShareView;->dismiss()V

    .line 101
    :cond_0
    return-void
.end method
