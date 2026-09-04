.class Landroid/support/v7/widget/ActivityChooserView$3;
.super Landroid/support/v7/widget/ForwardingListener;
.source "ActivityChooserView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserView;


.method constructor <init>(Landroid/support/v7/widget/ActivityChooserView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/ActivityChooserView;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 241
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


.method public getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->showPopup()Z

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    .line 256
    const/4 v0, 0x1

    return v0
.end method
