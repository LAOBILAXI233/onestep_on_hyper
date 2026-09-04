.class Landroid/support/v4/app/ListFragment$1;
.super Ljava/lang/Object;
.source "ListFragment.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v4/app/ListFragment;


.method constructor <init>(Landroid/support/v4/app/ListFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/ListFragment;

    .prologue
    .line 49
    iput-object p1, p0, Landroid/support/v4/app/ListFragment$1;->this$0:Landroid/support/v4/app/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/app/ListFragment$1;->this$0:Landroid/support/v4/app/ListFragment;

    iget-object v0, v0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/ListFragment$1;->this$0:Landroid/support/v4/app/ListFragment;

    iget-object v1, v1, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 53
    return-void
.end method
