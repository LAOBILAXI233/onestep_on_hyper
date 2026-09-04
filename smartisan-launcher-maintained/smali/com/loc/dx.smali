.class public Lcom/loc/dx;
.super Ljava/lang/Object;


.field final synthetic a:Lcom/loc/db;


.method constructor <init>(Lcom/loc/db;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dx;->a:Lcom/loc/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/loc/dx;->a:Lcom/loc/db;

    invoke-static {v0}, Lcom/loc/db;->a(Lcom/loc/db;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
