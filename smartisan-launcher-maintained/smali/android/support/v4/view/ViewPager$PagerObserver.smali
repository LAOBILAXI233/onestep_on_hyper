.class Landroid/support/v4/view/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


.field final synthetic this$0:Landroid/support/v4/view/ViewPager;


.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 3080
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$PagerObserver;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 3081
    return-void
.end method


.method public onChanged()V
    .locals 1

    .prologue
    .line 3085
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$PagerObserver;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->dataSetChanged()V

    .line 3086
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 3089
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$PagerObserver;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->dataSetChanged()V

    .line 3090
    return-void
.end method
