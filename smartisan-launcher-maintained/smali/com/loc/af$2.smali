.class final Lcom/loc/af$2;
.super Ljava/lang/Object;
.source "Log.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/af;->a(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


.method constructor <init>(Landroid/content/Context;ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/af$2;->a:Landroid/content/Context;

    iput p2, p0, Lcom/loc/af$2;->b:I

    iput-object p3, p0, Lcom/loc/af$2;->c:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/loc/af$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/loc/af$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/af$2;->a:Landroid/content/Context;

    iget v1, p0, Lcom/loc/af$2;->b:I

    invoke-static {v0, v1}, Lcom/loc/af;->a(Landroid/content/Context;I)Lcom/loc/ag;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/loc/af$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/af$2;->c:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/loc/af$2;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/af$2;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/loc/ag;->a(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
