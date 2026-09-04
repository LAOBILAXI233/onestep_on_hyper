.class Lcom/loc/bv$a;
.super Ljava/lang/Object;
.source "APS.java"

.implements Lcom/loc/bw$a;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


.field final synthetic a:Lcom/loc/bv;


.method constructor <init>(Lcom/loc/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bv$a;->a:Lcom/loc/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/loc/bv$a;->a:Lcom/loc/bv;

    iput p1, v0, Lcom/loc/bv;->e:I

    return-void
.end method
