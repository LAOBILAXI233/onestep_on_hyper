.class Landroid/support/v7/widget/Toolbar$3;
.super Ljava/lang/Object;
.source "Toolbar.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/Toolbar;->ensureCollapseButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/Toolbar;


.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 1374
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$3;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1377
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$3;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->collapseActionView()V

    .line 1378
    return-void
.end method
