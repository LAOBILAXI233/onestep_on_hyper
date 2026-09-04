.class Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;
.super Ljava/lang/Object;
.source "GridViewWithHeaderAndFooter.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedViewInfo"
.end annotation


.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field public view:Landroid/view/View;

.field public viewContainer:Landroid/view/ViewGroup;


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$1;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;-><init>()V

    return-void
.end method
