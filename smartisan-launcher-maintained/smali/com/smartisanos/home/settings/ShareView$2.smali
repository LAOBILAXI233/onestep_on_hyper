.class Lcom/smartisanos/home/settings/ShareView$2;
.super Ljava/lang/Object;
.source "ShareView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/ShareView;->checkActiveComponent()V
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
    .line 127
    iput-object p1, p0, Lcom/smartisanos/home/settings/ShareView$2;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/smartisanos/home/settings/ShareView$2;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-static {v0}, Lcom/smartisanos/home/settings/ShareView;->access$000(Lcom/smartisanos/home/settings/ShareView;)V

    .line 131
    return-void
.end method
