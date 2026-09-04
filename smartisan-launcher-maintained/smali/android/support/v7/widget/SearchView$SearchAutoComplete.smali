.class public Landroid/support/v7/widget/SearchView$SearchAutoComplete;
.super Landroid/support/v7/widget/AppCompatAutoCompleteTextView;
.source "SearchView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


.field private mSearchView:Landroid/support/v7/widget/SearchView;

.field private mThreshold:I


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1871
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1872
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1875
    sget v0, Landroid/support/v7/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1876
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1879
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1880
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1881
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .prologue
    .line 1865
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private getSearchViewTextMinWidthDp()I
    .locals 5

    .prologue
    .line 1991
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1992
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v2

    .line 1993
    .local v2, "widthDp":I
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v1

    .line 1995
    .local v1, "heightDp":I
    const/16 v3, 0x3c0

    if-lt v2, v3, :cond_0

    const/16 v3, 0x2d0

    if-lt v1, v3, :cond_0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1997
    const/16 v3, 0x100

    .line 2001
    :goto_0
    return v3

    .line 1998
    :cond_0
    const/16 v3, 0x258

    if-ge v2, v3, :cond_1

    const/16 v3, 0x280

    if-lt v2, v3, :cond_2

    const/16 v3, 0x1e0

    if-lt v1, v3, :cond_2

    .line 1999
    :cond_1
    const/16 v3, 0xc0

    goto :goto_0

    .line 2001
    :cond_2
    const/16 v3, 0xa0

    goto :goto_0
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 1905
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 1958
    iget v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 1885
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onFinishInflate()V

    .line 1886
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1887
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    .line 1888
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getSearchViewTextMinWidthDp()I

    move-result v2

    int-to-float v2, v2

    .line 1887
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setMinWidth(I)V

    .line 1889
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1948
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1949
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onTextFocusChanged()V

    .line 1950
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1963
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 1966
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1967
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1968
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 1969
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1984
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v1

    .line 1972
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1973
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1974
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 1975
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1977
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1978
    iget-object v2, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1979
    iget-object v2, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_0

    .line 1984
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1932
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1934
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1935
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    .line 1936
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1937
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1940
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1941
    sget-object v1, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1944
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    .prologue
    .line 1924
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1914
    return-void
.end method

.method setSearchView(Landroid/support/v7/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/support/v7/widget/SearchView;

    .prologue
    .line 1892
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    .line 1893
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 1897
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->setThreshold(I)V

    .line 1898
    iput p1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1899
    return-void
.end method
