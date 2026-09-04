.class public Lcom/hp/hpl/sparta/Sparta;
.super Ljava/lang/Object;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/hpl/sparta/Sparta$HashtableCache;,
        Lcom/hp/hpl/sparta/Sparta$CacheFactory;,
        Lcom/hp/hpl/sparta/Sparta$Cache;,
        Lcom/hp/hpl/sparta/Sparta$Internment;
    }
.end annotation


.field private static cacheFactory_:Lcom/hp/hpl/sparta/Sparta$CacheFactory;

.field private static internment_:Lcom/hp/hpl/sparta/Sparta$Internment;


.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hp/hpl/sparta/Sparta$1;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/Sparta$1;-><init>()V

    sput-object v0, Lcom/hp/hpl/sparta/Sparta;->internment_:Lcom/hp/hpl/sparta/Sparta$Internment;

    new-instance v0, Lcom/hp/hpl/sparta/Sparta$2;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/Sparta$2;-><init>()V

    sput-object v0, Lcom/hp/hpl/sparta/Sparta;->cacheFactory_:Lcom/hp/hpl/sparta/Sparta$CacheFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/Sparta;->internment_:Lcom/hp/hpl/sparta/Sparta$Internment;

    invoke-interface {v0, p0}, Lcom/hp/hpl/sparta/Sparta$Internment;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static newCache()Lcom/hp/hpl/sparta/Sparta$Cache;
    .locals 1

    sget-object v0, Lcom/hp/hpl/sparta/Sparta;->cacheFactory_:Lcom/hp/hpl/sparta/Sparta$CacheFactory;

    invoke-interface {v0}, Lcom/hp/hpl/sparta/Sparta$CacheFactory;->create()Lcom/hp/hpl/sparta/Sparta$Cache;

    move-result-object v0

    return-object v0
.end method

.method public static setCacheFactory(Lcom/hp/hpl/sparta/Sparta$CacheFactory;)V
    .locals 0

    sput-object p0, Lcom/hp/hpl/sparta/Sparta;->cacheFactory_:Lcom/hp/hpl/sparta/Sparta$CacheFactory;

    return-void
.end method

.method public static setInternment(Lcom/hp/hpl/sparta/Sparta$Internment;)V
    .locals 0

    sput-object p0, Lcom/hp/hpl/sparta/Sparta;->internment_:Lcom/hp/hpl/sparta/Sparta$Internment;

    return-void
.end method
