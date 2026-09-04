.class Landroid/support/v7/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SearchView.java"

.implements Landroid/view/View$OnFocusChangeListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/SearchView;


.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/SearchView;

    .prologue
    .line 344
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 347
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 350
    :cond_0
    return-void
.end method
