.class public Lcom/smartisanos/home/net/CustomHttpRequest;
.super Ljava/lang/Object;
.source "CustomHttpRequest.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;,
        Lcom/smartisanos/home/net/CustomHttpRequest$FlushOperation;,
        Lcom/smartisanos/home/net/CustomHttpRequest$CloseOperation;,
        Lcom/smartisanos/home/net/CustomHttpRequest$Operation;,
        Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;,
        Lcom/smartisanos/home/net/CustomHttpRequest$Base64;,
        Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;,
        Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;
    }
.end annotation


.field private static final BOUNDARY:Ljava/lang/String; = "00content0boundary00"

.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static CONNECTION_FACTORY:Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory; = null

.field public static final CONTENT_TYPE_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field private static final CONTENT_TYPE_MULTIPART:Ljava/lang/String; = "multipart/form-data; boundary=00content0boundary00"

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_DATE:Ljava/lang/String; = "Date"

.field public static final HEADER_ETAG:Ljava/lang/String; = "ETag"

.field public static final HEADER_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HEADER_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEADER_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEADER_PROXY_AUTHORIZATION:Ljava/lang/String; = "Proxy-Authorization"

.field public static final HEADER_REFERER:Ljava/lang/String; = "Referer"

.field public static final HEADER_SERVER:Ljava/lang/String; = "Server"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field public static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field private static TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field private static TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


.field private bufferSize:I

.field private connection:Ljava/net/HttpURLConnection;

.field private form:Z

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPort:I

.field private ignoreCloseExceptions:Z

.field private multipart:Z

.field private output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

.field private progress:Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;

.field private final requestMethod:Ljava/lang/String;

.field private totalSize:J

.field private totalWritten:J

.field private uncompress:Z

.field private final url:Ljava/net/URL;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/smartisanos/home/net/CustomHttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 398
    sget-object v0, Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;->DEFAULT:Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;

    sput-object v0, Lcom/smartisanos/home/net/CustomHttpRequest;->CONNECTION_FACTORY:Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/CharSequence;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1435
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1447
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->ignoreCloseExceptions:Z

    .line 1449
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->uncompress:Z

    .line 1451
    const/16 v1, 0x2000

    iput v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->bufferSize:I

    .line 1453
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->totalSize:J

    .line 1455
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->totalWritten:J

    .line 1461
    sget-object v1, Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;->DEFAULT:Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;

    iput-object v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->progress:Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;

    .line 1473
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    iput-object p2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->requestMethod:Ljava/lang/String;

    .line 1478
    return-void

    .line 1474
    :catch_0
    move-exception v0

    .line 1475
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->ignoreCloseExceptions:Z

    .line 1449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->uncompress:Z

    .line 1451
    const/16 v0, 0x2000

    iput v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->bufferSize:I

    .line 1453
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->totalSize:J

    .line 1455
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->totalWritten:J

    .line 1461
    sget-object v0, Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;->DEFAULT:Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;

    iput-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->progress:Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;

    .line 1489
    iput-object p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->url:Ljava/net/URL;

    .line 1490
    iput-object p2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->requestMethod:Ljava/lang/String;

    .line 1491
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/home/net/CustomHttpRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/net/CustomHttpRequest;

    .prologue
    .line 98
    iget v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->bufferSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/smartisanos/home/net/CustomHttpRequest;)J
    .locals 2
    .param p0, "x0"    # Lcom/smartisanos/home/net/CustomHttpRequest;

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->totalWritten:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/smartisanos/home/net/CustomHttpRequest;J)J
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/net/CustomHttpRequest;
    .param p1, "x1"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->totalWritten:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/smartisanos/home/net/CustomHttpRequest;)J
    .locals 2
    .param p0, "x0"    # Lcom/smartisanos/home/net/CustomHttpRequest;

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/smartisanos/home/net/CustomHttpRequest;)Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/net/CustomHttpRequest;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->progress:Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;

    return-object v0
.end method

.method private static addParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 339
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-static {p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->arrayToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 342
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/lang/Iterable;

    if-eqz v2, :cond_3

    .line 343
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 344
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 345
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    const-string v2, "[]="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 348
    .local v0, "element":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    const-string v2, "&"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 354
    .end local v0    # "element":Ljava/lang/Object;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    const-string v2, "="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    if-eqz p1, :cond_4

    .line 357
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    :cond_4
    return-object p2
.end method

.method private static addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x3f

    const/16 v3, 0x26

    .line 328
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 329
    .local v1, "queryStart":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 330
    .local v0, "lastChar":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 331
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    :cond_0
    :goto_0
    return-object p1

    .line 332
    :cond_1
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    .line 333
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2f

    .line 320
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 321
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    :cond_0
    return-object p1
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 913
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "baseUrl":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 933
    .end local v0    # "baseUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 917
    .restart local v0    # "baseUrl":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 919
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-static {v0, v3}, Lcom/smartisanos/home/net/CustomHttpRequest;->addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 920
    invoke-static {v0, v3}, Lcom/smartisanos/home/net/CustomHttpRequest;->addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 923
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 924
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 925
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/smartisanos/home/net/CustomHttpRequest;->addParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 927
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 928
    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 929
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    check-cast v1, Ljava/util/Map$Entry;

    .line 930
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/smartisanos/home/net/CustomHttpRequest;->addParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 933
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/CharSequence;
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 948
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "baseUrl":Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 968
    .end local v0    # "baseUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 952
    .restart local v0    # "baseUrl":Ljava/lang/String;
    :cond_1
    array-length v3, p1

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 953
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must specify an even number of parameter names/values"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 956
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 958
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-static {v0, v2}, Lcom/smartisanos/home/net/CustomHttpRequest;->addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 959
    invoke-static {v0, v2}, Lcom/smartisanos/home/net/CustomHttpRequest;->addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 961
    const/4 v3, 0x0

    aget-object v3, p1, v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-static {v3, v4, v2}, Lcom/smartisanos/home/net/CustomHttpRequest;->addParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 963
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 964
    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 965
    aget-object v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    invoke-static {v3, v4, v2}, Lcom/smartisanos/home/net/CustomHttpRequest;->addParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 963
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 968
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static arrayToList(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .param p0, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 836
    instance-of v4, p0, [Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 837
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 857
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    return-object v0

    .line 839
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v4, p0, [I

    if-eqz v4, :cond_2

    .line 842
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    array-length v4, p0

    :goto_0
    if-ge v1, v4, :cond_0

    aget v2, p0, v1

    .local v2, "value":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    .end local v2    # "value":I
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v4, p0, [Z

    if-eqz v4, :cond_3

    .line 844
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Z

    array-length v4, p0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-boolean v2, p0, v1

    .local v2, "value":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 845
    .end local v2    # "value":Z
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v4, p0, [J

    if-eqz v4, :cond_4

    .line 846
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    array-length v4, p0

    :goto_2
    if-ge v1, v4, :cond_0

    aget-wide v2, p0, v1

    .local v2, "value":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 847
    .end local v2    # "value":J
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v4, p0, [F

    if-eqz v4, :cond_5

    .line 848
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    array-length v4, p0

    :goto_3
    if-ge v1, v4, :cond_0

    aget v2, p0, v1

    .local v2, "value":F
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 849
    .end local v2    # "value":F
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v4, p0, [D

    if-eqz v4, :cond_6

    .line 850
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    array-length v4, p0

    :goto_4
    if-ge v1, v4, :cond_0

    aget-wide v2, p0, v1

    .local v2, "value":D
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 851
    .end local v2    # "value":D
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    instance-of v4, p0, [S

    if-eqz v4, :cond_7

    .line 852
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [S

    array-length v4, p0

    :goto_5
    if-ge v1, v4, :cond_0

    aget-short v2, p0, v1

    .local v2, "value":S
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 853
    .end local v2    # "value":S
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_7
    instance-of v4, p0, [B

    if-eqz v4, :cond_8

    .line 854
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [B

    array-length v4, p0

    :goto_6
    if-ge v1, v4, :cond_0

    aget-byte v2, p0, v1

    .local v2, "value":B
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 855
    .end local v2    # "value":B
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_8
    instance-of v4, p0, [C

    if-eqz v4, :cond_0

    .line 856
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [C

    array-length v4, p0

    :goto_7
    if-ge v1, v4, :cond_0

    aget-char v2, p0, v1

    .local v2, "value":C
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private createConnection()Ljava/net/HttpURLConnection;
    .locals 5

    .prologue
    .line 1500
    :try_start_0
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->httpProxyHost:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1501
    sget-object v2, Lcom/smartisanos/home/net/CustomHttpRequest;->CONNECTION_FACTORY:Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;

    iget-object v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->url:Ljava/net/URL;

    invoke-direct {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->createProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;->create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1504
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1505
    return-object v0

    .line 1503
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :cond_0
    sget-object v2, Lcom/smartisanos/home/net/CustomHttpRequest;->CONNECTION_FACTORY:Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;

    iget-object v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->url:Ljava/net/URL;

    invoke-interface {v2, v3}, Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;->create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 1506
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 1507
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v2, v1}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method private createProxy()Ljava/net/Proxy;
    .locals 5

    .prologue
    .line 1494
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->httpProxyHost:Ljava/lang/String;

    iget v4, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->httpProxyPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1172
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/smartisanos/home/net/CustomHttpRequest;"
        }
    .end annotation

    .prologue
    .line 1202
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1203
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->delete(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs delete(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1223
    invoke-static {p0, p2}, Lcom/smartisanos/home/net/CustomHttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1224
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->delete(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static delete(Ljava/net/URL;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1183
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static encode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 12
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 877
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .local v10, "parsed":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    move-result v11

    .line 884
    .local v11, "port":I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 888
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 889
    invoke-virtual {v10}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v7

    .line 890
    .local v7, "encoded":Ljava/lang/String;
    const/16 v0, 0x3f

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 891
    .local v9, "paramsStart":I
    if-lez v9, :cond_1

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v9, 0x1

    .line 893
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "+"

    const-string v4, "%2B"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 894
    :cond_1
    return-object v7

    .line 878
    .end local v2    # "host":Ljava/lang/String;
    .end local v7    # "encoded":Ljava/lang/String;
    .end local v9    # "paramsStart":I
    .end local v10    # "parsed":Ljava/net/URL;
    .end local v11    # "port":I
    :catch_0
    move-exception v6

    .line 879
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v0, v6}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 895
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v10    # "parsed":Ljava/net/URL;
    .restart local v11    # "port":I
    :catch_1
    move-exception v6

    .line 896
    .local v6, "e":Ljava/net/URISyntaxException;
    new-instance v8, Ljava/io/IOException;

    const-string v0, "Parsing URI failed"

    invoke-direct {v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 897
    .local v8, "io":Ljava/io/IOException;
    invoke-virtual {v8, v6}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 898
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v0, v8}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static get(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 980
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/smartisanos/home/net/CustomHttpRequest;"
        }
    .end annotation

    .prologue
    .line 1010
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->get(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs get(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1031
    invoke-static {p0, p2}, Lcom/smartisanos/home/net/CustomHttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->get(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static get(Ljava/net/URL;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 991
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 272
    sget-object v4, Lcom/smartisanos/home/net/CustomHttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_0

    .line 273
    const/4 v4, 0x1

    new-array v3, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lcom/smartisanos/home/net/CustomHttpRequest$1;

    invoke-direct {v5}, Lcom/smartisanos/home/net/CustomHttpRequest$1;-><init>()V

    aput-object v5, v3, v4

    .line 288
    .local v3, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 289
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v4, v3, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 290
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    sput-object v4, Lcom/smartisanos/home/net/CustomHttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_0
    sget-object v4, Lcom/smartisanos/home/net/CustomHttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    return-object v4

    .line 291
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Security exception configuring SSL context"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 294
    .local v2, "ioException":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 295
    new-instance v4, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v4, v2}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v4
.end method

.method private static getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/smartisanos/home/net/CustomHttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest$2;

    invoke-direct {v0}, Lcom/smartisanos/home/net/CustomHttpRequest$2;-><init>()V

    sput-object v0, Lcom/smartisanos/home/net/CustomHttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 311
    :cond_0
    sget-object v0, Lcom/smartisanos/home/net/CustomHttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method private static getValidCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 264
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    .end local p0    # "charset":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "charset":Ljava/lang/String;
    :cond_0
    const-string p0, "UTF-8"

    goto :goto_0
.end method

.method public static head(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1236
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static head(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/smartisanos/home/net/CustomHttpRequest;"
        }
    .end annotation

    .prologue
    .line 1266
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1267
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->head(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs head(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1287
    invoke-static {p0, p2}, Lcom/smartisanos/home/net/CustomHttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1288
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->head(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static head(Ljava/net/URL;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1247
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method private incrementTotalSize(J)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 2670
    iget-wide v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->totalSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2671
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->totalSize:J

    .line 2672
    :cond_0
    iget-wide v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->totalSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->totalSize:J

    .line 2673
    return-object p0
.end method

.method public static keepAlive(Z)V
    .locals 2
    .param p0, "keepAlive"    # Z

    .prologue
    .line 1345
    const-string v0, "http.keepAlive"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1346
    return-void
.end method

.method public static maxConnections(I)V
    .locals 2
    .param p0, "maxConnections"    # I

    .prologue
    .line 1356
    const-string v0, "http.maxConnections"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1357
    return-void
.end method

.method public static varargs nonProxyHosts([Ljava/lang/String;)V
    .locals 5
    .param p0, "hosts"    # [Ljava/lang/String;

    .prologue
    .line 1396
    if-eqz p0, :cond_1

    array-length v3, p0

    if-lez v3, :cond_1

    .line 1397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1398
    .local v2, "separated":Ljava/lang/StringBuilder;
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1399
    .local v1, "last":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1400
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1401
    :cond_0
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    const-string v3, "http.nonProxyHosts"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smartisanos/home/net/CustomHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1405
    .end local v0    # "i":I
    .end local v1    # "last":I
    .end local v2    # "separated":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 1404
    :cond_1
    const-string v3, "http.nonProxyHosts"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/smartisanos/home/net/CustomHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public static options(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1300
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static options(Ljava/net/URL;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1311
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1044
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/smartisanos/home/net/CustomHttpRequest;"
        }
    .end annotation

    .prologue
    .line 1074
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->post(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs post(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1095
    invoke-static {p0, p2}, Lcom/smartisanos/home/net/CustomHttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1096
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->post(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static post(Ljava/net/URL;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1055
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static proxyHost(Ljava/lang/String;)V
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 1368
    const-string v0, "http.proxyHost"

    invoke-static {v0, p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1369
    const-string v0, "https.proxyHost"

    invoke-static {v0, p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1370
    return-void
.end method

.method public static proxyPort(I)V
    .locals 2
    .param p0, "port"    # I

    .prologue
    .line 1381
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1382
    .local v0, "portValue":Ljava/lang/String;
    const-string v1, "http.proxyPort"

    invoke-static {v1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1383
    const-string v1, "https.proxyPort"

    invoke-static {v1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1384
    return-void
.end method

.method public static put(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1108
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/smartisanos/home/net/CustomHttpRequest;"
        }
    .end annotation

    .prologue
    .line 1138
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1139
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->put(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs put(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1159
    invoke-static {p0, p2}, Lcom/smartisanos/home/net/CustomHttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->put(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static put(Ljava/net/URL;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1119
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setConnectionFactory(Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;)V
    .locals 1
    .param p0, "connectionFactory"    # Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;

    .prologue
    .line 404
    if-nez p0, :cond_0

    .line 405
    sget-object v0, Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;->DEFAULT:Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;

    sput-object v0, Lcom/smartisanos/home/net/CustomHttpRequest;->CONNECTION_FACTORY:Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;

    .line 408
    :goto_0
    return-void

    .line 407
    :cond_0
    sput-object p0, Lcom/smartisanos/home/net/CustomHttpRequest;->CONNECTION_FACTORY:Lcom/smartisanos/home/net/CustomHttpRequest$ConnectionFactory;

    goto :goto_0
.end method

.method private static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1418
    if-eqz p1, :cond_0

    .line 1419
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest$3;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    .local v0, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/String;>;"
    :goto_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1426
    .end local v0    # "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest$4;

    invoke-direct {v0, p0}, Lcom/smartisanos/home/net/CustomHttpRequest$4;-><init>(Ljava/lang/String;)V

    .restart local v0    # "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static trace(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1323
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace(Ljava/net/URL;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1334
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method


.method public accept(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "accept"    # Ljava/lang/String;

    .prologue
    .line 2591
    const-string v0, "Accept"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptCharset(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "acceptCharset"    # Ljava/lang/String;

    .prologue
    .line 2380
    const-string v0, "Accept-Charset"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptEncoding(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    .prologue
    .line 2360
    const-string v0, "Accept-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptGzipEncoding()Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1

    .prologue
    .line 2370
    const-string v0, "gzip"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->acceptEncoding(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptJson()Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1

    .prologue
    .line 2600
    const-string v0, "application/json"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->accept(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public authorization(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "authorization"    # Ljava/lang/String;

    .prologue
    .line 2462
    const-string v0, "Authorization"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public badRequest()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1627
    const/16 v0, 0x190

    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public basic(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/home/net/CustomHttpRequest$Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->authorization(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public body(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/smartisanos/home/net/CustomHttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1791
    .local p1, "output":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1792
    return-object p0
.end method

.method public body(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/smartisanos/home/net/CustomHttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1805
    .local p1, "output":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/smartisanos/home/net/CustomHttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1806
    return-object p0
.end method

.method public body()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1779
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public body(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1762
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 1764
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 1765
    invoke-static {p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1766
    :catch_0
    move-exception v0

    .line 1767
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public buffer()Ljava/io/BufferedInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1844
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public bufferSize()I
    .locals 1

    .prologue
    .line 1712
    iget v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->bufferSize:I

    return v0
.end method

.method public bufferSize(I)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 1698
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1700
    :cond_0
    iput p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->bufferSize:I

    .line 1701
    return-object p0
.end method

.method public bufferedReader()Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1938
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 3
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1926
    new-instance v0, Ljava/io/BufferedReader;

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->reader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object v0
.end method

.method protected byteStream()Ljava/io/ByteArrayOutputStream;
    .locals 2

    .prologue
    .line 1744
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->contentLength()I

    move-result v0

    .line 1745
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 1746
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1748
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_0
.end method

.method public bytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1827
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 1829
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1833
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 1830
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public cacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2416
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2319
    const-string v0, "Content-Type"

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chunk(I)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1682
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1683
    return-object p0
.end method

.method protected closeOutput()Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2684
    invoke-virtual {p0, v2}, Lcom/smartisanos/home/net/CustomHttpRequest;->progress(Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;)Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 2685
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    if-nez v0, :cond_0

    .line 2698
    :goto_0
    return-object p0

    .line 2687
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->multipart:Z

    if-eqz v0, :cond_1

    .line 2688
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    const-string v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    .line 2689
    :cond_1
    iget-boolean v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_2

    .line 2691
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2697
    :goto_1
    iput-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    goto :goto_0

    .line 2696
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;->close()V

    goto :goto_1

    .line 2692
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected closeOutputQuietly()Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2710
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->closeOutput()Lcom/smartisanos/home/net/CustomHttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2711
    :catch_0
    move-exception v0

    .line 2712
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1559
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->closeOutput()Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 1560
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1561
    :catch_0
    move-exception v0

    .line 1562
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code(Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "output"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1576
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1577
    return-object p0
.end method

.method public connectTimeout(I)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 2054
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2055
    return-object p0
.end method

.method public contentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2389
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()I
    .locals 1

    .prologue
    .line 2560
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->intHeader(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public contentLength(I)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "contentLength"    # I

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 2581
    return-object p0
.end method

.method public contentLength(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "contentLength"    # Ljava/lang/String;

    .prologue
    .line 2570
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->contentLength(I)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public contentType(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 2527
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 4
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 2538
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2539
    const-string v0, "; charset="

    .line 2540
    .local v0, "separator":Ljava/lang/String;
    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v1

    .line 2542
    .end local v0    # "separator":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v1

    goto :goto_0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2551
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 6
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2613
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest$8;

    iget-boolean v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/home/net/CustomHttpRequest$8;-><init>(Lcom/smartisanos/home/net/CustomHttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2626
    invoke-virtual {v0}, Lcom/smartisanos/home/net/CustomHttpRequest$8;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    return-object v0
.end method

.method protected copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 6
    .param p1, "input"    # Ljava/io/Reader;
    .param p2, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2639
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest$9;

    iget-boolean v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/home/net/CustomHttpRequest$9;-><init>(Lcom/smartisanos/home/net/CustomHttpRequest;Ljava/io/Closeable;ZLjava/io/Reader;Ljava/io/Writer;)V

    .line 2652
    invoke-virtual {v0}, Lcom/smartisanos/home/net/CustomHttpRequest$9;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    return-object v0
.end method

.method public created()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1597
    const/16 v0, 0xc9

    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public date()J
    .locals 2

    .prologue
    .line 2407
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public dateHeader(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2137
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->dateHeader(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public dateHeader(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2151
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->closeOutputQuietly()Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 2152
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public disconnect()Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1

    .prologue
    .line 1671
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1672
    return-object p0
.end method

.method public eTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2425
    const-string v0, "ETag"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public expires()J
    .locals 2

    .prologue
    .line 2434
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public followRedirects(Z)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "followRedirects"    # Z

    .prologue
    .line 3256
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 3257
    return-object p0
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3127
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 4
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 3144
    iget-boolean v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->form:Z

    if-nez v3, :cond_3

    move v1, v2

    .line 3145
    .local v1, "first":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3146
    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v3, p3}, Lcom/smartisanos/home/net/CustomHttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 3147
    iput-boolean v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->form:Z

    .line 3149
    :cond_0
    invoke-static {p3}, Lcom/smartisanos/home/net/CustomHttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3151
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->openOutput()Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 3152
    if-nez v1, :cond_1

    .line 3153
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;->write(I)V

    .line 3154
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    .line 3155
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;->write(I)V

    .line 3156
    if-eqz p2, :cond_2

    .line 3157
    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3161
    :cond_2
    return-object p0

    .line 3144
    .end local v1    # "first":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 3158
    .restart local v1    # "first":Z
    :catch_0
    move-exception v0

    .line 3159
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public form(Ljava/util/Map$Entry;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/smartisanos/home/net/CustomHttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3095
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/smartisanos/home/net/CustomHttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3111
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/smartisanos/home/net/CustomHttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/util/Map;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/smartisanos/home/net/CustomHttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3081
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->form(Ljava/util/Map;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/util/Map;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 3
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/smartisanos/home/net/CustomHttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3174
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3175
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3176
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0, v0, p2}, Lcom/smartisanos/home/net/CustomHttpRequest;->form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    goto :goto_0

    .line 3177
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_0
    return-object p0
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 1523
    invoke-direct {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method protected getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x22

    const/4 v6, 0x0

    const/16 v9, 0x3b

    const/4 v8, -0x1

    .line 2278
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move-object v3, v6

    .line 2310
    :cond_1
    :goto_0
    return-object v3

    .line 2281
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2282
    .local v1, "length":I
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    .line 2283
    .local v4, "start":I
    if-eqz v4, :cond_3

    if-ne v4, v1, :cond_4

    :cond_3
    move-object v3, v6

    .line 2284
    goto :goto_0

    .line 2286
    :cond_4
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2287
    .local v0, "end":I
    if-ne v0, v8, :cond_5

    .line 2288
    move v0, v1

    .line 2290
    :cond_5
    :goto_1
    if-ge v4, v0, :cond_7

    .line 2291
    const/16 v7, 0x3d

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2292
    .local v2, "nameEnd":I
    if-eq v2, v8, :cond_6

    if-ge v2, v0, :cond_6

    .line 2293
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2294
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2295
    .local v3, "paramValue":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 2296
    .local v5, "valueLength":I
    if-eqz v5, :cond_6

    .line 2297
    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v10, v6, :cond_1

    add-int/lit8 v6, v5, -0x1

    .line 2298
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v10, v6, :cond_1

    .line 2299
    const/4 v6, 0x1

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2304
    .end local v3    # "paramValue":Ljava/lang/String;
    .end local v5    # "valueLength":I
    :cond_6
    add-int/lit8 v4, v0, 0x1

    .line 2305
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2306
    if-ne v0, v8, :cond_5

    .line 2307
    move v0, v1

    goto :goto_1

    .end local v2    # "nameEnd":I
    :cond_7
    move-object v3, v6

    .line 2310
    goto :goto_0
.end method

.method protected getParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x22

    const/16 v11, 0x3b

    const/4 v10, -0x1

    .line 2232
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 2233
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 2267
    :cond_1
    :goto_0
    return-object v5

    .line 2235
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2236
    .local v1, "headerLength":I
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 2237
    .local v6, "start":I
    if-eqz v6, :cond_3

    if-ne v6, v1, :cond_4

    .line 2238
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    goto :goto_0

    .line 2240
    :cond_4
    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2241
    .local v0, "end":I
    if-ne v0, v10, :cond_5

    .line 2242
    move v0, v1

    .line 2244
    :cond_5
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2245
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :goto_1
    if-ge v6, v0, :cond_1

    .line 2246
    const/16 v8, 0x3d

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2247
    .local v4, "nameEnd":I
    if-eq v4, v10, :cond_7

    if-ge v4, v0, :cond_7

    .line 2248
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2249
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 2250
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2251
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 2252
    .local v2, "length":I
    if-eqz v2, :cond_7

    .line 2253
    const/4 v8, 0x2

    if-le v2, v8, :cond_8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v12, v8, :cond_8

    add-int/lit8 v8, v2, -0x1

    .line 2254
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v12, v8, :cond_8

    .line 2255
    const/4 v8, 0x1

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2261
    .end local v2    # "length":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_7
    :goto_2
    add-int/lit8 v6, v0, 0x1

    .line 2262
    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2263
    if-ne v0, v10, :cond_6

    .line 2264
    move v0, v1

    goto :goto_1

    .line 2257
    .restart local v2    # "length":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_8
    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public header(Ljava/lang/String;Ljava/lang/Number;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .prologue
    .line 2078
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2066
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    return-object p0
.end method

.method public header(Ljava/util/Map$Entry;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/smartisanos/home/net/CustomHttpRequest;"
        }
    .end annotation

    .prologue
    .line 2102
    .local p1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2113
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->closeOutputQuietly()Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 2114
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/util/Map;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/smartisanos/home/net/CustomHttpRequest;"
        }
    .end annotation

    .prologue
    .line 2089
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2090
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2091
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/util/Map$Entry;)Lcom/smartisanos/home/net/CustomHttpRequest;

    goto :goto_0

    .line 2092
    .end local v0    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public headers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2124
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->closeOutputQuietly()Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 2125
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2190
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->headers()Ljava/util/Map;

    move-result-object v0

    .line 2191
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2192
    :cond_0
    sget-object v2, Lcom/smartisanos/home/net/CustomHttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 2198
    :goto_0
    return-object v2

    .line 2194
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2195
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2196
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0

    .line 2198
    :cond_2
    sget-object v2, Lcom/smartisanos/home/net/CustomHttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    goto :goto_0
.end method

.method public ifModifiedSince(J)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "ifModifiedSince"    # J

    .prologue
    .line 2506
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 2507
    return-object p0
.end method

.method public ifNoneMatch(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "ifNoneMatch"    # Ljava/lang/String;

    .prologue
    .line 2517
    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public ignoreCloseExceptions(Z)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 1537
    iput-boolean p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->ignoreCloseExceptions:Z

    .line 1538
    return-object p0
.end method

.method public ignoreCloseExceptions()Z
    .locals 1

    .prologue
    .line 1548
    iget-boolean v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->ignoreCloseExceptions:Z

    return v0
.end method

.method public intHeader(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2164
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->intHeader(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public intHeader(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2179
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->closeOutputQuietly()Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 2180
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isBodyEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1817
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->contentLength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 2443
    const-string v0, "Last-Modified"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public location()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2452
    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1658
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->closeOutput()Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 1659
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1660
    :catch_0
    move-exception v0

    .line 1661
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3228
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public noContent()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1607
    const/16 v0, 0xcc

    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notFound()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1637
    const/16 v0, 0x194

    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notModified()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1647
    const/16 v0, 0x130

    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ok()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1587
    const/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected openOutput()Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2723
    iget-object v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    if-eqz v1, :cond_0

    .line 2730
    :goto_0
    return-object p0

    .line 2725
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2727
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "charset"

    .line 2726
    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/home/net/CustomHttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2728
    .local v0, "charset":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->bufferSize:I

    invoke-direct {v1, v2, v0, v3}, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    goto :goto_0
.end method

.method public parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;

    .prologue
    .line 2209
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/smartisanos/home/net/CustomHttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2222
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/io/File;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2869
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/smartisanos/home/net/CustomHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/io/InputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2919
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/smartisanos/home/net/CustomHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/Number;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2842
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/smartisanos/home/net/CustomHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/lang/String;

    .prologue
    .line 2792
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/smartisanos/home/net/CustomHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "part"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2883
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/smartisanos/home/net/CustomHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "part"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2856
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "part"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2806
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/smartisanos/home/net/CustomHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2901
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2902
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/smartisanos/home/net/CustomHttpRequest;->incrementTotalSize(J)Lcom/smartisanos/home/net/CustomHttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2906
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v2

    return-object v2

    .line 2903
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 2904
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2937
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->startPart()Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 2938
    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/home/net/CustomHttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 2939
    iget-object v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    invoke-virtual {p0, p4, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2943
    return-object p0

    .line 2940
    :catch_0
    move-exception v0

    .line 2941
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2823
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->startPart()Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 2824
    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/home/net/CustomHttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 2825
    iget-object v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    invoke-virtual {v1, p4}, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2829
    return-object p0

    .line 2826
    :catch_0
    move-exception v0

    .line 2827
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2956
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->send(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->send(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smartisanos/home/net/CustomHttpRequest;->send(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->send(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public progress(Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "callback"    # Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;

    .prologue
    .line 2662
    if-nez p1, :cond_0

    .line 2663
    sget-object v0, Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;->DEFAULT:Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;

    iput-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->progress:Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;

    .line 2666
    :goto_0
    return-object p0

    .line 2665
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->progress:Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;

    goto :goto_0
.end method

.method public proxyAuthorization(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "proxyAuthorization"    # Ljava/lang/String;

    .prologue
    .line 2472
    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public proxyBasic(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/home/net/CustomHttpRequest$Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->proxyAuthorization(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public readTimeout(I)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 2043
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2044
    return-object p0
.end method

.method public reader()Ljava/io/InputStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1911
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->reader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Ljava/lang/String;)Ljava/io/InputStreamReader;
    .locals 4
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1897
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1898
    :catch_0
    move-exception v0

    .line 1899
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public receive(Ljava/io/File;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1951
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->bufferSize:I

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    .local v1, "output":Ljava/io/OutputStream;
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$5;

    iget-boolean v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->ignoreCloseExceptions:Z

    invoke-direct {v2, p0, v1, v3, v1}, Lcom/smartisanos/home/net/CustomHttpRequest$5;-><init>(Lcom/smartisanos/home/net/CustomHttpRequest;Ljava/io/Closeable;ZLjava/io/OutputStream;)V

    .line 1961
    invoke-virtual {v2}, Lcom/smartisanos/home/net/CustomHttpRequest$5;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/home/net/CustomHttpRequest;

    return-object v2

    .line 1952
    .end local v1    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 1953
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public receive(Ljava/io/OutputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1974
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1975
    :catch_0
    move-exception v0

    .line 1976
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public receive(Ljava/io/PrintStream;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "output"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1989
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->receive(Ljava/io/OutputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public receive(Ljava/io/Writer;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2026
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v2

    .line 2027
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest$7;

    iget-boolean v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/home/net/CustomHttpRequest$7;-><init>(Lcom/smartisanos/home/net/CustomHttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V

    .line 2033
    invoke-virtual {v0}, Lcom/smartisanos/home/net/CustomHttpRequest$7;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    return-object v0
.end method

.method public receive(Ljava/lang/Appendable;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 6
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2001
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v2

    .line 2002
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest$6;

    iget-boolean v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/home/net/CustomHttpRequest$6;-><init>(Lcom/smartisanos/home/net/CustomHttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V

    .line 2015
    invoke-virtual {v0}, Lcom/smartisanos/home/net/CustomHttpRequest$6;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/net/CustomHttpRequest;

    return-object v0
.end method

.method public referer(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "referer"    # Ljava/lang/String;

    .prologue
    .line 2339
    const-string v0, "Referer"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public send(Ljava/io/File;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 4
    .param p1, "input"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2969
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2970
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/smartisanos/home/net/CustomHttpRequest;->incrementTotalSize(J)Lcom/smartisanos/home/net/CustomHttpRequest;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2974
    invoke-virtual {p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->send(Ljava/io/InputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v2

    return-object v2

    .line 2971
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 2972
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public send(Ljava/io/InputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3001
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->openOutput()Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 3002
    iget-object v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3006
    return-object p0

    .line 3003
    :catch_0
    move-exception v0

    .line 3004
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public send(Ljava/io/Reader;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 4
    .param p1, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3020
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->openOutput()Lcom/smartisanos/home/net/CustomHttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3024
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    iget-object v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    .line 3025
    invoke-static {v3}, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;->access$500(Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 3026
    .local v1, "writer":Ljava/io/Writer;
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$10;

    invoke-direct {v2, p0, v1, p1, v1}, Lcom/smartisanos/home/net/CustomHttpRequest$10;-><init>(Lcom/smartisanos/home/net/CustomHttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V

    .line 3032
    invoke-virtual {v2}, Lcom/smartisanos/home/net/CustomHttpRequest$10;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/home/net/CustomHttpRequest;

    return-object v2

    .line 3021
    .end local v1    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 3022
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public send(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 3
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3047
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->openOutput()Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 3048
    iget-object v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3052
    return-object p0

    .line 3049
    :catch_0
    move-exception v0

    .line 3050
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public send([B)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2985
    if-eqz p1, :cond_0

    .line 2986
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->incrementTotalSize(J)Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 2987
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->send(Ljava/io/InputStream;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public server()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2398
    const-string v0, "Server"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serverError()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1617
    const/16 v0, 0x1f4

    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startPart()Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2740
    iget-boolean v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->multipart:Z

    if-nez v0, :cond_0

    .line 2741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->multipart:Z

    .line 2742
    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->contentType(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->openOutput()Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 2743
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    const-string v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    .line 2746
    :goto_0
    return-object p0

    .line 2745
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    const-string v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    goto :goto_0
.end method

.method public stream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1855
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->code()I

    move-result v2

    const/16 v3, 0x190

    if-ge v2, v3, :cond_2

    .line 1857
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1874
    .local v1, "stream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->uncompress:Z

    if-eqz v2, :cond_1

    const-string v2, "gzip"

    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->contentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1878
    .end local v1    # "stream":Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v1

    .line 1858
    :catch_0
    move-exception v0

    .line 1859
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 1862
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1863
    .restart local v1    # "stream":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 1865
    :try_start_1
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1866
    :catch_1
    move-exception v0

    .line 1867
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->contentLength()I

    move-result v2

    if-lez v2, :cond_3

    .line 1868
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 1870
    :cond_3
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .end local v1    # "stream":Ljava/io/InputStream;
    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v1    # "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 1878
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_2
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    goto :goto_1

    .line 1879
    :catch_2
    move-exception v0

    .line 1880
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trustAllCerts()Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3189
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3190
    .local v0, "connection":Ljava/net/HttpURLConnection;
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 3191
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 3192
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    invoke-static {}, Lcom/smartisanos/home/net/CustomHttpRequest;->getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 3193
    :cond_0
    return-object p0
.end method

.method public trustAllHosts()Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2

    .prologue
    .line 3206
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3207
    .local v0, "connection":Ljava/net/HttpURLConnection;
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 3208
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 3209
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    invoke-static {}, Lcom/smartisanos/home/net/CustomHttpRequest;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 3210
    :cond_0
    return-object p0
.end method

.method public uncompress(Z)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 0
    .param p1, "uncompress"    # Z

    .prologue
    .line 1734
    iput-boolean p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->uncompress:Z

    .line 1735
    return-object p0
.end method

.method public url()Ljava/net/URL;
    .locals 1

    .prologue
    .line 3219
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public useCaches(Z)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "useCaches"    # Z

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2350
    return-object p0
.end method

.method public useProxy(Ljava/lang/String;I)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 2
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 3241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection has already been created. This method must be called before reading or writing to the request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3243
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->httpProxyHost:Ljava/lang/String;

    .line 3244
    iput p2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->httpProxyPort:I

    .line 3245
    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 2329
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/home/net/CustomHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2759
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/home/net/CustomHttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2774
    .local v0, "partBuffer":Ljava/lang/StringBuilder;
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2775
    if-eqz p2, :cond_0

    .line 2776
    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2777
    :cond_0
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2778
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/home/net/CustomHttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 2779
    if-eqz p3, :cond_1

    .line 2780
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, p3}, Lcom/smartisanos/home/net/CustomHttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 2781
    :cond_1
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Lcom/smartisanos/home/net/CustomHttpRequest;->send(Ljava/lang/CharSequence;)Lcom/smartisanos/home/net/CustomHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public writer()Ljava/io/OutputStreamWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3063
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest;->openOutput()Lcom/smartisanos/home/net/CustomHttpRequest;

    .line 3064
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    iget-object v3, p0, Lcom/smartisanos/home/net/CustomHttpRequest;->output:Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;

    invoke-static {v3}, Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;->access$500(Lcom/smartisanos/home/net/CustomHttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 3065
    :catch_0
    move-exception v0

    .line 3066
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/smartisanos/home/net/CustomHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
