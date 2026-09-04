.class Landroid/support/v7/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"

.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorBase()V
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
    .line 413
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$6;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->adjustDropDownSizeAndPosition()V

    .line 417
    return-void
.end method
