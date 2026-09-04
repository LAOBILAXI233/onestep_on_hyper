.class Landroid/support/v4/app/FragmentManagerImpl$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v4/app/FragmentManagerImpl;


.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/FragmentManagerImpl;

    .prologue
    .line 533
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$1;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$1;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 537
    return-void
.end method
