.class Lcom/sina/weibo/sdk/component/view/TitleBar$1;
.super Ljava/lang/Object;
.source "TitleBar.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/component/view/TitleBar;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/component/view/TitleBar;


.method constructor <init>(Lcom/sina/weibo/sdk/component/view/TitleBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/TitleBar$1;->this$0:Lcom/sina/weibo/sdk/component/view/TitleBar;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar$1;->this$0:Lcom/sina/weibo/sdk/component/view/TitleBar;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->access$0(Lcom/sina/weibo/sdk/component/view/TitleBar;)Lcom/sina/weibo/sdk/component/view/TitleBar$ListenerOnTitleBtnClicked;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar$1;->this$0:Lcom/sina/weibo/sdk/component/view/TitleBar;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->access$0(Lcom/sina/weibo/sdk/component/view/TitleBar;)Lcom/sina/weibo/sdk/component/view/TitleBar$ListenerOnTitleBtnClicked;

    move-result-object v0

    invoke-interface {v0}, Lcom/sina/weibo/sdk/component/view/TitleBar$ListenerOnTitleBtnClicked;->onLeftBtnClicked()V

    .line 59
    :cond_0
    return-void
.end method
