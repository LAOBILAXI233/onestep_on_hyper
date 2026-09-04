.class Lcom/smartisanos/launcher/view/MainView$9;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MainView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView;->getBackgroundUnlockAnim(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MainView;

.field final synthetic val$backgroundGaussianCover:Lcom/smartisanos/smengine/RectNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/MainView;Lcom/smartisanos/smengine/RectNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MainView;

    .prologue
    .line 1921
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$9;->this$0:Lcom/smartisanos/launcher/view/MainView;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/MainView$9;->val$backgroundGaussianCover:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onStart()V
    .locals 2

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView$9;->val$backgroundGaussianCover:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1924
    return-void
.end method
