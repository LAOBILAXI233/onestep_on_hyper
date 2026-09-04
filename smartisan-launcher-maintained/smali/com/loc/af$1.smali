.class final Lcom/loc/af$1;
.super Ljava/lang/Object;
.source "Log.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/af;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/loc/v;

.field final synthetic c:Ljava/lang/String;


.method constructor <init>(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/af$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/af$1;->b:Lcom/loc/v;

    iput-object p3, p0, Lcom/loc/af$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/af$1;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/af;->a(Landroid/content/Context;I)Lcom/loc/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/af$1;->b:Lcom/loc/v;

    iget-object v2, p0, Lcom/loc/af$1;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "gpsstatistics"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/loc/af$1;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/loc/ag;->a(Lcom/loc/v;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
