.class Lcom/hp/hpl/sparta/Sparta$HashtableCache;
.super Ljava/util/Hashtable;

.implements Lcom/hp/hpl/sparta/Sparta$Cache;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/hpl/sparta/Sparta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashtableCache"
.end annotation


.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hp/hpl/sparta/Sparta$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/Sparta$HashtableCache;-><init>()V

    return-void
.end method
