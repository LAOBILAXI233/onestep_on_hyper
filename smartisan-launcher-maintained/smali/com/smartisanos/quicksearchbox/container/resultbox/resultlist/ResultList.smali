.class public Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;
.super Landroid/support/v7/widget/RecyclerView;
.source "ResultList.java"

.implements Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListContract$View;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


.method public setPresenter(Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListContract$Presenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListContract$Presenter;

    .prologue
    .line 23
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;->setPresenter(Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListContract$Presenter;)V

    return-void
.end method
