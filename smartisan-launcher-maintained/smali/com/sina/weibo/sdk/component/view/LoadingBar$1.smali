.class Lcom/sina/weibo/sdk/component/view/LoadingBar$1;
.super Ljava/lang/Object;
.source "LoadingBar.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/component/view/LoadingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/component/view/LoadingBar;


.method constructor <init>(Lcom/sina/weibo/sdk/component/view/LoadingBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar$1;->this$0:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar$1;->this$0:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->access$0(Lcom/sina/weibo/sdk/component/view/LoadingBar;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->access$1(Lcom/sina/weibo/sdk/component/view/LoadingBar;I)V

    .line 65
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar$1;->this$0:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/LoadingBar$1;->this$0:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->access$0(Lcom/sina/weibo/sdk/component/view/LoadingBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->drawProgress(I)V

    .line 66
    return-void
.end method
