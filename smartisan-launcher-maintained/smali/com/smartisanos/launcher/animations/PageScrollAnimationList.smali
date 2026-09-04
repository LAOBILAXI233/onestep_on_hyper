.class public Lcom/smartisanos/launcher/animations/PageScrollAnimationList;
.super Ljava/lang/Object;
.source "PageScrollAnimationList.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScrollAnimation(I)Lcom/smartisanos/launcher/animations/PageScrollAnimation;
    .locals 1
    .param p0, "animType"    # I

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;-><init>()V

    .line 38
    :goto_0
    return-object v0

    .line 25
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 26
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;-><init>()V

    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 28
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;-><init>()V

    goto :goto_0

    .line 29
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 30
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;-><init>()V

    goto :goto_0

    .line 31
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 32
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;-><init>()V

    goto :goto_0

    .line 33
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 34
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;-><init>()V

    goto :goto_0

    .line 35
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 36
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;-><init>()V

    goto :goto_0

    .line 38
    :cond_6
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;-><init>()V

    goto :goto_0
.end method

.method public static onScrollAnimationTypeChanged()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationList$1;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationList$1;-><init>(I)V

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationList$1;->send(F)V

    .line 17
    return-void
.end method
