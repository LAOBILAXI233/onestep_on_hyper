.class Lcom/smartisanos/launcher/animations/IconSortAnimation$5;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "IconSortAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/IconSortAnimation;->doSortAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/animations/IconSortAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/IconSortAnimation;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$5;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/animations/IconSortAnimation$5;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/IconSortAnimation$5;

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/IconSortAnimation$5;->notifyFirstAnimAlreadyRunning()V

    return-void
.end method

.method private notifyFirstAnimAlreadyRunning()V
    .locals 3

    .prologue
    .line 436
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getInstance()Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    move-result-object v0

    .line 437
    .local v0, "sortAction":Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->handleMsgSortAnimBegin(ILcom/smartisanos/launcher/actions/sort/SortResult;)V

    .line 438
    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    .line 442
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$5;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$402(Lcom/smartisanos/launcher/animations/IconSortAnimation;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 443
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getInstance()Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    move-result-object v0

    .line 444
    .local v0, "sortAction":Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->handleMsgForSortAnimEnd(I)V

    .line 445
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 422
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_U1_BOARD:Z

    if-eqz v0, :cond_0

    .line 423
    new-instance v0, Lcom/smartisanos/launcher/animations/IconSortAnimation$5$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/animations/IconSortAnimation$5$1;-><init>(Lcom/smartisanos/launcher/animations/IconSortAnimation$5;I)V

    const v1, 0x3dcccccd    # 0.1f

    .line 428
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/animations/IconSortAnimation$5$1;->send(F)V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/IconSortAnimation$5;->notifyFirstAnimAlreadyRunning()V

    goto :goto_0
.end method
