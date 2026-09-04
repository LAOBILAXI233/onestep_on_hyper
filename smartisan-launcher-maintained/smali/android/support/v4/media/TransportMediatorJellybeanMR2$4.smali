.class Landroid/support/v4/media/TransportMediatorJellybeanMR2$4;
.super Ljava/lang/Object;
.source "TransportMediatorJellybeanMR2.java"

.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/TransportMediatorJellybeanMR2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;


.method constructor <init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    .prologue
    .line 70
    iput-object p1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$4;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$4;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    iget-object v0, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTransportCallback:Landroid/support/v4/media/TransportMediatorCallback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/TransportMediatorCallback;->handleAudioFocusChange(I)V

    .line 74
    return-void
.end method
