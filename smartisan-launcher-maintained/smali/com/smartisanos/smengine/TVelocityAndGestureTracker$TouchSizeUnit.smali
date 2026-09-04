.class Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;
.super Ljava/lang/Object;
.source "TVelocityAndGestureTracker.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/TVelocityAndGestureTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchSizeUnit"
.end annotation


.field private _eventTime:J

.field private _size:F

.field private _y:F

.field final synthetic this$0:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;


.method private constructor <init>(Lcom/smartisanos/smengine/TVelocityAndGestureTracker;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->this$0:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/TVelocityAndGestureTracker;Lcom/smartisanos/smengine/TVelocityAndGestureTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker;
    .param p2, "x1"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$1;

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;-><init>(Lcom/smartisanos/smengine/TVelocityAndGestureTracker;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;)J
    .locals 2
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;

    .prologue
    .line 689
    iget-wide v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->_eventTime:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;J)J
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;
    .param p1, "x1"    # J

    .prologue
    .line 689
    iput-wide p1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->_eventTime:J

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;)F
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;

    .prologue
    .line 689
    iget v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->_y:F

    return v0
.end method

.method static synthetic access$2002(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;F)F
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;
    .param p1, "x1"    # F

    .prologue
    .line 689
    iput p1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->_y:F

    return p1
.end method

.method static synthetic access$2102(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;F)F
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;
    .param p1, "x1"    # F

    .prologue
    .line 689
    iput p1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;->_size:F

    return p1
.end method
