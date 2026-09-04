.class Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerLongPress"
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/ForwardingListener;


.method constructor <init>(Landroid/support/v7/widget/ForwardingListener;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;->this$0:Landroid/support/v7/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;->this$0:Landroid/support/v7/widget/ForwardingListener;

    invoke-virtual {v0}, Landroid/support/v7/widget/ForwardingListener;->onLongPress()V

    .line 312
    return-void
.end method
