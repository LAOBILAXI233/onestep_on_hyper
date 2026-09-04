.class Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPresenterCallback"
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuView;


.method constructor <init>(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    return-void
.end method


.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 779
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 783
    const/4 v0, 0x0

    return v0
.end method
