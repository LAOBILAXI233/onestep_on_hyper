.class Lcom/smartisanos/launcher/view/Page$15;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Page.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Page;->reSetBackgroundImage()Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Page;


.method constructor <init>(Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 2146
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page$15;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    .line 2149
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v1, v2, :cond_0

    .line 2150
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$15;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    .line 2151
    .local v0, "tv":Lcom/smartisanos/launcher/view/TitleView;
    if-eqz v0, :cond_0

    .line 2155
    .end local v0    # "tv":Lcom/smartisanos/launcher/view/TitleView;
    :cond_0
    return-void
.end method
