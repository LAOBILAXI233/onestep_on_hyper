.class public Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.super Ljava/lang/Object;
.source "ViewPager.java"

.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnPageChangeListener"
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 337
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 327
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 332
    return-void
.end method
