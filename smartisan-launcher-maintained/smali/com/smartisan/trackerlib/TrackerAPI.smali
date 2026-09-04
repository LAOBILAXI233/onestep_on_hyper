.class public interface abstract Lcom/smartisan/trackerlib/TrackerAPI;
.super Ljava/lang/Object;
.source "TrackerAPI.java"


.method public abstract flush()V
.end method

.method public abstract init(Landroid/app/Application;)V
.end method

.method public abstract onEvent(Ljava/lang/String;)V
.end method

.method public abstract onEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onLaunch()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onNewUser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
