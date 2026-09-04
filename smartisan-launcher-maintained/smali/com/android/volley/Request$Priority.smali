.class public final enum Lcom/android/volley/Request$Priority;
.super Ljava/lang/Enum;
.source "Request.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/volley/Request$Priority;",
        ">;"
    }
.end annotation


.field private static final synthetic ENUM$VALUES:[Lcom/android/volley/Request$Priority;

.field public static final enum HIGH:Lcom/android/volley/Request$Priority;

.field public static final enum IMMEDIATE:Lcom/android/volley/Request$Priority;

.field public static final enum LOW:Lcom/android/volley/Request$Priority;

.field public static final enum NORMAL:Lcom/android/volley/Request$Priority;


.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 441
    new-instance v0, Lcom/android/volley/Request$Priority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/android/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    .line 442
    new-instance v0, Lcom/android/volley/Request$Priority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    .line 443
    new-instance v0, Lcom/android/volley/Request$Priority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/android/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    .line 444
    new-instance v0, Lcom/android/volley/Request$Priority;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/android/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    .line 440
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/volley/Request$Priority;

    sget-object v1, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/volley/Request$Priority;->ENUM$VALUES:[Lcom/android/volley/Request$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/android/volley/Request$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public static values()[Lcom/android/volley/Request$Priority;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/android/volley/Request$Priority;->ENUM$VALUES:[Lcom/android/volley/Request$Priority;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/volley/Request$Priority;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
