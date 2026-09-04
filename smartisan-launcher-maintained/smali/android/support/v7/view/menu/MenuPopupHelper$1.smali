.class Landroid/support/v7/view/menu/MenuPopupHelper$1;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

.implements Landroid/widget/PopupWindow$OnDismissListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v7/view/menu/MenuPopupHelper;


.method constructor <init>(Landroid/support/v7/view/menu/MenuPopupHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/view/menu/MenuPopupHelper;

    .prologue
    .line 330
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuPopupHelper$1;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onDismiss()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper$1;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->onDismiss()V

    .line 334
    return-void
.end method
