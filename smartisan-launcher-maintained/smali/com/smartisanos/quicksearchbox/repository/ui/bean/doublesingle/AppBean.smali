.class public Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/AppBean;
.super Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;
.source "AppBean.java"


.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "baseItemOnClikcListener"    # Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;

    .prologue
    .line 12
    const/16 v0, 0x3868

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;)V

    .line 16
    return-void
.end method
