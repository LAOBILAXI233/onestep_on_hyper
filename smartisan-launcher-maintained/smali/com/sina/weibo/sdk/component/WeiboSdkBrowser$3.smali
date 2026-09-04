.class Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$3;
.super Ljava/lang/Object;
.source "WeiboSdkBrowser.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->setContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;


.method constructor <init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$3;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$3;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$3;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$3(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$8(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$3;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$10(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V

    .line 346
    return-void
.end method
