.class Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;
.super Ljava/lang/Object;
.source "AttentionComponentView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;

.field private final synthetic val$target:Lorg/json/JSONObject;


.method constructor <init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;->this$1:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;

    iput-object p2, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;->val$target:Lorg/json/JSONObject;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;->val$target:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;->this$1:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;->access$0(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;)Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;->val$target:Lorg/json/JSONObject;

    const-string v2, "followed_by"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->access$3(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;->this$1:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;->access$0(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;)Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->access$2(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V

    .line 186
    return-void
.end method
