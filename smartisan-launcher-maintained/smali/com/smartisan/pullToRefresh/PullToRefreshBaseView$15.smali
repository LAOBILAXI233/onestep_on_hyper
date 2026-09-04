.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$15;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->disappearFooter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V
    .locals 0

    .prologue
    .line 1427
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$15;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$15;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$3100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    .line 1431
    return-void
.end method
