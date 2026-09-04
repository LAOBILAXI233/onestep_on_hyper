.class final Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;


.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .locals 0

    .prologue
    .line 1855
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1856
    return-void
.end method


.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1869
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1870
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 1860
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1861
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    .line 1862
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1864
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
