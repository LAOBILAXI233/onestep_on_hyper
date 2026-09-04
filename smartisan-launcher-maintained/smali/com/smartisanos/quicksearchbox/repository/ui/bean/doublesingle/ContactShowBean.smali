.class public Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/ContactShowBean;
.super Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;
.source "ContactShowBean.java"


.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactBean"    # Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .prologue
    .line 29
    const/16 v0, 0x3869

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 32
    invoke-virtual {p2}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getDisplayname()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/ContactShowBean$1;

    invoke-direct {v3, p1, p2}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/ContactShowBean$1;-><init>(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)V

    .line 29
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .prologue
    .line 15
    invoke-static {p0, p1}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/ContactShowBean;->makeContactIntent(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static makeContactIntent(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactBean"    # Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getContactId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 24
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getDisplayname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    return-object v0
.end method
