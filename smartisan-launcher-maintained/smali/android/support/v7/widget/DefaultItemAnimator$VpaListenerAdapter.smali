.class Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VpaListenerAdapter"
.end annotation


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/DefaultItemAnimator$1;

    .prologue
    .line 620
    invoke-direct {p0}, Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 628
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 625
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 622
    return-void
.end method
