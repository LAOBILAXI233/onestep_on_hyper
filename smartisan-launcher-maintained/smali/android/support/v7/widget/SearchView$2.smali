.class Landroid/support/v7/widget/SearchView$2;
.super Ljava/lang/Object;
.source "SearchView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
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
    .line 196
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$2;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$2;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->updateFocusedState()V

    .line 200
    return-void
.end method
