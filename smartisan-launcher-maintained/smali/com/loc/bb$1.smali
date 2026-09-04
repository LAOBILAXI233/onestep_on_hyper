.class final Lcom/loc/bb$1;
.super Ljava/lang/Thread;
.source "DynamicClassLoader.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/bb;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/loc/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bb$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/bb$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/bb$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/loc/bb;->b()Lcom/loc/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bb$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bb$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bb$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/loc/bb;->a(Lcom/loc/bb;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DynamicClassLoader"

    const-string v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
