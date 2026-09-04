.class Lcom/smartisan/moreapps/AppsView$1;
.super Landroid/content/BroadcastReceiver;
.source "AppsView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/moreapps/AppsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/moreapps/AppsView;


.method constructor <init>(Lcom/smartisan/moreapps/AppsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/moreapps/AppsView;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/smartisan/moreapps/AppsView$1;->this$0:Lcom/smartisan/moreapps/AppsView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    iget-object v2, p0, Lcom/smartisan/moreapps/AppsView$1;->this$0:Lcom/smartisan/moreapps/AppsView;

    invoke-static {v2}, Lcom/smartisan/moreapps/AppsView;->access$000(Lcom/smartisan/moreapps/AppsView;)Lcom/smartisan/moreapps/ProductsAdapter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/smartisan/moreapps/ProductsAdapter;->updateAppState(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    iget-object v2, p0, Lcom/smartisan/moreapps/AppsView$1;->this$0:Lcom/smartisan/moreapps/AppsView;

    invoke-static {v2}, Lcom/smartisan/moreapps/AppsView;->access$000(Lcom/smartisan/moreapps/AppsView;)Lcom/smartisan/moreapps/ProductsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisan/moreapps/ProductsAdapter;->notifyDataSetChanged()V

    .line 64
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/smartisan/moreapps/AppsView$1;->this$0:Lcom/smartisan/moreapps/AppsView;

    invoke-static {v2}, Lcom/smartisan/moreapps/AppsView;->access$000(Lcom/smartisan/moreapps/AppsView;)Lcom/smartisan/moreapps/ProductsAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/smartisan/moreapps/ProductsAdapter;->updateAppState(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/smartisan/moreapps/AppsView$1;->this$0:Lcom/smartisan/moreapps/AppsView;

    invoke-static {v2}, Lcom/smartisan/moreapps/AppsView;->access$000(Lcom/smartisan/moreapps/AppsView;)Lcom/smartisan/moreapps/ProductsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisan/moreapps/ProductsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
