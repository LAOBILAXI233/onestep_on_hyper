.class public Lcom/smartisanos/home/settings/SettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsAdapter.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


.method public getBackgroundRes(II)I
    .locals 1
    .param p1, "count"    # I
    .param p2, "position"    # I

    .prologue
    .line 31
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 32
    const v0, 0x7f0201cd

    .line 38
    :goto_0
    return v0

    .line 33
    :cond_0
    if-nez p2, :cond_1

    .line 34
    const v0, 0x7f0201ce

    goto :goto_0

    .line 35
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 36
    const v0, 0x7f0201cb

    goto :goto_0

    .line 38
    :cond_2
    const v0, 0x7f0201cc

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 22
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method
