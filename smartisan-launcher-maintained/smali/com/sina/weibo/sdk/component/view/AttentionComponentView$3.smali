.class Lcom/sina/weibo/sdk/component/view/AttentionComponentView$3;
.super Ljava/lang/Object;
.source "AttentionComponentView.java"

.implements Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->execAttented()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;


.method constructor <init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$3;->this$0:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onWebViewResult(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 205
    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/Utility;->parseUri(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 206
    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 210
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 211
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$3;->this$0:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->access$3(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$3;->this$0:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->access$3(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method
