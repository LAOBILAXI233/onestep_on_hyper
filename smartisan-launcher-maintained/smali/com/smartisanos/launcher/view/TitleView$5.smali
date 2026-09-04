.class Lcom/smartisanos/launcher/view/TitleView$5;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "TitleView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/TitleView;->switchTitleMode(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/AnimationTimeLine;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/TitleView;

.field final synthetic val$toM:I


.method constructor <init>(Lcom/smartisanos/launcher/view/TitleView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/TitleView;

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TitleView$5;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    iput p2, p0, Lcom/smartisanos/launcher/view/TitleView$5;->val$toM:I

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView$5;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    iget v1, p0, Lcom/smartisanos/launcher/view/TitleView$5;->val$toM:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TitleView;->setMode(I)V

    .line 1176
    return-void
.end method
