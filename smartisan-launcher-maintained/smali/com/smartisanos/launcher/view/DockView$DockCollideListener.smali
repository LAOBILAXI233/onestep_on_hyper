.class Lcom/smartisanos/launcher/view/DockView$DockCollideListener;
.super Ljava/lang/Object;
.source "DockView.java"

.implements Lcom/smartisanos/smengine/SceneNode$CollideListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/DockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DockCollideListener"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/DockView;


.method private constructor <init>(Lcom/smartisanos/launcher/view/DockView;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView$DockCollideListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/launcher/view/DockView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/launcher/view/DockView;
    .param p2, "x1"    # Lcom/smartisanos/launcher/view/DockView$1;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DockView$DockCollideListener;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    return-void
.end method


.method public onCollideEnter(Lcom/smartisanos/smengine/CollisionData;)I
    .locals 1
    .param p1, "collideData"    # Lcom/smartisanos/smengine/CollisionData;

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public onCollideExit(Lcom/smartisanos/smengine/CollisionData;)I
    .locals 1
    .param p1, "collideData"    # Lcom/smartisanos/smengine/CollisionData;

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method
