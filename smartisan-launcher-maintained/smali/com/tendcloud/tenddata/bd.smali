.class public final Lcom/tendcloud/tenddata/bd;
.super Ljava/lang/Object;


.field public static final a:Ljava/lang/String; = "GSM"

.field public static final b:Ljava/lang/String; = "CDMA"


.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/bd;->c:Ljava/lang/String;

    iput v1, p0, Lcom/tendcloud/tenddata/bd;->d:I

    iput v1, p0, Lcom/tendcloud/tenddata/bd;->e:I

    return-void
.end method
