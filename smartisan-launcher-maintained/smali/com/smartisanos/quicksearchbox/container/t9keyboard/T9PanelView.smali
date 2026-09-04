.class public Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;
.super Landroid/widget/RelativeLayout;
.source "T9PanelView.java"


.field private keyBoardAnimDuration:I

.field private mHideT9Animator:Landroid/animation/ObjectAnimator;

.field private mShowT9Animator:Landroid/animation/ObjectAnimator;

.field private mT9KeyBoard:Landroid/widget/LinearLayout;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/16 v0, 0x12c

    iput v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->keyBoardAnimDuration:I

    .line 30
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/16 v0, 0x12c

    iput v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->keyBoardAnimDuration:I

    .line 35
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/16 v0, 0x12c

    iput v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->keyBoardAnimDuration:I

    .line 40
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mT9KeyBoard:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mT9KeyBoard:Landroid/widget/LinearLayout;

    .line 46
    return-void
.end method


.method public isT9PanelShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mT9KeyBoard:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_false

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_true

    :cond_false
    const/4 v0, 0x0

    return v0

    :cond_true
    const/4 v0, 0x1

    return v0
.end method

.method public hideT9Panel(Z)Z
    .locals 6
    .param p1, "withAnim"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 93
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mT9KeyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 120
    :goto_0
    return v0

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mShowT9Animator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mShowT9Animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 99
    :cond_1
    if-nez p1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mT9KeyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v1

    .line 101
    goto :goto_0

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mHideT9Animator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_3

    .line 105
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mT9KeyBoard:Landroid/widget/LinearLayout;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v0

    .line 106
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f090152

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    aput v0, v4, v1

    .line 105
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mHideT9Animator:Landroid/animation/ObjectAnimator;

    .line 107
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mHideT9Animator:Landroid/animation/ObjectAnimator;

    iget v2, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->keyBoardAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 108
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mHideT9Animator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mHideT9Animator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView$2;

    invoke-direct {v2, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView$2;-><init>(Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mHideT9Animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mHideT9Animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    move v0, v1

    .line 120
    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 49
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mT9KeyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 53
    :goto_0
    return v0

    .line 52
    :cond_0
    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->hideT9Panel(Z)Z

    .line 53
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showT9Panel(Z)V
    .locals 7
    .param p1, "withAnim"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 58
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mT9KeyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mT9KeyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mT9KeyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 62
    :cond_0
    const-string v0, "is visible"

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mHideT9Animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mHideT9Animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 68
    :cond_3
    if-nez p1, :cond_4

    .line 69
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mT9KeyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mShowT9Animator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_5

    .line 74
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mT9KeyBoard:Landroid/widget/LinearLayout;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 75
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090152

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    aput v3, v2, v6

    const/4 v3, 0x1

    aput v5, v2, v3

    .line 74
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mShowT9Animator:Landroid/animation/ObjectAnimator;

    .line 76
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mShowT9Animator:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->keyBoardAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mShowT9Animator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mShowT9Animator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView$1;-><init>(Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mShowT9Animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mT9KeyBoard:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mT9KeyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 88
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->mShowT9Animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
