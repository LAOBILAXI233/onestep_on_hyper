.class Landroid/support/v4/view/ViewPager$4;
.super Ljava/lang/Object;
.source "ViewPager.java"

.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewPager;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v4/view/ViewPager;


.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 430
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$4;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager$4;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method


.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "originalInsets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 437
    .line 438
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    .line 439
    .local v0, "applied":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 473
    .end local v0    # "applied":Landroid/support/v4/view/WindowInsetsCompat;
    :goto_0
    return-object v0

    .line 451
    .restart local v0    # "applied":Landroid/support/v4/view/WindowInsetsCompat;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/view/ViewPager$4;->mTempRect:Landroid/graphics/Rect;

    .line 452
    .local v4, "res":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 453
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 454
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 455
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 457
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, p0, Landroid/support/v4/view/ViewPager$4;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 458
    iget-object v5, p0, Landroid/support/v4/view/ViewPager$4;->this$0:Landroid/support/v4/view/ViewPager;

    .line 459
    invoke-virtual {v5, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/support/v4/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v1

    .line 462
    .local v1, "childInsets":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 464
    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 466
    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 468
    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 457
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 473
    .end local v1    # "childInsets":Landroid/support/v4/view/WindowInsetsCompat;
    :cond_1
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/support/v4/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    goto :goto_0
.end method
