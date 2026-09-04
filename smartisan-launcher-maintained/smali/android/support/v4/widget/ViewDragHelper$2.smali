.class Landroid/support/v4/widget/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v4/widget/ViewDragHelper;


.method constructor <init>(Landroid/support/v4/widget/ViewDragHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/ViewDragHelper;

    .prologue
    .line 335
    iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper$2;->this$0:Landroid/support/v4/widget/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper$2;->this$0:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 339
    return-void
.end method
