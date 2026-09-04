.class Lcom/smartisanos/launcher/view/MainView$PageTitleEditRunnable;
.super Ljava/lang/Object;
.source "MainView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageTitleEditRunnable"
.end annotation


.field private mText:Ljava/lang/String;

.field private page:Lcom/smartisanos/launcher/view/Page;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/MainView;


.method private constructor <init>(Lcom/smartisanos/launcher/view/MainView;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$PageTitleEditRunnable;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 0

    .prologue
    .line 825
    return-void
.end method

.method public setPage(Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "p"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$PageTitleEditRunnable;->page:Lcom/smartisanos/launcher/view/Page;

    .line 816
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 819
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$PageTitleEditRunnable;->mText:Ljava/lang/String;

    .line 820
    return-void
.end method
