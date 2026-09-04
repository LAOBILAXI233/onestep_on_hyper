.class public final Lcom/smartisan/pullToRefresh/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/pullToRefresh/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


.field public static final PullToRefreshListView:[I

.field public static final PullToRefreshListView_back_ground:I = 0x3

.field public static final PullToRefreshListView_enablePullDown:I = 0x0

.field public static final PullToRefreshListView_enablePullUp:I = 0x1

.field public static final PullToRefreshListView_enableSwipe:I = 0x4

.field public static final PullToRefreshListView_pullUpStyle:I = 0x2


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smartisan/pullToRefresh/R$styleable;->PullToRefreshListView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0100e9
        0x7f0100ea
        0x7f0100eb
        0x7f0100ec
        0x7f0100ed
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
