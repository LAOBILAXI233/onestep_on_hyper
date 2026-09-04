.class Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListSelectorHider"
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow;


.method constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1312
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->clearListSelection()V

    .line 1318
    return-void
.end method
