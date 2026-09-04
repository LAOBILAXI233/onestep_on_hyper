.class Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MultiSelectNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->onUp(Lcom/smartisanos/smengine/TouchEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;


.method constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener$1;->this$1:Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 227
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener$1;->this$1:Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$202(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 228
    return-void
.end method
