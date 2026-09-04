.class Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow;


.method constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1294
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1295
    return-void
.end method


.method public onChanged()V
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 1303
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 1308
    return-void
.end method
