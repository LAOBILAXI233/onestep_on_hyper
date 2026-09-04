.class Lcom/loc/bw$1;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"

.implements Landroid/content/ServiceConnection;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/bw;->a(Lcom/loc/bw$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic a:Lcom/loc/bw$a;

.field final synthetic b:Lcom/loc/bw;


.method constructor <init>(Lcom/loc/bw;Lcom/loc/bw$a;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bw$1;->b:Lcom/loc/bw;

    iput-object p2, p0, Lcom/loc/bw$1;->a:Lcom/loc/bw$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/bw$1;->b:Lcom/loc/bw;

    invoke-static {p2}, Lcom/loc/k$a;->a(Landroid/os/IBinder;)Lcom/loc/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/bw;->a(Lcom/loc/bw;Lcom/loc/k;)Lcom/loc/k;

    iget-object v0, p0, Lcom/loc/bw$1;->a:Lcom/loc/bw$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/loc/bw$a;->a(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/bw$1;->b:Lcom/loc/bw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/bw;->a(Lcom/loc/bw;Lcom/loc/k;)Lcom/loc/k;

    return-void
.end method
