.class public Lcom/sina/weibo/sdk/component/view/CommentComponentView;
.super Landroid/widget/FrameLayout;
.source "CommentComponentView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;,
        Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;
    }
.end annotation


.field private static final ALREADY_COMMENT_EN:Ljava/lang/String; = "Comment"

.field private static final ALREADY_COMMENT_ZH_CN:Ljava/lang/String; = "\u5fae\u535a\u70ed\u8bc4"

.field private static final ALREADY_COMMENT_ZH_TW:Ljava/lang/String; = "\u5fae\u535a\u71b1\u8a55"

.field private static final COMMENT_H5:Ljava/lang/String; = "http://widget.weibo.com/distribution/socail_comments_sdk.php"


.field private mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

.field private mContentLy:Landroid/widget/LinearLayout;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->init(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/component/view/CommentComponentView;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->execAttented()V

    return-void
.end method

.method private execAttented()V
    .locals 5

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;->access$0(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->activateApp()V

    .line 100
    new-instance v0, Lcom/sina/weibo/sdk/component/WidgetRequestParam;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;-><init>(Landroid/content/Context;)V

    .line 101
    const-string v1, "http://widget.weibo.com/distribution/socail_comments_sdk.php"

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setUrl(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 103
    const-string v2, "Comment"

    .line 104
    const-string v3, "\u5fae\u535a\u70ed\u8bc4"

    .line 105
    const-string v4, "\u5fae\u535a\u71b1\u8a55"

    .line 102
    invoke-static {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setSpecifyTitle(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;->access$0(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setAppKey(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;->access$1(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setCommentTopic(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;->access$2(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setCommentContent(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;->access$3(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$Category;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setCommentCategory(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;->access$4(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setAuthListener(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 111
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;->access$5(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setToken(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->createRequestParamBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v4, 0x14

    const/16 v7, 0x10

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 50
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mContentLy:Landroid/widget/LinearLayout;

    .line 51
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mContentLy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mContentLy:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 54
    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v1, "sdk_weibo_logo.png"

    .line 57
    invoke-static {p1, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    .line 61
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    .line 59
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v2, "Comment"

    .line 68
    const-string v3, "\u5fae\u535a\u70ed\u8bc4"

    .line 69
    const-string v4, "\u5fae\u535a\u71b1\u8a55"

    .line 66
    invoke-static {p1, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/16 v2, -0x7e00

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    const/4 v2, 0x2

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 72
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 73
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 77
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mContentLy:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mContentLy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mContentLy:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->addView(Landroid/view/View;)V

    .line 84
    new-instance v0, Lcom/sina/weibo/sdk/component/view/CommentComponentView$1;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView$1;-><init>(Lcom/sina/weibo/sdk/component/view/CommentComponentView;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method


.method public setCommentParam(Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->mCommentParam:Lcom/sina/weibo/sdk/component/view/CommentComponentView$RequestParam;

    .line 95
    return-void
.end method
