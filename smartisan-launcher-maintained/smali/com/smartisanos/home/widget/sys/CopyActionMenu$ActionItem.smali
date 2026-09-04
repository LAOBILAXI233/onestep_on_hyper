.class public Lcom/smartisanos/home/widget/sys/CopyActionMenu$ActionItem;
.super Ljava/lang/Object;
.source "CopyActionMenu.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/widget/sys/CopyActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionItem"
.end annotation


.field ocl:Landroid/view/View$OnClickListener;

.field title:I


.method public constructor <init>(ILandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "t"    # I
    .param p2, "ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu$ActionItem;->title:I

    .line 51
    iput-object p2, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu$ActionItem;->ocl:Landroid/view/View$OnClickListener;

    .line 52
    return-void
.end method
