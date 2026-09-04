.class Lcom/loc/d$c;
.super Ljava/lang/Thread;
.source "APSServiceCore.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


.field final synthetic a:Lcom/loc/d;


.method constructor <init>(Lcom/loc/d;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    const v0, 0xaaa9

    :try_start_0
    iget-object v1, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    invoke-static {v1}, Lcom/loc/d;->m(Lcom/loc/d;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    invoke-static {v1}, Lcom/loc/d;->n(Lcom/loc/d;)V

    :cond_0
    iget-object v1, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-boolean v1, v1, Lcom/loc/d;->r:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/loc/d;->r:Z

    iget-object v1, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2, v0}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v2, v1, Lcom/loc/d;->q:Ljava/net/ServerSocket;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-boolean v0, v0, Lcom/loc/d;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-object v1, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-object v1, v1, Lcom/loc/d;->q:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/d;->s:Ljava/net/Socket;

    iget-object v0, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-object v1, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-object v1, v1, Lcom/loc/d;->s:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/loc/d;->a(Lcom/loc/d;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "run"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
