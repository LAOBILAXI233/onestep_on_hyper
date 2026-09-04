.class public abstract Lorg/apache/http/entity/AbstractHttpEntity;
.super Ljava/lang/Object;
.source "AbstractHttpEntity.java"

.implements Lorg/apache/http/HttpEntity;


.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field protected static final OUTPUT_BUFFER_SIZE:I = 0x1000


.field protected chunked:Z

.field protected contentEncoding:Lorg/apache/http/Header;

.field protected contentType:Lorg/apache/http/Header;


.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method


.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    return-void
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentEncoding:Lorg/apache/http/Header;

    return-object v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentType:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/apache/http/entity/AbstractHttpEntity;->chunked:Z

    return v0
.end method

.method public setChunked(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->chunked:Z

    .line 178
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "ceString"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "h":Lorg/apache/http/Header;
    if-eqz p1, :cond_0

    .line 156
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    .end local v0    # "h":Lorg/apache/http/Header;
    const-string v1, "Content-Encoding"

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .restart local v0    # "h":Lorg/apache/http/Header;
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 159
    return-void
.end method

.method public setContentEncoding(Lorg/apache/http/Header;)V
    .locals 0
    .param p1, "contentEncoding"    # Lorg/apache/http/Header;

    .prologue
    .line 142
    iput-object p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentEncoding:Lorg/apache/http/Header;

    .line 143
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "ctString"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "h":Lorg/apache/http/Header;
    if-eqz p1, :cond_0

    .line 127
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    .end local v0    # "h":Lorg/apache/http/Header;
    const-string v1, "Content-Type"

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .restart local v0    # "h":Lorg/apache/http/Header;
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 130
    return-void
.end method

.method public setContentType(Lorg/apache/http/Header;)V
    .locals 0
    .param p1, "contentType"    # Lorg/apache/http/Header;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/apache/http/entity/AbstractHttpEntity;->contentType:Lorg/apache/http/Header;

    .line 114
    return-void
.end method
