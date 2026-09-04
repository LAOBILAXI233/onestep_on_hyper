.class Lcom/smartisanos/launcher/view/TrashView$TrashViewCollisionListener;
.super Ljava/lang/Object;
.source "TrashView.java"

.implements Lcom/smartisanos/smengine/SceneNode$CollideListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/TrashView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrashViewCollisionListener"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/TrashView;


.method private constructor <init>(Lcom/smartisanos/launcher/view/TrashView;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TrashView$TrashViewCollisionListener;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/view/TrashView;Lcom/smartisanos/launcher/view/TrashView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/launcher/view/TrashView;
    .param p2, "x1"    # Lcom/smartisanos/launcher/view/TrashView$1;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/TrashView$TrashViewCollisionListener;-><init>(Lcom/smartisanos/launcher/view/TrashView;)V

    return-void
.end method


.method public onCollideEnter(Lcom/smartisanos/smengine/CollisionData;)I
    .locals 1
    .param p1, "collideData"    # Lcom/smartisanos/smengine/CollisionData;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView$TrashViewCollisionListener;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/TrashView;->enterTrash(Lcom/smartisanos/smengine/CollisionData;)I

    move-result v0

    return v0
.end method

.method public onCollideExit(Lcom/smartisanos/smengine/CollisionData;)I
    .locals 1
    .param p1, "collideData"    # Lcom/smartisanos/smengine/CollisionData;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TrashView$TrashViewCollisionListener;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/TrashView;->exitTrash(Lcom/smartisanos/smengine/CollisionData;)I

    move-result v0

    return v0
.end method
