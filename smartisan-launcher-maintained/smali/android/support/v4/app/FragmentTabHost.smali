.class public Landroid/support/v4/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

.implements Landroid/widget/TabHost$OnTabChangeListener;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTabHost$SavedState;,
        Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;,
        Landroid/support/v4/app/FragmentTabHost$TabInfo;
    }
.end annotation


.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, v1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 133
    invoke-direct {p0, p1, v1}, Landroid/support/v4/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6
    .param p1, "tabId"    # Ljava/lang/String;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, "newTab":Landroid/support/v4/app/FragmentTabHost$TabInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 330
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentTabHost$TabInfo;

    .line 331
    .local v2, "tab":Landroid/support/v4/app/FragmentTabHost$TabInfo;
    iget-object v3, v2, Landroid/support/v4/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    move-object v1, v2

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v2    # "tab":Landroid/support/v4/app/FragmentTabHost$TabInfo;
    :cond_1
    if-nez v1, :cond_2

    .line 336
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No tab known for tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 338
    :cond_2
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    if-eq v3, v1, :cond_6

    .line 339
    if-nez p2, :cond_3

    .line 340
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 342
    :cond_3
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    if-eqz v3, :cond_4

    .line 343
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    iget-object v3, v3, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_4

    .line 344
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    iget-object v3, v3, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 347
    :cond_4
    if-eqz v1, :cond_5

    .line 348
    iget-object v3, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_7

    .line 349
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    iget-object v4, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 350
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    .line 349
    invoke-static {v3, v4, v5}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 351
    iget v3, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    iget-object v4, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v5, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 357
    :cond_5
    :goto_1
    iput-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    .line 359
    :cond_6
    return-object p2

    .line 353
    :cond_7
    iget-object v3, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method private ensureContent()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 215
    iget v0, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 216
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    return-void
.end method

.method private ensureHierarchy(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x1020013

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 153
    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 154
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 155
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 156
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v2, Landroid/widget/TabWidget;

    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 161
    .local v2, "tw":Landroid/widget/TabWidget;
    invoke-virtual {v2, v4}, Landroid/widget/TabWidget;->setId(I)V

    .line 162
    invoke-virtual {v2, v6}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 163
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "fl":Landroid/widget/FrameLayout;
    const v3, 0x1020011

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 169
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v0, Landroid/widget/FrameLayout;

    .end local v0    # "fl":Landroid/widget/FrameLayout;
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .restart local v0    # "fl":Landroid/widget/FrameLayout;
    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 172
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget v4, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 173
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .end local v0    # "fl":Landroid/widget/FrameLayout;
    .end local v1    # "ll":Landroid/widget/LinearLayout;
    .end local v2    # "tw":Landroid/widget/TabWidget;
    :cond_0
    return-void
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 142
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100f3

    aput v2, v1, v3

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    .line 145
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 148
    return-void
.end method


.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;

    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 230
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "tag":Ljava/lang/String;
    new-instance v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;

    invoke-direct {v1, v2, p2, p3}, Landroid/support/v4/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 234
    .local v1, "info":Landroid/support/v4/app/FragmentTabHost$TabInfo;
    iget-boolean v3, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    if-eqz v3, :cond_0

    .line 238
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 239
    iget-object v3, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 240
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 241
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, v1, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 242
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 246
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 248
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 252
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 254
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "currentTab":Ljava/lang/String;
    const/4 v1, 0x0

    .line 259
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 260
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentTabHost$TabInfo;

    .line 261
    .local v3, "tab":Landroid/support/v4/app/FragmentTabHost$TabInfo;
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v5, v3, Landroid/support/v4/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 262
    iget-object v4, v3, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    iget-object v4, v3, Landroid/support/v4/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 267
    iput-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->mLastTab:Landroid/support/v4/app/FragmentTabHost$TabInfo;

    .line 259
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_1
    if-nez v1, :cond_2

    .line 272
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 274
    :cond_2
    iget-object v4, v3, Landroid/support/v4/app/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 281
    .end local v3    # "tab":Landroid/support/v4/app/FragmentTabHost$TabInfo;
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    .line 282
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_4

    .line 284
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 285
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 287
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    .line 293
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 305
    instance-of v1, p1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    if-nez v1, :cond_0

    .line 306
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 312
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 309
    check-cast v0, Landroid/support/v4/app/FragmentTabHost$SavedState;

    .line 310
    .local v0, "ss":Landroid/support/v4/app/FragmentTabHost$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 311
    iget-object v1, v0, Landroid/support/v4/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 297
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 298
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/app/FragmentTabHost$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 299
    .local v0, "ss":Landroid/support/v4/app/FragmentTabHost$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    .line 300
    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z

    if-eqz v1, :cond_0

    .line 317
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v4/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 318
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 322
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v1, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 325
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/TabHost$OnTabChangeListener;

    .prologue
    .line 225
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 226
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 191
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 192
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 194
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTabHost;->ensureContent()V

    .line 195
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "containerId"    # I

    .prologue
    .line 198
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    .line 199
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 200
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 201
    iput-object p2, p0, Landroid/support/v4/app/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 202
    iput p3, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I

    .line 203
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTabHost;->ensureContent()V

    .line 204
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 208
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 209
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTabHost;->setId(I)V

    .line 211
    :cond_0
    return-void
.end method
