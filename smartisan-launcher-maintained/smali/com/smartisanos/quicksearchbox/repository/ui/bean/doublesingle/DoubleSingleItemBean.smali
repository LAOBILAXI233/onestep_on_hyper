.class public Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;
.super Lcom/smartisanos/quicksearchbox/repository/ui/bean/BaseBean;
.source "DoubleSingleItemBean.java"


.field private mBaseItemOnClikcListener:Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mText:Ljava/lang/String;


.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "baseItemOnClikcListener"    # Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/BaseBean;-><init>(I)V

    .line 50
    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-object p3, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->mText:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->mBaseItemOnClikcListener:Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;

    .line 53
    return-void
.end method


.method public getBaseItemOnClikcListener()Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->mBaseItemOnClikcListener:Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseItemOnClikcListener(Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;)V
    .locals 0
    .param p1, "baseItemOnClikcListener"    # Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->mBaseItemOnClikcListener:Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;

    .line 44
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 28
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->mText:Ljava/lang/String;

    .line 36
    return-void
.end method
