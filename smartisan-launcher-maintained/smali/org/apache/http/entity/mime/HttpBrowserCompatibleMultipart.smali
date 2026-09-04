.class Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;
.super Lorg/apache/http/entity/mime/AbstractMultipartForm;
.source "HttpBrowserCompatibleMultipart.java"


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
    .line 50
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/entity/mime/FormBodyPart;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/mime/AbstractMultipartForm;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 51
    iput-object p4, p0, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;->parts:Ljava/util/List;

    .line 52
    return-void
.end method


.method protected formatMultipartHeader(Lorg/apache/http/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "part"    # Lorg/apache/http/entity/mime/FormBodyPart;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lorg/apache/http/entity/mime/FormBodyPart;->getHeader()Lorg/apache/http/entity/mime/Header;

    move-result-object v3

    .line 69
    .local v3, "header":Lorg/apache/http/entity/mime/Header;
    const-string v4, "Content-Disposition"

    invoke-virtual {v3, v4}, Lorg/apache/http/entity/mime/Header;->getField(Ljava/lang/String;)Lorg/apache/http/entity/mime/MinimalField;

    move-result-object v0

    .line 70
    .local v0, "cd":Lorg/apache/http/entity/mime/MinimalField;
    iget-object v4, p0, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v4, p2}, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;->writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 71
    invoke-virtual {p1}, Lorg/apache/http/entity/mime/FormBodyPart;->getBody()Lorg/apache/http/entity/mime/content/ContentBody;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "filename":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 73
    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lorg/apache/http/entity/mime/Header;->getField(Ljava/lang/String;)Lorg/apache/http/entity/mime/MinimalField;

    move-result-object v1

    .line 74
    .local v1, "ct":Lorg/apache/http/entity/mime/MinimalField;
    iget-object v4, p0, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v4, p2}, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;->writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 77
    .end local v1    # "ct":Lorg/apache/http/entity/mime/MinimalField;
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
    .line 56
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;->parts:Ljava/util/List;

    return-object v0
.end method
