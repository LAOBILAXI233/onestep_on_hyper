.class Lcom/smartisanos/launcher/view/StatusBar$4;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "StatusBar.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/StatusBar;->hideTextOnStatusBar(Lcom/smartisanos/smengine/AnimationTimeLine;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/StatusBar;


.method constructor <init>(Lcom/smartisanos/launcher/view/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/StatusBar;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/smartisanos/launcher/view/StatusBar$4;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar$4;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/StatusBar;->access$400(Lcom/smartisanos/launcher/view/StatusBar;)Lcom/smartisanos/launcher/view/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 633
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar$4;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/StatusBar;->access$400(Lcom/smartisanos/launcher/view/StatusBar;)Lcom/smartisanos/launcher/view/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TextView;->clear(Z)V

    .line 634
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar$4;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/StatusBar;->access$402(Lcom/smartisanos/launcher/view/StatusBar;Lcom/smartisanos/launcher/view/TextView;)Lcom/smartisanos/launcher/view/TextView;

    .line 635
    return-void
.end method
