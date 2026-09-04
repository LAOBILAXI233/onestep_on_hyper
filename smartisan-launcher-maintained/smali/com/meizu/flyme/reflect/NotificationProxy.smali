.class public Lcom/meizu/flyme/reflect/NotificationProxy;
.super Lcom/meizu/flyme/reflect/Proxy;
.source "NotificationProxy.java"


.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sField:Ljava/lang/reflect/Field;

.field private static sObject:Ljava/lang/Object;

.field private static sSetCircleProgressBarColor:Ljava/lang/reflect/Method;

.field private static sSetProgressBarStype:Ljava/lang/reflect/Method;

.field private static ssetCircleProgressRimColor:Ljava/lang/reflect/Method;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-class v0, Landroid/app/Notification$Builder;

    sput-object v0, Lcom/meizu/flyme/reflect/NotificationProxy;->sClass:Ljava/lang/Class;

    .line 18
    sput-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sField:Ljava/lang/reflect/Field;

    .line 19
    sput-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sObject:Ljava/lang/Object;

    .line 20
    sput-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sSetProgressBarStype:Ljava/lang/reflect/Method;

    .line 21
    sput-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sSetCircleProgressBarColor:Ljava/lang/reflect/Method;

    .line 22
    sput-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->ssetCircleProgressRimColor:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/meizu/flyme/reflect/Proxy;-><init>()V

    return-void
.end method

.method public static setCircleProgressBarColor(I)V
    .locals 6
    .param p0, "color"    # I

    .prologue
    .line 56
    :try_start_0
    sget-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setCircleProgressBarColor"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sSetCircleProgressBarColor:Ljava/lang/reflect/Method;

    .line 58
    sget-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sSetCircleProgressBarColor:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/meizu/flyme/reflect/NotificationProxy;->sObject:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/meizu/flyme/reflect/NotificationProxy;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ignore":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCircleProgressRimColor(I)V
    .locals 5
    .param p0, "color"    # I

    .prologue
    .line 75
    :try_start_0
    sget-object v0, Lcom/meizu/flyme/reflect/NotificationProxy;->sField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/flyme/reflect/NotificationProxy;->sObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/meizu/flyme/reflect/NotificationProxy;->sField:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "ssetCircleProgressRimColor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/reflect/NotificationProxy;->ssetCircleProgressRimColor:Ljava/lang/reflect/Method;

    .line 77
    sget-object v0, Lcom/meizu/flyme/reflect/NotificationProxy;->ssetCircleProgressRimColor:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sObject:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/reflect/NotificationProxy;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setProgressBarStype(Landroid/app/Notification$Builder;Z)V
    .locals 6
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "isCircle"    # Z

    .prologue
    .line 34
    :try_start_0
    sget-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sClass:Ljava/lang/Class;

    const-string v2, "mFlymeNotificationBuilder"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sField:Ljava/lang/reflect/Field;

    .line 35
    sget-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sObject:Ljava/lang/Object;

    .line 36
    sget-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setCircleProgressBar"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sSetProgressBarStype:Ljava/lang/reflect/Method;

    .line 38
    sget-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 39
    sget-object v1, Lcom/meizu/flyme/reflect/NotificationProxy;->sSetProgressBarStype:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/meizu/flyme/reflect/NotificationProxy;->sObject:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/meizu/flyme/reflect/NotificationProxy;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ignore":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
