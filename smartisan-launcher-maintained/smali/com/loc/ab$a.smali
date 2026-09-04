.class Lcom/loc/ab$a;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

.implements Lcom/loc/br;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


.field private a:Landroid/content/Context;


.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/ab$a;->a:Landroid/content/Context;

    return-void
.end method


.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ab$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/af;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LogNetListener"

    const-string v2, "onNetCompleted"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
