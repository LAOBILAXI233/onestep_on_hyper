.class public final Lorg/apache/http/HttpHost;
.super Ljava/lang/Object;
.source "HttpHost.java"

.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field public static final DEFAULT_SCHEME_NAME:Ljava/lang/String; = "http"

.field private static final serialVersionUID:J = -0x687dd718ea3e061aL


.field protected final address:Ljava/net/InetAddress;

.field protected final hostname:Ljava/lang/String;

.field protected final lcHostname:Ljava/lang/String;

.field protected final port:I

.field protected final schemeName:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "scheme"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "Host name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    .line 82
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    .line 83
    if-eqz p3, :cond_0

    .line 84
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    .line 88
    :goto_0
    iput p2, p0, Lorg/apache/http/HttpHost;->port:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/HttpHost;->address:Ljava/net/InetAddress;

    .line 90
    return-void

    .line 86
    :cond_0
    const-string v0, "http"

    iput-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 159
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "scheme"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-string v0, "Inet address"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, p0, Lorg/apache/http/HttpHost;->address:Ljava/net/InetAddress;

    .line 128
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    .line 130
    if-eqz p3, :cond_0

    .line 131
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    .line 135
    :goto_0
    iput p2, p0, Lorg/apache/http/HttpHost;->port:I

    .line 136
    return-void

    .line 133
    :cond_0
    const-string v0, "http"

    iput-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;)V
    .locals 1
    .param p1, "httphost"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const-string v0, "HTTP host"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    iget-object v0, p1, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    .line 171
    iget-object v0, p1, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    .line 173
    iget v0, p1, Lorg/apache/http/HttpHost;->port:I

    iput v0, p0, Lorg/apache/http/HttpHost;->port:I

    .line 174
    iget-object v0, p1, Lorg/apache/http/HttpHost;->address:Ljava/net/InetAddress;

    iput-object v0, p0, Lorg/apache/http/HttpHost;->address:Ljava/net/InetAddress;

    .line 175
    return-void
.end method


.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    if-ne p0, p1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 263
    :cond_1
    instance-of v3, p1, Lorg/apache/http/HttpHost;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 264
    check-cast v0, Lorg/apache/http/HttpHost;

    .line 265
    .local v0, "that":Lorg/apache/http/HttpHost;
    iget-object v3, p0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/apache/http/HttpHost;->port:I

    iget v4, v0, Lorg/apache/http/HttpHost;->port:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lorg/apache/http/HttpHost;
    :cond_3
    move v1, v2

    .line 269
    goto :goto_0
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/http/HttpHost;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lorg/apache/http/HttpHost;->port:I

    return v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 278
    const/16 v0, 0x11

    .line 279
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 280
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 281
    iget-object v1, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 282
    return v0
.end method

.method public toHostString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 239
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v1, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 226
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
