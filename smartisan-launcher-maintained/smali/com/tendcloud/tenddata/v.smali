.class public Lcom/tendcloud/tenddata/v;
.super Ljava/lang/Object;

.implements Landroid/app/Application$ActivityLifecycleCallbacks;


.field private a:Lcom/tendcloud/tenddata/s;


.method public constructor <init>(Lcom/tendcloud/tenddata/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/v;->a:Lcom/tendcloud/tenddata/s;

    return-void
.end method


.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/tendcloud/tenddata/v;->a:Lcom/tendcloud/tenddata/s;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/tendcloud/tenddata/s;->b(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/tendcloud/tenddata/v;->a:Lcom/tendcloud/tenddata/s;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/tendcloud/tenddata/s;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
