.class public Lorg/apache/http/entity/mime/HttpMultipart;
.super Lorg/apache/http/entity/mime/AbstractMultipartForm;
.source "HttpMultipart.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/entity/mime/HttpMultipart$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


.field private final mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

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


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "boundary"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 1
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "boundary"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/http/entity/mime/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lorg/apache/http/entity/mime/HttpMultipartMode;)V
    .locals 1
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "boundary"    # Ljava/lang/String;
    .param p4, "mode"    # Lorg/apache/http/entity/mime/HttpMultipartMode;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/mime/AbstractMultipartForm;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 65
    iput-object p4, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    .line 67
    return-void
.end method


.method public addBodyPart(Lorg/apache/http/entity/mime/FormBodyPart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/http/entity/mime/FormBodyPart;

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected formatMultipartHeader(Lorg/apache/http/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "part"    # Lorg/apache/http/entity/mime/FormBodyPart;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Lorg/apache/http/entity/mime/FormBodyPart;->getHeader()Lorg/apache/http/entity/mime/Header;

    move-result-object v4

    .line 95
    .local v4, "header":Lorg/apache/http/entity/mime/Header;
    sget-object v6, Lorg/apache/http/entity/mime/HttpMultipart$1;->$SwitchMap$org$apache$http$entity$mime$HttpMultipartMode:[I

    iget-object v7, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-virtual {v7}, Lorg/apache/http/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 108
    invoke-virtual {v4}, Lorg/apache/http/entity/mime/Header;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/entity/mime/MinimalField;

    .line 109
    .local v2, "field":Lorg/apache/http/entity/mime/MinimalField;
    invoke-static {v2, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 99
    .end local v2    # "field":Lorg/apache/http/entity/mime/MinimalField;
    .end local v5    # "i$":Ljava/util/Iterator;
    :pswitch_0
    const-string v6, "Content-Disposition"

    invoke-virtual {v4, v6}, Lorg/apache/http/entity/mime/Header;->getField(Ljava/lang/String;)Lorg/apache/http/entity/mime/MinimalField;

    move-result-object v0

    .line 100
    .local v0, "cd":Lorg/apache/http/entity/mime/MinimalField;
    iget-object v6, p0, Lorg/apache/http/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v6, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 101
    invoke-virtual {p1}, Lorg/apache/http/entity/mime/FormBodyPart;->getBody()Lorg/apache/http/entity/mime/content/ContentBody;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "filename":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 103
    const-string v6, "Content-Type"

    invoke-virtual {v4, v6}, Lorg/apache/http/entity/mime/Header;->getField(Ljava/lang/String;)Lorg/apache/http/entity/mime/MinimalField;

    move-result-object v1

    .line 104
    .local v1, "ct":Lorg/apache/http/entity/mime/MinimalField;
    iget-object v6, p0, Lorg/apache/http/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v6, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 112
    .end local v0    # "cd":Lorg/apache/http/entity/mime/MinimalField;
    .end local v1    # "ct":Lorg/apache/http/entity/mime/MinimalField;
    .end local v3    # "filename":Ljava/lang/String;
    :cond_0
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
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
    .line 116
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->getBoundary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Lorg/apache/http/entity/mime/HttpMultipartMode;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    return-object v0
.end method

.method public bridge synthetic getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->getSubType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTotalLength()J
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->getTotalLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
