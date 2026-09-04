.class public final Lcom/smartisan/pullToRefresh/ConversationListFooterView;
.super Landroid/widget/RelativeLayout;
.source "ConversationListFooterView.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;
    }
.end annotation


.field private static final DBG:Z = false

.field private static final LONG_DELAY:I = 0xdac

.field private static final SHORT_DELAY:I = 0x7d0

.field public static final STATE_GONE:I = 0x0

.field public static final STATE_LOADING:I = 0x3

.field public static final STATE_PULL_LOAD_MORE:I = 0x1

.field public static final STATE_RELEASE_LOAD_MORE:I = 0x2

.field public static final STATE_SEARCH_SERVER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ConvFooterView"

.field private static mLastToastMillis:J

.field private static sNormalBackground:Landroid/graphics/drawable/Drawable;


.field private mClickListener:Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;

.field private mCurrentState:I

.field private mLoadMore:Landroid/view/View;

.field private mLoadMoreTx:Landroid/widget/TextView;

.field private mLoadMoreUri:Landroid/net/Uri;

.field private mLoading:Landroid/view/View;


.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mCurrentState:I

    .line 59
    return-void
.end method

.method private getBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 146
    return-void
.end method


.method public getState()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mCurrentState:I

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowFooter()Z
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mCurrentState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 79
    .local v0, "id":I
    sget v1, Lcom/smartisan/pullToRefresh/R$id;->load_more:I

    if-ne v0, v1, :cond_1

    .line 80
    const-string v1, "onClick R.id.load_more"

    invoke-direct {p0, v1}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->log(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mClickListener:Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mClickListener:Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;

    invoke-interface {v1}, Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;->onFooterViewLoadMoreClick()V

    .line 84
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->setState(I)V

    .line 86
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 65
    sget v0, Lcom/smartisan/pullToRefresh/R$id;->loading:I

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoading:Landroid/view/View;

    .line 66
    sget v0, Lcom/smartisan/pullToRefresh/R$id;->load_more:I

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget v0, Lcom/smartisan/pullToRefresh/R$id;->load_more_text:I

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoadMoreTx:Landroid/widget/TextView;

    .line 70
    return-void
.end method

.method public performLoading()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performLoading mCurrentState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mShowFooter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->isShowFooter()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->log(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->isShowFooter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 93
    :cond_0
    return-void
.end method

.method public setClickListener(Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mClickListener:Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;

    .line 74
    return-void
.end method

.method public setState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 104
    iget v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mCurrentState:I

    if-eq v0, p1, :cond_0

    .line 105
    iput p1, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mCurrentState:I

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoadMoreTx:Landroid/widget/TextView;

    sget v1, Lcom/smartisan/pullToRefresh/R$string;->pull_up_to_load_more:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoadMoreTx:Landroid/widget/TextView;

    sget v1, Lcom/smartisan/pullToRefresh/R$string;->pull_up_to_load_more:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 118
    :pswitch_2
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 122
    :pswitch_3
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 126
    :pswitch_4
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
