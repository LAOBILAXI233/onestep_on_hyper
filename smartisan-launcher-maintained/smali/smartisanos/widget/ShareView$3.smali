.class Lsmartisanos/widget/ShareView$3;
.super Ljava/lang/Object;
.source "ShareView.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisanos/widget/ShareView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/ShareView;


.method constructor <init>(Lsmartisanos/widget/ShareView;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lsmartisanos/widget/ShareView$3;->this$0:Lsmartisanos/widget/ShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 187
    iget-object v4, p0, Lsmartisanos/widget/ShareView$3;->this$0:Lsmartisanos/widget/ShareView;

    invoke-virtual {v4}, Lsmartisanos/widget/ShareView;->checkShareImage()Landroid/net/Uri;

    move-result-object v2

    .line 188
    .local v2, "shareUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v4, "android.intent.extra.TEXT"

    iget-object v5, p0, Lsmartisanos/widget/ShareView$3;->this$0:Lsmartisanos/widget/ShareView;

    invoke-static {v5}, Lsmartisanos/widget/ShareView;->access$100(Lsmartisanos/widget/ShareView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v4, "android.intent.extra.TITLE"

    iget-object v5, p0, Lsmartisanos/widget/ShareView$3;->this$0:Lsmartisanos/widget/ShareView;

    invoke-static {v5}, Lsmartisanos/widget/ShareView;->access$100(Lsmartisanos/widget/ShareView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 194
    .local v3, "viewId":I
    sget v4, Lsmartisanos/widget/R$id;->share_weibo:I

    if-ne v3, v4, :cond_1

    .line 195
    iget-object v4, p0, Lsmartisanos/widget/ShareView$3;->this$0:Lsmartisanos/widget/ShareView;

    invoke-static {v4}, Lsmartisanos/widget/ShareView;->access$200(Lsmartisanos/widget/ShareView;)[Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 212
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lsmartisanos/widget/ShareView$3;->this$0:Lsmartisanos/widget/ShareView;

    invoke-virtual {v4}, Lsmartisanos/widget/ShareView;->dismiss()V

    .line 213
    iget-object v4, p0, Lsmartisanos/widget/ShareView$3;->this$0:Lsmartisanos/widget/ShareView;

    invoke-static {v4}, Lsmartisanos/widget/ShareView;->access$300(Lsmartisanos/widget/ShareView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_1
    return-void

    .line 196
    :cond_1
    sget v4, Lsmartisanos/widget/R$id;->share_weixin:I

    if-ne v3, v4, :cond_2

    .line 197
    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 199
    iget-object v4, p0, Lsmartisanos/widget/ShareView$3;->this$0:Lsmartisanos/widget/ShareView;

    invoke-static {v4}, Lsmartisanos/widget/ShareView;->access$200(Lsmartisanos/widget/ShareView;)[Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 200
    :cond_2
    sget v4, Lsmartisanos/widget/R$id;->share_twitter:I

    if-ne v3, v4, :cond_3

    .line 201
    iget-object v4, p0, Lsmartisanos/widget/ShareView$3;->this$0:Lsmartisanos/widget/ShareView;

    invoke-static {v4}, Lsmartisanos/widget/ShareView;->access$200(Lsmartisanos/widget/ShareView;)[Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 202
    :cond_3
    sget v4, Lsmartisanos/widget/R$id;->share_qzone:I

    if-ne v3, v4, :cond_4

    .line 203
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    iget-object v4, p0, Lsmartisanos/widget/ShareView$3;->this$0:Lsmartisanos/widget/ShareView;

    invoke-static {v4}, Lsmartisanos/widget/ShareView;->access$200(Lsmartisanos/widget/ShareView;)[Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 205
    :cond_4
    sget v4, Lsmartisanos/widget/R$id;->share_weixin_timeline:I

    if-ne v3, v4, :cond_5

    .line 206
    iget-object v4, p0, Lsmartisanos/widget/ShareView$3;->this$0:Lsmartisanos/widget/ShareView;

    invoke-static {v4}, Lsmartisanos/widget/ShareView;->access$200(Lsmartisanos/widget/ShareView;)[Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 207
    :cond_5
    sget v4, Lsmartisanos/widget/R$id;->share_facebook:I

    if-ne v3, v4, :cond_0

    .line 208
    iget-object v4, p0, Lsmartisanos/widget/ShareView$3;->this$0:Lsmartisanos/widget/ShareView;

    invoke-static {v4}, Lsmartisanos/widget/ShareView;->access$200(Lsmartisanos/widget/ShareView;)[Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
