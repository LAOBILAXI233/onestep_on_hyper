.class Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawableCompat.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableDelegateState"
.end annotation


.field private final mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;


.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    .line 430
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 431
    iput-object p1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 432
    return-void
.end method


.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 436
    new-instance v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>()V

    .line 438
    .local v0, "drawableCompat":Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 439
    iget-object v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 440
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 445
    new-instance v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>()V

    .line 447
    .local v0, "drawableCompat":Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 448
    iget-object v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 449
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 454
    new-instance v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>()V

    .line 456
    .local v0, "drawableCompat":Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 457
    iget-object v1, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 458
    return-object v0
.end method
