.class Lorg/apache/http/entity/mime/HttpRFC6532Multipart;
.super Lorg/apache/http/entity/mime/AbstractMultipartForm;
.source "HttpRFC6532Multipart.java"


.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/entity/mime/FormBodyPart;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/mime/AbstractMultipartForm;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 52
    iput-object p4, p0, Lorg/apache/http/entity/mime/HttpRFC6532Multipart;->parts:Ljava/util/List;

    .line 53
    return-void
.end method


.method protected formatMultipartHeader(Lorg/apache/http/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "part"    # Lorg/apache/http/entity/mime/FormBodyPart;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Lorg/apache/http/entity/mime/FormBodyPart;->getHeader()Lorg/apache/http/entity/mime/Header;

    move-result-object v1

    .line 67
    .local v1, "header":Lorg/apache/http/entity/mime/Header;
    invoke-virtual {v1}, Lorg/apache/http/entity/mime/Header;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/entity/mime/MinimalField;

    .line 68
    .local v0, "field":Lorg/apache/http/entity/mime/MinimalField;
    sget-object v3, Lorg/apache/http/entity/mime/MIME;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v0, v3, p2}, Lorg/apache/http/entity/mime/HttpRFC6532Multipart;->writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 70
    .end local v0    # "field":Lorg/apache/http/entity/mime/MinimalField;
    :cond_0
    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpRFC6532Multipart;->parts:Ljava/util/List;

    return-object v0
.end method
