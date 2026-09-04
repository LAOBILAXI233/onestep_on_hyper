.class Lcom/smartisanos/launcher/view/UnlockAnimationXML$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "UnlockAnimationXML.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/UnlockAnimationXML;->init(Lcom/smartisanos/launcher/view/Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;


.method constructor <init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$1;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$1;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$002(Lcom/smartisanos/launcher/view/UnlockAnimationXML;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 101
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$1;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$102(Lcom/smartisanos/launcher/view/UnlockAnimationXML;Z)Z

    .line 102
    return-void
.end method
