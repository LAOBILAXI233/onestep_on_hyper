.class public abstract Landroid/support/v4/app/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


.field mBigContentTitle:Ljava/lang/CharSequence;

.field mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1756
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method


.method public addCompatExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1780
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1768
    const/4 v0, 0x0

    .line 1769
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    .line 1770
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1772
    :cond_0
    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1787
    return-void
.end method

.method public setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 1759
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    .line 1760
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1761
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1765
    :cond_0
    return-void
.end method
