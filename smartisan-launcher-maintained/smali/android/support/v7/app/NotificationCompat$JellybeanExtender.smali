.class Landroid/support/v7/app/NotificationCompat$JellybeanExtender;
.super Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.source "NotificationCompat.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanExtender"
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    .line 159
    return-void
.end method


.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
    .locals 1
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;

    .prologue
    .line 164
    invoke-static {p2, p1}, Landroid/support/v7/app/NotificationCompat;->addMediaStyleToBuilderIcs(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 165
    invoke-interface {p2}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;

    move-result-object v0

    .line 166
    .local v0, "n":Landroid/app/Notification;
    invoke-static {v0, p1}, Landroid/support/v7/app/NotificationCompat;->addBigMediaStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 167
    return-object v0
.end method
