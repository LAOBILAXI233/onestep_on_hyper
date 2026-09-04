.class Lcom/smartisanos/smengine/SceneNode$ListenerInfo;
.super Ljava/lang/Object;
.source "SceneNode.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/SceneNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListenerInfo"
.end annotation


.field public mOnClickListener:Lcom/smartisanos/smengine/SceneNode$OnClickListener;

.field protected mOnLongClickListener:Lcom/smartisanos/smengine/SceneNode$OnLongClickListener;

.field private mOnTouchListener:Lcom/smartisanos/smengine/SceneNode$OnTouchListener;


.method constructor <init>()V
    .locals 0

    .prologue
    .line 1807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/smengine/SceneNode$ListenerInfo;)Lcom/smartisanos/smengine/SceneNode$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/SceneNode$ListenerInfo;

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode$ListenerInfo;->mOnTouchListener:Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/smartisanos/smengine/SceneNode$ListenerInfo;Lcom/smartisanos/smengine/SceneNode$OnTouchListener;)Lcom/smartisanos/smengine/SceneNode$OnTouchListener;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/SceneNode$ListenerInfo;
    .param p1, "x1"    # Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode$ListenerInfo;->mOnTouchListener:Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

    return-object p1
.end method
