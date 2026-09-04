.class Lcom/loc/bf$a;
.super Ljava/lang/Object;
.source "DynamicSDKFile.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "copy"

    iput-object v0, p0, Lcom/loc/bf$a;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/bf$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/loc/bf$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/bf$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/loc/bf$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/loc/bf$a;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/loc/bf$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bf$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/loc/bf$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bf$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/loc/bf$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bf$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/loc/bf$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bf$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/loc/bf$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bf$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/loc/bf$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bf$a;->f:Ljava/lang/String;

    return-object v0
.end method


.method public a(Ljava/lang/String;)Lcom/loc/bf$a;
    .locals 0

    iput-object p1, p0, Lcom/loc/bf$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method a()Lcom/loc/bf;
    .locals 2

    new-instance v0, Lcom/loc/bf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loc/bf;-><init>(Lcom/loc/bf$a;Lcom/loc/bg;)V

    return-object v0
.end method
