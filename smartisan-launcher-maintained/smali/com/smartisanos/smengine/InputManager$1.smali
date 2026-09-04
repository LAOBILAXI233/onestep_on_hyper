.class final Lcom/smartisanos/smengine/InputManager$1;
.super Ljava/lang/Object;
.source "InputManager.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 0

    .prologue
    .line 61
    invoke-static {}, Lcom/smartisanos/smengine/InputManager;->unlockTouchAndHardKey()V

    .line 62
    return-void
.end method
