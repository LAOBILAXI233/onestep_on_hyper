.class Lcom/smartisanos/launcher/widget/StatusIconView$1;
.super Ljava/lang/Object;
.source "StatusIconView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/widget/StatusIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/widget/StatusIconView;


.method constructor <init>(Lcom/smartisanos/launcher/widget/StatusIconView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/widget/StatusIconView;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/smartisanos/launcher/widget/StatusIconView$1;->this$0:Lcom/smartisanos/launcher/widget/StatusIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView$1;->this$0:Lcom/smartisanos/launcher/widget/StatusIconView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/widget/StatusIconView;->invalidate()V

    .line 91
    return-void
.end method
