.class Landroid/support/v7/widget/ListPopupWindow$2;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow;


.method constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/ListPopupWindow;

    .prologue
    .line 1128
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$2;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 1132
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$2;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 1133
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1134
    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$2;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 1136
    :cond_0
    return-void
.end method
