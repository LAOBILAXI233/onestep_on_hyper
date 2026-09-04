.class Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VectorDrawableDelegateState"
.end annotation


.field private final mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;


.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    .line 730
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 731
    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 732
    return-void
.end method


.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 736
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 737
    .local v0, "drawableCompat":Landroid/support/graphics/drawable/VectorDrawableCompat;
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 738
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 743
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 744
    .local v0, "drawableCompat":Landroid/support/graphics/drawable/VectorDrawableCompat;
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 745
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 750
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 751
    .local v0, "drawableCompat":Landroid/support/graphics/drawable/VectorDrawableCompat;
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 752
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 753
    return-object v0
.end method
