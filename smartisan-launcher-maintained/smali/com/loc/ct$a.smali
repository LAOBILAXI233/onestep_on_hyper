.class Lcom/loc/ct$a;
.super Ljava/lang/Object;
.source "AuthUtil.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/ct$a;->a:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/ct$a;->b:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/ct$a;->c:Ljava/lang/String;

    return-void
.end method
