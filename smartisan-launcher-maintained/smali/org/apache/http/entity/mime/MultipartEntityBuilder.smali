.class public Lorg/apache/http/entity/mime/MultipartEntityBuilder;
.super Ljava/lang/Object;
.source "MultipartEntityBuilder.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/entity/mime/MultipartEntityBuilder$1;
    }
.end annotation


.field private static final DEFAULT_SUBTYPE:Ljava/lang/String; = "form-data"

.field private static final MULTIPART_CHARS:[C


.field private bodyParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private boundary:Ljava/lang/String;

.field private charset:Ljava/nio/charset/Charset;

.field private mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

.field private subType:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->MULTIPART_CHARS:[C

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "form-data"

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->subType:Ljava/lang/String;

    .line 64
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 65
    iput-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->charset:Ljava/nio/charset/Charset;

    .line 67
    iput-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    .line 75
    return-void
.end method

.method public static create()Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    invoke-direct {v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;-><init>()V

    return-object v0
.end method

.method private generateBoundary()Ljava/lang/String;
    .locals 6

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v0, "buffer":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 175
    .local v3, "rand":Ljava/util/Random;
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1e

    .line 176
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 177
    sget-object v4, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->MULTIPART_CHARS:[C

    sget-object v5, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->MULTIPART_CHARS:[C

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    if-eqz p2, :cond_0

    .line 166
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


.method public addBinaryBody(Ljava/lang/String;Ljava/io/File;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 146
    sget-object v1, Lorg/apache/http/entity/ContentType;->DEFAULT_BINARY:Lorg/apache/http/entity/ContentType;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/File;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/File;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "contentType"    # Lorg/apache/http/entity/ContentType;
    .param p4, "filename"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v0, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 156
    sget-object v0, Lorg/apache/http/entity/ContentType;->DEFAULT_BINARY:Lorg/apache/http/entity/ContentType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "contentType"    # Lorg/apache/http/entity/ContentType;
    .param p4, "filename"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Lorg/apache/http/entity/mime/content/InputStreamBody;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addBinaryBody(Ljava/lang/String;[B)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B

    .prologue
    .line 136
    sget-object v0, Lorg/apache/http/entity/ContentType;->DEFAULT_BINARY:Lorg/apache/http/entity/ContentType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;[BLorg/apache/http/entity/ContentType;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addBinaryBody(Ljava/lang/String;[BLorg/apache/http/entity/ContentType;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "contentType"    # Lorg/apache/http/entity/ContentType;
    .param p4, "filename"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLorg/apache/http/entity/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentBody"    # Lorg/apache/http/entity/mime/content/ContentBody;

    .prologue
    .line 114
    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    const-string v0, "Content body"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    new-instance v0, Lorg/apache/http/entity/mime/FormBodyPart;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addPart(Lorg/apache/http/entity/mime/FormBodyPart;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    return-object v0
.end method

.method addPart(Lorg/apache/http/entity/mime/FormBodyPart;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 1
    .param p1, "bodyPart"    # Lorg/apache/http/entity/mime/FormBodyPart;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 110
    :goto_0
    return-object p0

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    .line 109
    :cond_1
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addTextBody(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 126
    sget-object v0, Lorg/apache/http/entity/ContentType;->DEFAULT_TEXT:Lorg/apache/http/entity/ContentType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addTextBody(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/ContentType;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addTextBody(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/ContentType;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "contentType"    # Lorg/apache/http/entity/ContentType;

    .prologue
    .line 121
    new-instance v0, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v0, p2, p3}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Lorg/apache/http/entity/ContentType;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->buildEntity()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    return-object v0
.end method

.method buildEntity()Lorg/apache/http/entity/mime/MultipartFormEntity;
    .locals 10

    .prologue
    .line 183
    iget-object v6, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->subType:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v5, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->subType:Ljava/lang/String;

    .line 184
    .local v5, "st":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->charset:Ljava/nio/charset/Charset;

    .line 185
    .local v2, "cs":Ljava/nio/charset/Charset;
    iget-object v6, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    .line 186
    .local v0, "b":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    if-eqz v6, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    .local v1, "bps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/entity/mime/FormBodyPart;>;"
    :goto_2
    iget-object v6, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    if-eqz v6, :cond_3

    iget-object v4, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 190
    .local v4, "m":Lorg/apache/http/entity/mime/HttpMultipartMode;
    :goto_3
    sget-object v6, Lorg/apache/http/entity/mime/MultipartEntityBuilder$1;->$SwitchMap$org$apache$http$entity$mime$HttpMultipartMode:[I

    invoke-virtual {v4}, Lorg/apache/http/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 198
    new-instance v3, Lorg/apache/http/entity/mime/HttpStrictMultipart;

    invoke-direct {v3, v5, v2, v0, v1}, Lorg/apache/http/entity/mime/HttpStrictMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    .line 200
    .local v3, "form":Lorg/apache/http/entity/mime/AbstractMultipartForm;
    :goto_4
    new-instance v6, Lorg/apache/http/entity/mime/MultipartFormEntity;

    invoke-direct {p0, v0, v2}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->getTotalLength()J

    move-result-wide v8

    invoke-direct {v6, v3, v7, v8, v9}, Lorg/apache/http/entity/mime/MultipartFormEntity;-><init>(Lorg/apache/http/entity/mime/AbstractMultipartForm;Ljava/lang/String;J)V

    return-object v6

    .line 183
    .end local v0    # "b":Ljava/lang/String;
    .end local v1    # "bps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/entity/mime/FormBodyPart;>;"
    .end local v2    # "cs":Ljava/nio/charset/Charset;
    .end local v3    # "form":Lorg/apache/http/entity/mime/AbstractMultipartForm;
    .end local v4    # "m":Lorg/apache/http/entity/mime/HttpMultipartMode;
    .end local v5    # "st":Ljava/lang/String;
    :cond_0
    const-string v5, "form-data"

    goto :goto_0

    .line 185
    .restart local v2    # "cs":Ljava/nio/charset/Charset;
    .restart local v5    # "st":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 186
    .restart local v0    # "b":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 188
    .restart local v1    # "bps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/entity/mime/FormBodyPart;>;"
    :cond_3
    sget-object v4, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    goto :goto_3

    .line 192
    .restart local v4    # "m":Lorg/apache/http/entity/mime/HttpMultipartMode;
    :pswitch_0
    new-instance v3, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;

    invoke-direct {v3, v5, v2, v0, v1}, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    .line 193
    .restart local v3    # "form":Lorg/apache/http/entity/mime/AbstractMultipartForm;
    goto :goto_4

    .line 195
    .end local v3    # "form":Lorg/apache/http/entity/mime/AbstractMultipartForm;
    :pswitch_1
    new-instance v3, Lorg/apache/http/entity/mime/HttpRFC6532Multipart;

    invoke-direct {v3, v5, v2, v0, v1}, Lorg/apache/http/entity/mime/HttpRFC6532Multipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    .line 196
    .restart local v3    # "form":Lorg/apache/http/entity/mime/AbstractMultipartForm;
    goto :goto_4

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBoundary(Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 0
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->charset:Ljava/nio/charset/Charset;

    .line 99
    return-object p0
.end method

.method public setLaxMode()Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 84
    return-object p0
.end method

.method public setMode(Lorg/apache/http/entity/mime/HttpMultipartMode;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 0
    .param p1, "mode"    # Lorg/apache/http/entity/mime/HttpMultipartMode;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 79
    return-object p0
.end method

.method public setStrictMode()Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 89
    return-object p0
.end method
