.class Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;


.method constructor <init>(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .prologue
    .line 2061
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 2063
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->peekDrawer()V

    .line 2064
    return-void
.end method
