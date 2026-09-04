.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$3;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ThemeItemActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

.field final synthetic val$selectedIndex:I


.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$3;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    iput p2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$3;->val$selectedIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 382
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 383
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$3;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 384
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 385
    .local v6, "windowW":I
    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$3;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$700(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 386
    .local v1, "layout":Landroid/widget/LinearLayout;
    iget v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$3;->val$selectedIndex:I

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 387
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 388
    .local v2, "left":I
    div-int/lit8 v7, v6, 0x2

    if-ge v2, v7, :cond_0

    .line 394
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 392
    .local v5, "viewW":I
    div-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v2

    div-int/lit8 v8, v6, 0x2

    sub-int v3, v7, v8

    .line 393
    .local v3, "scrollX":I
    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$3;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$700(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v7

    invoke-virtual {v7, v3, v9}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0
.end method
