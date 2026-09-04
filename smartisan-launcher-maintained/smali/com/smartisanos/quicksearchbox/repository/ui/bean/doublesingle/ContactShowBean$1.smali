.class Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/ContactShowBean$1;
.super Ljava/lang/Object;
.source "ContactShowBean.java"

.implements Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/ContactShowBean;-><init>(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic val$contactBean:Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

.field final synthetic val$context:Landroid/content/Context;


.method constructor <init>(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/ContactShowBean$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/ContactShowBean$1;->val$contactBean:Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public longClick()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/ContactShowBean$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/ContactShowBean$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/ContactShowBean$1;->val$contactBean:Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    invoke-static {v1, v2}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/ContactShowBean;->access$000(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method
