.class public Lcom/loc/ck;
.super Ljava/lang/Object;
.source "HeatElement.java"


.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J


.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/ck;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/loc/ck;->d:J

    iput p4, p0, Lcom/loc/ck;->b:I

    iput-object p5, p0, Lcom/loc/ck;->c:Ljava/lang/String;

    return-void
.end method


.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/ck;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/loc/ck;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "##h=%s, n=%d, t=%d, ex=%s##"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/loc/ck;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/loc/ck;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/loc/ck;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/loc/ck;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
