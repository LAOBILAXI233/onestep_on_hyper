.class public Lorg/apache/http/impl/entity/DisallowIdentityContentLengthStrategy;
.super Ljava/lang/Object;
.source "DisallowIdentityContentLengthStrategy.java"

.implements Lorg/apache/http/entity/ContentLengthStrategy;


.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field public static final INSTANCE:Lorg/apache/http/impl/entity/DisallowIdentityContentLengthStrategy;


.field private final contentLengthStrategy:Lorg/apache/http/entity/ContentLengthStrategy;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lorg/apache/http/impl/entity/DisallowIdentityContentLengthStrategy;

    new-instance v1, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/apache/http/impl/entity/DisallowIdentityContentLengthStrategy;-><init>(Lorg/apache/http/entity/ContentLengthStrategy;)V

    sput-object v0, Lorg/apache/http/impl/entity/DisallowIdentityContentLengthStrategy;->INSTANCE:Lorg/apache/http/impl/entity/DisallowIdentityContentLengthStrategy;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/ContentLengthStrategy;)V
    .locals 0
    .param p1, "contentLengthStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/http/impl/entity/DisallowIdentityContentLengthStrategy;->contentLengthStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    .line 53
    return-void
.end method


.method public determineLength(Lorg/apache/http/HttpMessage;)J
    .locals 4
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v2, p0, Lorg/apache/http/impl/entity/DisallowIdentityContentLengthStrategy;->contentLengthStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    invoke-interface {v2, p1}, Lorg/apache/http/entity/ContentLengthStrategy;->determineLength(Lorg/apache/http/HttpMessage;)J

    move-result-wide v0

    .line 57
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 58
    new-instance v2, Lorg/apache/http/ProtocolException;

    const-string v3, "Identity transfer encoding cannot be used"

    invoke-direct {v2, v3}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_0
    return-wide v0
.end method
