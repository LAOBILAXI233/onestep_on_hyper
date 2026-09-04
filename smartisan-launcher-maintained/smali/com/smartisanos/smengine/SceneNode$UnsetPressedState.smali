.class final Lcom/smartisanos/smengine/SceneNode$UnsetPressedState;
.super Ljava/lang/Object;
.source "SceneNode.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/SceneNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnsetPressedState"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/smengine/SceneNode;


.method private constructor <init>(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .prologue
    .line 2778
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode$UnsetPressedState;->this$0:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "x1"    # Lcom/smartisanos/smengine/SceneNode$1;

    .prologue
    .line 2778
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode$UnsetPressedState;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 2780
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode$UnsetPressedState;->this$0:Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    .line 2781
    return-void
.end method
