.class Lcom/smartisanos/home/settings/ShareView$3;
.super Ljava/lang/Object;
.source "ShareView.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/ShareView;
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
    .line 188
    iput-object p1, p0, Lcom/smartisanos/home/settings/ShareView$3;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v4, p0, Lcom/smartisanos/home/settings/ShareView$3;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-virtual {v4}, Lcom/smartisanos/home/settings/ShareView;->checkShareImage()Landroid/net/Uri;

    move-result-object v3

    .line 192
    .local v3, "shareUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/smartisanos/home/settings/ShareView$3;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-static {v4}, Lcom/smartisanos/home/settings/ShareView;->access$100(Lcom/smartisanos/home/settings/ShareView;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0800c8

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "linkInfo":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 246
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/smartisanos/home/settings/ShareView$3;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-virtual {v4}, Lcom/smartisanos/home/settings/ShareView;->dismiss()V

    .line 247
    iget-object v4, p0, Lcom/smartisanos/home/settings/ShareView$3;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-static {v4}, Lcom/smartisanos/home/settings/ShareView;->access$100(Lcom/smartisanos/home/settings/ShareView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_1
    return-void

    .line 199
    :pswitch_0
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 200
    iget-object v4, p0, Lcom/smartisanos/home/settings/ShareView$3;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-static {v4}, Lcom/smartisanos/home/settings/ShareView;->access$200(Lcom/smartisanos/home/settings/ShareView;)[Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 206
    :pswitch_1
    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v4, p0, Lcom/smartisanos/home/settings/ShareView$3;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-static {v4}, Lcom/smartisanos/home/settings/ShareView;->access$200(Lcom/smartisanos/home/settings/ShareView;)[Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 213
    :pswitch_2
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    iget-object v4, p0, Lcom/smartisanos/home/settings/ShareView$3;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-static {v4}, Lcom/smartisanos/home/settings/ShareView;->access$200(Lcom/smartisanos/home/settings/ShareView;)[Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 220
    :pswitch_3
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 221
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    iget-object v4, p0, Lcom/smartisanos/home/settings/ShareView$3;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-static {v4}, Lcom/smartisanos/home/settings/ShareView;->access$200(Lcom/smartisanos/home/settings/ShareView;)[Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 228
    :pswitch_4
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    iget-object v4, p0, Lcom/smartisanos/home/settings/ShareView$3;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-static {v4}, Lcom/smartisanos/home/settings/ShareView;->access$200(Lcom/smartisanos/home/settings/ShareView;)[Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 235
    :pswitch_5
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 236
    iget-object v4, p0, Lcom/smartisanos/home/settings/ShareView$3;->this$0:Lcom/smartisanos/home/settings/ShareView;

    invoke-static {v4}, Lcom/smartisanos/home/settings/ShareView;->access$200(Lcom/smartisanos/home/settings/ShareView;)[Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f015a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
