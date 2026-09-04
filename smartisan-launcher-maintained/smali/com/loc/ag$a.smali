.class Lcom/loc/ag$a;
.super Ljava/lang/Object;
.source "LogProcessor.java"

.implements Lcom/loc/bl;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


.field final synthetic a:Lcom/loc/ag;

.field private b:Lcom/loc/an;


.method constructor <init>(Lcom/loc/ag;Lcom/loc/an;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ag$a;->a:Lcom/loc/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/loc/ag$a;->b:Lcom/loc/an;

    return-void
.end method


.method public a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/loc/ag$a;->b:Lcom/loc/an;

    iget-object v1, p0, Lcom/loc/ag$a;->a:Lcom/loc/ag;

    invoke-virtual {v1}, Lcom/loc/ag;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/loc/an;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
