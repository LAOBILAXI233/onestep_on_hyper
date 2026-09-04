.class public Lcom/smartisanos/quicksearchbox/util/ActivityUtil;
.super Ljava/lang/Object;
.source "ActivityUtil.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFragmentToActivity(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "frameId"    # I

    .prologue
    .line 18
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/GuavaUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p1}, Lcom/smartisanos/quicksearchbox/util/GuavaUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 21
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 22
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 23
    return-void
.end method
