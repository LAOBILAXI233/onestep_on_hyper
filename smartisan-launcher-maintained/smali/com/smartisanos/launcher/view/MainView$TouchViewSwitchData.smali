.class public Lcom/smartisanos/launcher/view/MainView$TouchViewSwitchData;
.super Ljava/lang/Object;
.source "MainView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchViewSwitchData"
.end annotation


.field public enterNode:Lcom/smartisanos/smengine/SceneNode;

.field public exitNode:Lcom/smartisanos/smengine/SceneNode;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0
    .param p1, "enter"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "exit"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MainView$TouchViewSwitchData;->exitNode:Lcom/smartisanos/smengine/SceneNode;

    .line 195
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$TouchViewSwitchData;->enterNode:Lcom/smartisanos/smengine/SceneNode;

    .line 196
    return-void
.end method
