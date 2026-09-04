.class public Lcom/loc/v;
.super Ljava/lang/Object;
.source "SDKInfo.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/v$a;
    }
.end annotation


.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;


.method private constructor <init>(Lcom/loc/v$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/v;->d:Z

    const-string v0, "standard"

    iput-object v0, p0, Lcom/loc/v;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/v;->f:[Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/v$a;->a(Lcom/loc/v$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/v;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/v$a;->b(Lcom/loc/v$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/v;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/v$a;->c(Lcom/loc/v$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/v;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/v$a;->d(Lcom/loc/v$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/v;->d:Z

    invoke-static {p1}, Lcom/loc/v$a;->e(Lcom/loc/v$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/v;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/v$a;->f(Lcom/loc/v$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/v;->f:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/v$a;Lcom/loc/z;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/v;-><init>(Lcom/loc/v$a;)V

    return-void
.end method


.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/v;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/loc/v;->d:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/v;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/v;->d:Z

    return v0
.end method

.method public f()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/v;->f:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
