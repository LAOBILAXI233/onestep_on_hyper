.class public Lcom/loc/ap;
.super Ljava/lang/Object;
.source "LogInfo.java"


.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I


.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/ap;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/ap;->d:I

    return-void
.end method


.method public a()I
    .locals 1

    iget v0, p0, Lcom/loc/ap;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/loc/ap;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ap;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/ap;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/loc/ap;->d:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ap;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/ap;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/loc/ap;->d:I

    return v0
.end method
