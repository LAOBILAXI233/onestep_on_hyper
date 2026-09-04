.class Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;
.super Ljava/lang/Object;
.source "TVelocityAndGestureTracker.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/TVelocityAndGestureTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchSizeRecoder"
.end annotation


.field private static final _RECODER_SIZE:I = 0xa


.field private _TouchSizeUnits:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;

.field private _index:I

.field final synthetic this$0:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;


.method private constructor <init>(Lcom/smartisanos/smengine/TVelocityAndGestureTracker;)V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 619
    iput-object p1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->this$0:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    const/4 v1, -0x1

    iput v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_index:I

    .line 620
    new-array v1, v4, [Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;

    iput-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_TouchSizeUnits:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;

    .line 621
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 622
    iget-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_TouchSizeUnits:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;

    new-instance v2, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;-><init>(Lcom/smartisanos/smengine/TVelocityAndGestureTracker;Lcom/smartisanos/smengine/TVelocityAndGestureTracker$1;)V

    aput-object v2, v1, v0

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 624
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/TVelocityAndGestureTracker;Lcom/smartisanos/smengine/TVelocityAndGestureTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker;
    .param p2, "x1"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$1;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;-><init>(Lcom/smartisanos/smengine/TVelocityAndGestureTracker;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;J)F
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;
    .param p1, "x1"    # J

    .prologue
    .line 614
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->getSweepStartY(J)F

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->clear()V

    return-void
.end method

.method static synthetic access$1600(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;
    .param p1, "x1"    # J

    .prologue
    .line 614
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->mightSweep(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;JFF)V
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;
    .param p1, "x1"    # J
    .param p3, "x2"    # F
    .param p4, "x3"    # F

    .prologue
    .line 614
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->putTouchSizeUnit(JFF)V

    return-void
.end method

.method private clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 680
    const/4 v1, -0x1

    iput v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_index:I

    .line 681
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_TouchSizeUnits:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->access$1902(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;J)J

    .line 683
    iget-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_TouchSizeUnits:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;

    aget-object v1, v1, v0

    invoke-static {v1, v4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->access$2002(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;F)F

    .line 684
    iget-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_TouchSizeUnits:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;

    aget-object v1, v1, v0

    invoke-static {v1, v4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->access$2102(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;F)F

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    :cond_0
    return-void
.end method

.method private getSweepStartY(J)F
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "count":I
    const/high16 v2, -0x40800000    # -1.0f

    .line 651
    .local v2, "startY":F
    :goto_0
    iget v4, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_index:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/16 v4, 0x9

    if-ge v0, v4, :cond_2

    .line 652
    iget v4, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_index:I

    sub-int v1, v4, v0

    .line 653
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 654
    add-int/lit8 v1, v1, 0xa

    .line 656
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_TouchSizeUnits:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;

    aget-object v3, v4, v1

    .line 657
    .local v3, "touchSizeUnit":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;
    invoke-static {v3}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->access$1900(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;)J

    move-result-wide v4

    sub-long v4, p1, v4

    const-wide/16 v6, 0x1e0

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 658
    invoke-static {v3}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->access$2000(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;)F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1

    .line 659
    invoke-static {v3}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->access$2000(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;)F

    move-result v2

    .line 664
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 665
    goto :goto_0

    .line 666
    .end local v1    # "index":I
    .end local v3    # "touchSizeUnit":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;
    :cond_2
    return v2
.end method

.method private mightSweep(J)Z
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 645
    iget-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->this$0:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-static {v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->access$1800(Lcom/smartisanos/smengine/TVelocityAndGestureTracker;)Z

    move-result v0

    return v0
.end method

.method private putTouchSizeUnit(JFF)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "y"    # F
    .param p4, "size"    # F

    .prologue
    .line 670
    iget v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_index:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 671
    const/4 v1, 0x0

    iput v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_index:I

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_TouchSizeUnits:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;

    iget v2, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->_index:I

    aget-object v0, v1, v2

    .line 674
    .local v0, "touchSizeUnit":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->access$1902(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;J)J

    .line 675
    invoke-static {v0, p3}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->access$2002(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;F)F

    .line 676
    invoke-static {v0, p4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->access$2102(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;F)F

    .line 677
    return-void
.end method
