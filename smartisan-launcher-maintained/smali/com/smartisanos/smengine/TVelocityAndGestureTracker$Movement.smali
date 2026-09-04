.class Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
.super Ljava/lang/Object;
.source "TVelocityAndGestureTracker.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/TVelocityAndGestureTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Movement"
.end annotation


.field private _Xs:[F

.field private _Ys:[F

.field private _eventTime:J

.field private _idBits:I

.field private _pointCount:I

.field private _ponitIDs:[I

.field private _sizes:[F

.field final synthetic this$0:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;


.method private constructor <init>(Lcom/smartisanos/smengine/TVelocityAndGestureTracker;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 577
    iput-object p1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->this$0:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_idBits:I

    .line 580
    iput v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_pointCount:I

    .line 581
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_Xs:[F

    .line 582
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_Ys:[F

    .line 583
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_sizes:[F

    .line 584
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_ponitIDs:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/TVelocityAndGestureTracker;Lcom/smartisanos/smengine/TVelocityAndGestureTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker;
    .param p2, "x1"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$1;

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;-><init>(Lcom/smartisanos/smengine/TVelocityAndGestureTracker;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .param p1, "x1"    # I

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->hasPoint(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .param p1, "x1"    # I

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .param p1, "x1"    # I

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->getX(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .param p1, "x1"    # I

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->getY(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J
    .locals 2
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    .prologue
    .line 577
    iget-wide v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_eventTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;J)J
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .param p1, "x1"    # J

    .prologue
    .line 577
    iput-wide p1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_eventTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    .prologue
    .line 577
    iget v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_idBits:I

    return v0
.end method

.method static synthetic access$302(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)I
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .param p1, "x1"    # I

    .prologue
    .line 577
    iput p1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_idBits:I

    return p1
.end method

.method static synthetic access$400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    .prologue
    .line 577
    iget v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_pointCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)I
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .param p1, "x1"    # I

    .prologue
    .line 577
    iput p1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_pointCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)[I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_ponitIDs:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)[F
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_Xs:[F

    return-object v0
.end method

.method static synthetic access$700(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)[F
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_Ys:[F

    return-object v0
.end method

.method static synthetic access$800(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)[F
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_sizes:[F

    return-object v0
.end method

.method private getPointerId(I)I
    .locals 1
    .param p1, "actionIndex"    # I

    .prologue
    .line 598
    iget-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_ponitIDs:[I

    aget v0, v0, p1

    return v0
.end method

.method private getSize(I)F
    .locals 1
    .param p1, "pointID"    # I

    .prologue
    .line 602
    iget-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_sizes:[F

    aget v0, v0, p1

    return v0
.end method

.method private getX(I)F
    .locals 1
    .param p1, "pointID"    # I

    .prologue
    .line 606
    iget-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_Xs:[F

    aget v0, v0, p1

    return v0
.end method

.method private getY(I)F
    .locals 1
    .param p1, "pointID"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_Ys:[F

    aget v0, v0, p1

    return v0
.end method

.method private hasPoint(I)Z
    .locals 4
    .param p1, "pointID"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 587
    iget v3, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_pointCount:I

    if-nez v3, :cond_1

    .line 594
    :cond_0
    :goto_0
    return v1

    .line 590
    :cond_1
    shl-int v0, v2, p1

    .line 591
    .local v0, "pointerIdBit":I
    iget v3, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->_idBits:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    move v1, v2

    .line 592
    goto :goto_0
.end method
