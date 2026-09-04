.class public Lcom/loc/y;
.super Ljava/lang/Object;
.source "ConstConfig.java"


.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    const-string v0, "9aj&#k81"

    sput-object v0, Lcom/loc/y;->a:Ljava/lang/String;

    const-string v0, "http://logs.amap.com/ws/log/upload?product=%s&type=%s&platform=%s&channel=%s&sign=%s"

    sput-object v0, Lcom/loc/y;->b:Ljava/lang/String;

    const-string v0, "9aj&#k81"

    sput-object v0, Lcom/loc/y;->a:Ljava/lang/String;

    const-string v0, "http://logs.amap.com/ws/log/upload?product=%s&type=%s&platform=%s&channel=%s&sign=%s"

    sput-object v0, Lcom/loc/y;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
