.class public Lcom/android/volley/NetworkResponse;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


.field public final data:[B

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final notModified:Z

.field public final statusCode:I


.method public constructor <init>(I[BLjava/util/Map;Z)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B
    .param p4, "notModified"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 38
    iput-object p2, p0, Lcom/android/volley/NetworkResponse;->data:[B

    .line 39
    iput-object p3, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 40
    iput-boolean p4, p0, Lcom/android/volley/NetworkResponse;->notModified:Z

    .line 41
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 44
    const/16 v0, 0xc8

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    .line 45
    return-void
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0xc8

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    .line 49
    return-void
.end method
