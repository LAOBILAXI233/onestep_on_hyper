.class Lcom/loc/a$1;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic a:Lcom/loc/a;


.method constructor <init>(Lcom/loc/a;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/a$1;->a:Lcom/loc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/loc/a$1;->a:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->i(Lcom/loc/a;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
