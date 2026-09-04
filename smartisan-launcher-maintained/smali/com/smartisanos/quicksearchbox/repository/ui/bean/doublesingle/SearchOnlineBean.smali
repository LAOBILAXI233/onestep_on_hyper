.class public Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/SearchOnlineBean;
.super Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;
.source "SearchOnlineBean.java"


.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 15
    const/16 v0, 0x386a

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020246

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/SearchOnlineBean$1;

    invoke-direct {v3, p1, p2}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/SearchOnlineBean$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;)V

    .line 33
    return-void
.end method
