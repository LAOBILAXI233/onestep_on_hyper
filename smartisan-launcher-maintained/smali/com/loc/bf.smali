.class public Lcom/loc/bf;
.super Ljava/lang/Object;
.source "DynamicSDKFile.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bf$a;
    }
.end annotation


.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


.method private constructor <init>(Lcom/loc/bf$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/loc/bf$a;->a(Lcom/loc/bf$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bf;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/bf$a;->b(Lcom/loc/bf$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bf;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/bf$a;->c(Lcom/loc/bf$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bf;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/bf$a;->d(Lcom/loc/bf$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bf;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/bf$a;->e(Lcom/loc/bf$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bf;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/bf$a;->f(Lcom/loc/bf$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bf;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/bf$a;Lcom/loc/bg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/bf;-><init>(Lcom/loc/bf$a;)V

    return-void
.end method


.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bf;->f:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bf;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bf;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bf;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bf;->f:Ljava/lang/String;

    return-object v0
.end method
