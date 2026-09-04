.class public Lcom/smartisanos/launcher/view/SwitchPageNode$MySingleTapListener;
.super Ljava/lang/Object;
.source "SwitchPageNode.java"

.implements Lcom/smartisanos/smengine/SceneNode$SingleTapListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/SwitchPageNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySingleTapListener"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;


.method public constructor <init>(Lcom/smartisanos/launcher/view/SwitchPageNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$MySingleTapListener;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 209
    return-void
.end method
