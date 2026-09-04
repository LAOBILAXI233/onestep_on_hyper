.class Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/SearchOnlineBean$1;
.super Ljava/lang/Object;
.source "SearchOnlineBean.java"

.implements Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/SearchOnlineBean;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$keyWord:Ljava/lang/String;


.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/SearchOnlineBean$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/SearchOnlineBean$1;->val$keyWord:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public longClick()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/SearchOnlineBean$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/SearchOnlineBean$1;->val$keyWord:Ljava/lang/String;

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->makeSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
