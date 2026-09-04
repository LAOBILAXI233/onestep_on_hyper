.class public Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DisplayMoreBean;
.super Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;
.source "DisplayMoreBean.java"


.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseItemOnClikcListener"    # Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;

    .prologue
    .line 13
    const/16 v0, 0x386c

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;)V

    .line 18
    return-void
.end method
