.class public Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;
.super Ljava/lang/Object;
.source "EditBoxPresenter.java"

.implements Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;


.field private mBeanRepository:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

.field private mContext:Landroid/content/Context;

.field private mEditBoxView:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$View;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mResultBoxPresenter:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;

.field private mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;


.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$View;Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;Lcom/smartisanos/quicksearchbox/repository/BeanRepository;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editBoxView"    # Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$View;
    .param p3, "resultBoxPresenter"    # Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;
    .param p4, "beanRepository"    # Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    .line 33
    invoke-static {p2}, Lcom/smartisanos/quicksearchbox/util/GuavaUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$View;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mEditBoxView:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$View;

    .line 34
    invoke-static {p3}, Lcom/smartisanos/quicksearchbox/util/GuavaUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mResultBoxPresenter:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;

    .line 35
    invoke-static {p4}, Lcom/smartisanos/quicksearchbox/util/GuavaUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mBeanRepository:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    .line 36
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mEditBoxView:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$View;

    invoke-interface {v0, p0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$View;->setPresenter(Ljava/lang/Object;)V

    .line 37
    return-void
.end method


.method public clearResultBoxShowBackGround()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mResultBoxPresenter:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;

    invoke-interface {v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;->clearQueryResultShowBackground()V

    .line 67
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public startQuery(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mEditBoxView:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$View;

    invoke-interface {v0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$View;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mContext:Landroid/content/Context;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->isT9KeyBoardShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mResultBoxPresenter:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;

    invoke-interface {v0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;->createT9QueryResult(Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxPresenter;->mResultBoxPresenter:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;

    invoke-interface {v0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;->createQwertyQueryResult(Ljava/lang/String;)V

    goto :goto_0
.end method
