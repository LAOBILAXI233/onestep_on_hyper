.class public Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LayoutChunkResult"
.end annotation


.field public mConsumed:I

.field public mFinished:Z

.field public mFocusable:Z

.field public mIgnoreConsumed:Z


.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method resetInternal()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1982
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1983
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1984
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1985
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 1986
    return-void
.end method
