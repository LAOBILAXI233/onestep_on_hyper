.class public Landroid/support/v4/app/NotificationCompatBase;
.super Ljava/lang/Object;
.source "NotificationCompatBase.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;,
        Landroid/support/v4/app/NotificationCompatBase$Action;
    }
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static add(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 0
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentIntent"    # Landroid/app/PendingIntent;
    .param p5, "fullScreenIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 66
    iput-object p5, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 67
    return-object p0
.end method
