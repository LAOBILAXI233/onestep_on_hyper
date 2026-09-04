.class public Lcom/smartisanos/smengine/Event;
.super Ljava/lang/Object;
.source "Event.java"


.field public static final EVENT_FROM_DB:I = 0x65

.field public static final EVENT_IDLE:I = 0x0

.field public static final EVENT_USER_DEFINE:I = 0x64


.field private mIsDelayEvent:Z

.field private mIsPause:Z

.field private mName:Ljava/lang/String;

.field private mTime:J

.field private mType:I


.method public constructor <init>(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v2, p0, Lcom/smartisanos/smengine/Event;->mType:I

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smartisanos/smengine/Event;->mTime:J

    .line 11
    iput-boolean v2, p0, Lcom/smartisanos/smengine/Event;->mIsPause:Z

    .line 16
    iput p1, p0, Lcom/smartisanos/smengine/Event;->mType:I

    .line 17
    return-void
.end method


.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smartisanos/smengine/Event;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/smartisanos/smengine/Event;->mTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/smartisanos/smengine/Event;->mType:I

    return v0
.end method

.method public isDelayEvent()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Event;->mIsDelayEvent:Z

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Event;->mIsPause:Z

    return v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public send(F)V
    .locals 1
    .param p1, "delay"    # F

    .prologue
    .line 50
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/smartisanos/smengine/EventManager;->sendEvent(Lcom/smartisanos/smengine/Event;F)V

    .line 51
    return-void
.end method

.method public setIsDelayEvent(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/smartisanos/smengine/Event;->mIsDelayEvent:Z

    .line 36
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/smartisanos/smengine/Event;->mName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setPause(Z)Lcom/smartisanos/smengine/Event;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/smartisanos/smengine/Event;->mIsPause:Z

    .line 23
    return-object p0
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/smartisanos/smengine/Event;->mTime:J

    .line 30
    return-void
.end method
