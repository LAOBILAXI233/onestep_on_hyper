.class Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImplV14.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;


.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    .prologue
    .line 324
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->dispatchTimeChanged()V

    .line 331
    return-void
.end method
