.class Landroid/support/v7/app/ToolbarActionBar$1;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v7/app/ToolbarActionBar;


.method constructor <init>(Landroid/support/v7/app/ToolbarActionBar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/ToolbarActionBar;

    .prologue
    .line 58
    iput-object p1, p0, Landroid/support/v7/app/ToolbarActionBar$1;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$1;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ToolbarActionBar;->populateOptionsMenu()V

    .line 62
    return-void
.end method
