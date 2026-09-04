.class public Lcom/loc/aa;
.super Ljava/lang/Object;
.source "BasicLogHandler.java"


.field protected static a:Lcom/loc/aa;


.field protected b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field protected c:Z


.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aa;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/aa;->a:Lcom/loc/aa;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


.method protected a(Landroid/content/Context;Lcom/loc/v;Z)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/loc/v;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
