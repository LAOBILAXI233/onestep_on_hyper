.class public Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;
.super Ljava/lang/Object;
.source "DefaultHttpRequestParserFactory.java"

.implements Lorg/apache/http/io/HttpMessageParserFactory;


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/io/HttpMessageParserFactory",
        "<",
        "Lorg/apache/http/HttpRequest;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field public static final INSTANCE:Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;


.field private final lineParser:Lorg/apache/http/message/LineParser;

.field private final requestFactory:Lorg/apache/http/HttpRequestFactory;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;->INSTANCE:Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0, v0}, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;-><init>(Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpRequestFactory;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpRequestFactory;)V
    .locals 0
    .param p1, "lineParser"    # Lorg/apache/http/message/LineParser;
    .param p2, "requestFactory"    # Lorg/apache/http/HttpRequestFactory;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-eqz p1, :cond_0

    .end local p1    # "lineParser":Lorg/apache/http/message/LineParser;
    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;->lineParser:Lorg/apache/http/message/LineParser;

    .line 58
    if-eqz p2, :cond_1

    .end local p2    # "requestFactory":Lorg/apache/http/HttpRequestFactory;
    :goto_1
    iput-object p2, p0, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;->requestFactory:Lorg/apache/http/HttpRequestFactory;

    .line 60
    return-void

    .line 57
    .restart local p1    # "lineParser":Lorg/apache/http/message/LineParser;
    .restart local p2    # "requestFactory":Lorg/apache/http/HttpRequestFactory;
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->INSTANCE:Lorg/apache/http/message/BasicLineParser;

    goto :goto_0

    .line 58
    .end local p1    # "lineParser":Lorg/apache/http/message/LineParser;
    :cond_1
    sget-object p2, Lorg/apache/http/impl/DefaultHttpRequestFactory;->INSTANCE:Lorg/apache/http/impl/DefaultHttpRequestFactory;

    goto :goto_1
.end method


.method public create(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/config/MessageConstraints;)Lorg/apache/http/io/HttpMessageParser;
    .locals 3
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "constraints"    # Lorg/apache/http/config/MessageConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/io/SessionInputBuffer;",
            "Lorg/apache/http/config/MessageConstraints;",
            ")",
            "Lorg/apache/http/io/HttpMessageParser",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lorg/apache/http/impl/io/DefaultHttpRequestParser;

    iget-object v1, p0, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v2, p0, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;->requestFactory:Lorg/apache/http/HttpRequestFactory;

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/apache/http/impl/io/DefaultHttpRequestParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpRequestFactory;Lorg/apache/http/config/MessageConstraints;)V

    return-object v0
.end method
