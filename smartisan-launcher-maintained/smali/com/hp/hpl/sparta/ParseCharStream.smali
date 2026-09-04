.class Lcom/hp/hpl/sparta/ParseCharStream;
.super Ljava/lang/Object;

.implements Lcom/hp/hpl/sparta/ParseSource;


.field private static final BEGIN_CDATA:[C

.field private static final BEGIN_ETAG:[C

.field private static final CHARREF_BEGIN:[C

.field private static final COMMENT_BEGIN:[C

.field private static final COMMENT_END:[C

.field private static final DEBUG:Z = true

.field private static final DOCTYPE_BEGIN:[C

.field private static final ENCODING:[C

.field private static final END_CDATA:[C

.field private static final END_EMPTYTAG:[C

.field private static final ENTITY_BEGIN:[C

.field public static final HISTORY_LENGTH:I = 0x64

.field private static final H_DEBUG:Z = false

.field private static final IS_NAME_CHAR:[Z

.field private static final MARKUPDECL_BEGIN:[C

.field private static final MAX_COMMON_CHAR:I = 0x80

.field private static final NAME_PUNCT_CHARS:[C

.field private static final NDATA:[C

.field private static final PI_BEGIN:[C

.field private static final PUBLIC:[C

.field private static final QU_END:[C

.field private static final SYSTEM:[C

.field private static final TMP_BUF_SIZE:I = 0xff

.field private static final VERSION:[C

.field private static final VERSIONNUM_PUNC_CHARS:[C

.field private static final XML_BEGIN:[C


.field private final CBUF_SIZE:I

.field private final cbuf_:[C

.field private ch_:I

.field private curPos_:I

.field private docTypeName_:Ljava/lang/String;

.field private final encoding_:Ljava/lang/String;

.field private endPos_:I

.field private final entities_:Ljava/util/Hashtable;

.field private eos_:Z

.field private final handler_:Lcom/hp/hpl/sparta/ParseHandler;

.field private final history_:Lcom/hp/hpl/sparta/CharCircBuffer;

.field private isExternalDtd_:Z

.field private lineNumber_:I

.field private final log_:Lcom/hp/hpl/sparta/ParseLog;

.field private final pes_:Ljava/util/Hashtable;

.field private final reader_:Ljava/io/Reader;

.field private systemId_:Ljava/lang/String;

.field private final tmpBuf_:[C


.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x80

    const/4 v3, 0x4

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->NAME_PUNCT_CHARS:[C

    new-array v0, v4, [Z

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->IS_NAME_CHAR:[Z

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    const-string v0, "<!--"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->COMMENT_BEGIN:[C

    const-string v0, "-->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->COMMENT_END:[C

    const-string v0, "<?"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->PI_BEGIN:[C

    const-string v0, "?>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->QU_END:[C

    const-string v0, "<!DOCTYPE"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->DOCTYPE_BEGIN:[C

    const-string v0, "<?xml"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->XML_BEGIN:[C

    const-string v0, "encoding"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->ENCODING:[C

    const-string v0, "version"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->VERSION:[C

    new-array v0, v3, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->VERSIONNUM_PUNC_CHARS:[C

    const-string v0, "<!"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->MARKUPDECL_BEGIN:[C

    const-string v0, "&#"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->CHARREF_BEGIN:[C

    const-string v0, "<!ENTITY"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->ENTITY_BEGIN:[C

    const-string v0, "NDATA"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->NDATA:[C

    const-string v0, "SYSTEM"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->SYSTEM:[C

    const-string v0, "PUBLIC"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->PUBLIC:[C

    const-string v0, "<![CDATA["

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->BEGIN_CDATA:[C

    const-string v0, "]]>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->END_CDATA:[C

    const-string v0, "/>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->END_EMPTYTAG:[C

    const-string v0, "</"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->BEGIN_ETAG:[C

    return-void

    :cond_0
    sget-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->IS_NAME_CHAR:[Z

    invoke-static {v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isNameChar(C)Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto/16 :goto_0

    :array_0
    .array-data 2
        0x2es
        0x2ds
        0x5fs
        0x3as
    .end array-data

    :array_1
    .array-data 2
        0x5fs
        0x2es
        0x3as
        0x2ds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Lcom/hp/hpl/sparta/EncodingMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;Ljava/io/Reader;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Lcom/hp/hpl/sparta/EncodingMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x400

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->docTypeName_:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->entities_:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->pes_:Ljava/util/Hashtable;

    const/4 v0, -0x2

    iput v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->ch_:I

    iput-boolean v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->isExternalDtd_:Z

    iput v6, p0, Lcom/hp/hpl/sparta/ParseCharStream;->CBUF_SIZE:I

    iput v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    iput v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iput-boolean v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->eos_:Z

    const/16 v0, 0xff

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    const/4 v0, -0x1

    iput v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->lineNumber_:I

    iput v5, p0, Lcom/hp/hpl/sparta/ParseCharStream;->lineNumber_:I

    iput-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->history_:Lcom/hp/hpl/sparta/CharCircBuffer;

    if-nez p4, :cond_0

    sget-object p4, Lcom/hp/hpl/sparta/ParseSource;->DEFAULT_LOG:Lcom/hp/hpl/sparta/ParseLog;

    :cond_0
    iput-object p4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    if-nez p5, :cond_3

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->encoding_:Ljava/lang/String;

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->entities_:Ljava/util/Hashtable;

    const-string v2, "lt"

    const-string v3, "<"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->entities_:Ljava/util/Hashtable;

    const-string v2, "gt"

    const-string v3, ">"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->entities_:Ljava/util/Hashtable;

    const-string v2, "amp"

    const-string v3, "&"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->entities_:Ljava/util/Hashtable;

    const-string v2, "apos"

    const-string v3, "\'"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->entities_:Ljava/util/Hashtable;

    const-string v2, "quot"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_4

    iput-object p3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iput v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    array-length v0, v0

    iput v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iput-boolean v5, p0, Lcom/hp/hpl/sparta/ParseCharStream;->eos_:Z

    iput-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->reader_:Ljava/io/Reader;

    :goto_1
    iput-object p1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    iput-object p6, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    invoke-interface {v0, p0}, Lcom/hp/hpl/sparta/ParseHandler;->setParseSource(Lcom/hp/hpl/sparta/ParseSource;)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readProlog()V

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    invoke-interface {v0}, Lcom/hp/hpl/sparta/ParseHandler;->startDocument()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readElement()Lcom/hp/hpl/sparta/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->docTypeName_:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->docTypeName_:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "DOCTYPE name \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->docTypeName_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" not same as tag name, \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\" of root element"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isMisc()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->reader_:Ljava/io/Reader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->reader_:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_2
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    invoke-interface {v0}, Lcom/hp/hpl/sparta/ParseHandler;->endDocument()V

    return-void

    :cond_3
    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    iput-object p2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->reader_:Ljava/io/Reader;

    new-array v0, v6, [C

    iput-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf()I

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readMisc()V

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Lcom/hp/hpl/sparta/EncodingMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/hp/hpl/sparta/ParseCharStream;-><init>(Ljava/lang/String;Ljava/io/Reader;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method private fillBuf()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->eos_:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    array-length v2, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iput v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    :cond_1
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->reader_:Ljava/io/Reader;

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iget-object v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    array-length v4, v4

    iget v5, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-gtz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->eos_:Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    move v0, v1

    goto :goto_0
.end method

.method private fillBuf(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->eos_:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    array-length v0, v0

    iget v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    sub-int/2addr v0, v3

    if-ge v0, p1, :cond_2

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    if-lt v3, v4, :cond_3

    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iget v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iput v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    move v1, v0

    :cond_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf()I

    move-result v0

    if-ne v0, v2, :cond_4

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget-object v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v5, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v1, v0

    goto :goto_0
.end method

.method private isCdSect()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->BEGIN_CDATA:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private final isChar(C)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "unexpected end of expression."

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isChar(CC)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    iget v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    aget-char v1, v1, v2

    if-eq v1, p1, :cond_2

    if-ne v1, p2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final isChar(CCCC)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    iget v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    aget-char v1, v1, v2

    if-eq v1, p1, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, p3, :cond_2

    if-ne v1, p4, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final isComment()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->COMMENT_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private isDeclSep()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isPeReference()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDocTypeDecl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->DOCTYPE_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private isETag()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->BEGIN_ETAG:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private isEncodingDecl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->ENCODING:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private isEntityDecl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->ENTITY_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private final isEntityValue()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(CC)Z

    move-result v0

    return v0
.end method

.method private static isExtender(C)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb7 -> :sswitch_0
        0x2d0 -> :sswitch_0
        0x2d1 -> :sswitch_0
        0x387 -> :sswitch_0
        0x640 -> :sswitch_0
        0xe46 -> :sswitch_0
        0xec6 -> :sswitch_0
        0x3005 -> :sswitch_0
        0x3031 -> :sswitch_0
        0x3032 -> :sswitch_0
        0x3033 -> :sswitch_0
        0x3034 -> :sswitch_0
        0x3035 -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
        0x30fc -> :sswitch_0
        0x30fd -> :sswitch_0
        0x30fe -> :sswitch_0
    .end sparse-switch
.end method

.method private isExternalId()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->SYSTEM:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->PUBLIC:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isIn(C[C)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    :goto_1
    return v1

    :cond_0
    aget-char v2, p1, v0

    if-ne p0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isLetter(C)Z
    .locals 2

    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMisc()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isComment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isPi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNameChar()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->peekChar()C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->IS_NAME_CHAR:[Z

    aget-boolean v0, v1, v0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isNameChar(C)Z

    move-result v0

    goto :goto_0
.end method

.method private static isNameChar(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->NAME_PUNCT_CHARS:[C

    invoke-static {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isIn(C[C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isExtender(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPeReference()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    return v0
.end method

.method private final isPi()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->PI_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private final isReference()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    return v0
.end method

.method private final isS()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    const/16 v1, 0x9

    const/16 v2, 0xd

    const/16 v3, 0xa

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(CCCC)Z

    move-result v0

    return v0
.end method

.method private final isSymbol([C)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v2, p1

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iget v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_1

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf(I)I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->ch_:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    add-int/lit8 v3, v3, -0x1

    aget-char v1, v1, v3

    iput v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->ch_:I

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iget v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_0

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    aget-char v4, p1, v1

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isVersionNumChar()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x5a

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->peekChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x61

    if-gt v1, v0, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_0
    if-gt v2, v0, :cond_1

    if-le v0, v2, :cond_2

    :cond_1
    sget-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->VERSIONNUM_PUNC_CHARS:[C

    invoke-static {v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->isIn(C[C)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isXmlDecl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->XML_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    return v0
.end method

.method private final peekChar()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "unexpected end of expression."

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    aget-char v0, v0, v1

    return v0
.end method

.method private readAttValue()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(CC)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isReference()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readReference()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private readAttribute(Lcom/hp/hpl/sparta/Element;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEq()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readAttValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " contains attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "more than once"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/hp/hpl/sparta/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readCdSect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget-object v2, Lcom/hp/hpl/sparta/ParseCharStream;->BEGIN_CDATA:[C

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    move v2, v1

    :goto_0
    sget-object v3, Lcom/hp/hpl/sparta/ParseCharStream;->END_CDATA:[C

    invoke-direct {p0, v3}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/hp/hpl/sparta/ParseCharStream;->END_CDATA:[C

    invoke-direct {p0, v3}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    array-length v3, v0

    invoke-interface {v2, v0, v1, v3}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    :goto_1
    return-void

    :cond_0
    const/16 v3, 0xff

    if-lt v2, v3, :cond_3

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_2
    move-object v2, v0

    move v0, v1

    :goto_3
    iget-object v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v5

    aput-char v5, v4, v0

    move-object v0, v2

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-interface {v0, v3, v1, v2}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    goto :goto_1

    :cond_3
    move v6, v2

    move-object v2, v0

    move v0, v6

    goto :goto_3
.end method

.method private final readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "unexpected end of expression."

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->lineNumber_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->lineNumber_:I

    :cond_1
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    aget-char v0, v0, v1

    return v0
.end method

.method private final readChar(CC)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v0

    if-eq v0, p1, :cond_0

    if-eq v0, p2, :cond_0

    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const/4 v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    const/4 v3, 0x1

    aput-char p2, v2, v3

    invoke-direct {v1, p0, v0, v2}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;C[C)V

    throw v1

    :cond_0
    return v0
.end method

.method private final readChar(CCCC)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v0

    if-eq v0, p1, :cond_0

    if-eq v0, p2, :cond_0

    if-eq v0, p3, :cond_0

    if-eq v0, p4, :cond_0

    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const/4 v2, 0x4

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    const/4 v3, 0x1

    aput-char p2, v2, v3

    const/4 v3, 0x2

    aput-char p3, v2, v3

    const/4 v3, 0x3

    aput-char p4, v2, v3

    invoke-direct {v1, p0, v0, v2}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;C[C)V

    throw v1

    :cond_0
    return v0
.end method

.method private final readChar(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    invoke-direct {v1, p0, v0, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;CC)V

    throw v1

    :cond_0
    return-void
.end method

.method private readCharRef()C
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x3b

    const/16 v5, 0x20

    const/16 v1, 0x10

    const/4 v3, 0x0

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->CHARREF_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    const/16 v0, 0xa

    const/16 v2, 0x78

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move v0, v1

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v8}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v8}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-direct {v4, v6, v3, v2}, Ljava/lang/String;-><init>([CII)V

    :try_start_0
    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-char v0, v0

    :goto_1
    return v0

    :cond_1
    iget-object v6, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v7

    aput-char v7, v6, v2

    const/16 v2, 0xff

    if-lt v4, v2, :cond_3

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    const-string v1, "Tmp buffer overflow on readCharRef"

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v5

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\" is not a valid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-ne v0, v1, :cond_2

    const-string v0, "hexadecimal"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v3

    invoke-interface {v2, v0, v1, v3}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v5

    goto :goto_1

    :cond_2
    const-string v0, "decimal"

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method private final readComment()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->COMMENT_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    :goto_0
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->COMMENT_END:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->COMMENT_END:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_0
.end method

.method private readContent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPossibleCharData()V

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isETag()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPossibleCharData()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isReference()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readReference()[C

    move-result-object v2

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isCdSect()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readCdSect()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isPi()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPi()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isComment()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readComment()V

    goto :goto_1

    :cond_5
    const/16 v2, 0x3c

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readElement()Lcom/hp/hpl/sparta/Element;

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private readDeclSep()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isPeReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPeReference()Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    goto :goto_0
.end method

.method private readDocTypeDecl()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x5d

    const/16 v2, 0x5b

    const/16 v1, 0x3e

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->DOCTYPE_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->docTypeName_:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->isExternalDtd_:Z

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readExternalId()Ljava/lang/String;

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :cond_0
    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    :goto_0
    invoke-direct {p0, v3}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isDeclSep()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readDeclSep()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readMarkupDecl()V

    goto :goto_0
.end method

.method private readETag(Lcom/hp/hpl/sparta/Element;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->BEGIN_ETAG:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "end tag ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ") does not match begin tag ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hp/hpl/sparta/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :cond_1
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    return-void
.end method

.method private final readElement()Lcom/hp/hpl/sparta/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/hp/hpl/sparta/Element;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/Element;-><init>()V

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEmptyElementTagOrSTag(Lcom/hp/hpl/sparta/Element;)Z

    move-result v1

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    invoke-interface {v2, v0}, Lcom/hp/hpl/sparta/ParseHandler;->startElement(Lcom/hp/hpl/sparta/Element;)V

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readContent()V

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readETag(Lcom/hp/hpl/sparta/Element;)V

    :cond_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    invoke-interface {v1, v0}, Lcom/hp/hpl/sparta/ParseHandler;->endElement(Lcom/hp/hpl/sparta/Element;)V

    return-object v0
.end method

.method private readEmptyElementTagOrSTag(Lcom/hp/hpl/sparta/Element;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x3e

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hp/hpl/sparta/Element;->setTagName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    :goto_1
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    const/16 v0, 0x2f

    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(CC)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/ParseCharStream;->readAttribute(Lcom/hp/hpl/sparta/Element;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/hp/hpl/sparta/ParseCharStream;->END_EMPTYTAG:[C

    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    goto :goto_1
.end method

.method private readEncodingDecl()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->ENCODING:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEq()V

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(CC)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private readEntityDecl()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x25

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->ENTITY_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isEntityValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEntityValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->pes_:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :cond_0
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readExternalId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isEntityValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEntityValue()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->entities_:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isExternalId()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readExternalId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :cond_5
    sget-object v2, Lcom/hp/hpl/sparta/ParseCharStream;->NDATA:[C

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/hp/hpl/sparta/ParseCharStream;->NDATA:[C

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "expecting double-quote, \"PUBLIC\" or \"SYSTEM\" while reading entity declaration"

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;)V

    throw v0
.end method

.method private readEntityRef()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->entities_:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iget-boolean v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->isExternalDtd_:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; not found -- possibly defined in external DTD)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v4

    invoke-interface {v2, v1, v3, v4}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No declaration of &"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v4

    invoke-interface {v2, v1, v3, v4}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final readEntityValue()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(CC)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isPeReference()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPeReference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isReference()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readReference()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private final readEq()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :cond_0
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :cond_1
    return-void
.end method

.method private readExternalId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->SYSTEM:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->SYSTEM:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSystemLiteral()V

    const-string v0, "(WARNING: external ID not read)"

    return-object v0

    :cond_0
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->PUBLIC:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->PUBLIC:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPubidLiteral()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "expecting \"SYSTEM\" or \"PUBLIC\" while reading external ID"

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;)V

    throw v0
.end method

.method private readMarkupDecl()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x3e

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isPi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPi()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isComment()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readComment()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isEntityDecl()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEntityDecl()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->MARKUPDECL_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(CC)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "expecting processing instruction, comment, or \"<!\""

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;)V

    throw v0
.end method

.method private readMisc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isComment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readComment()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isPi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readPi()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "expecting comment or processing instruction or space"

    invoke-direct {v0, p0, v1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;)V

    throw v0
.end method

.method private final readName()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readNameStartChar()C

    move-result v4

    aput-char v4, v3, v1

    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isNameChar()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Lcom/hp/hpl/sparta/Sparta;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/16 v3, 0xff

    if-lt v2, v3, :cond_3

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_2
    move-object v2, v0

    move v0, v1

    :goto_3
    iget-object v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v5

    aput-char v5, v4, v0

    move-object v0, v2

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v6, v2

    move-object v2, v0

    move v0, v6

    goto :goto_3
.end method

.method private readNameStartChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v0

    invoke-static {v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/hp/hpl/sparta/ParseException;

    const-string v2, "letter, underscore, colon"

    invoke-direct {v1, p0, v0, v2}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;CLjava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method private readPeReference()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->pes_:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No declaration of %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->getLineNumber()I

    move-result v4

    invoke-interface {v2, v1, v3, v4}, Lcom/hp/hpl/sparta/ParseLog;->warning(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    return-object v0
.end method

.method private final readPi()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->PI_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    :goto_0
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->QU_END:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->QU_END:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_0
.end method

.method private readPossibleCharData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0xff

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    :goto_0
    const/16 v2, 0x3c

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x26

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/hp/hpl/sparta/ParseCharStream;->END_CDATA:[C

    invoke-direct {p0, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-interface {v2, v3, v1, v0}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v3

    aput-char v3, v2, v0

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    aget-char v2, v2, v0

    const/16 v3, 0xd

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->peekChar()C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v3

    aput-char v3, v2, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->handler_:Lcom/hp/hpl/sparta/ParseHandler;

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->tmpBuf_:[C

    invoke-interface {v0, v2, v1, v4}, Lcom/hp/hpl/sparta/ParseHandler;->characters([CII)V

    move v0, v1

    goto :goto_0
.end method

.method private readProlog()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Lcom/hp/hpl/sparta/EncodingMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isXmlDecl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readXmlDecl()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isMisc()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isDocTypeDecl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readDocTypeDecl()V

    :goto_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isMisc()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readMisc()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readMisc()V

    goto :goto_1
.end method

.method private final readPubidLiteral()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSystemLiteral()V

    return-void
.end method

.method private final readReference()[C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->CHARREF_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readCharRef()C

    move-result v2

    aput-char v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEntityRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method private final readS()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x20

    const/16 v3, 0xd

    const/16 v2, 0xa

    const/16 v1, 0x9

    invoke-direct {p0, v4, v1, v3, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(CCCC)C

    :goto_0
    invoke-direct {p0, v4, v1, v3, v2}, Lcom/hp/hpl/sparta/ParseCharStream;->isChar(CCCC)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_0
.end method

.method private final readSymbol([C)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    array-length v1, p1

    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iget v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->fillBuf(I)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->ch_:I

    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "end of XML file"

    invoke-direct {v0, p0, v1, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;[C)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    add-int/lit8 v2, v2, -0x1

    aget-char v0, v0, v2

    iput v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->ch_:I

    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->endPos_:I

    iget v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    const-string v1, "end of XML file"

    invoke-direct {v0, p0, v1, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;[C)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aget-char v3, p1, v0

    if-eq v2, v3, :cond_3

    new-instance v0, Lcom/hp/hpl/sparta/ParseException;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->cbuf_:[C

    iget v4, p0, Lcom/hp/hpl/sparta/ParseCharStream;->curPos_:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, p0, v2, p1}, Lcom/hp/hpl/sparta/ParseException;-><init>(Lcom/hp/hpl/sparta/ParseCharStream;Ljava/lang/String;[C)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final readSystemLiteral()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->peekChar()C

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_0
.end method

.method private readVersionInfo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->VERSION:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEq()V

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(CC)C

    move-result v0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readVersionNum()V

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar(C)V

    return-void
.end method

.method private readVersionNum()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    :goto_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isVersionNumChar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    goto :goto_0
.end method

.method private readXmlDecl()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;,
            Lcom/hp/hpl/sparta/EncodingMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->XML_BEGIN:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readVersionInfo()V

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readS()V

    :cond_0
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->isEncodingDecl()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readEncodingDecl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/hpl/sparta/ParseCharStream;->encoding_:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->encoding_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/hp/hpl/sparta/EncodingMismatchException;

    iget-object v2, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    iget-object v3, p0, Lcom/hp/hpl/sparta/ParseCharStream;->encoding_:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/hp/hpl/sparta/EncodingMismatchException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0}, Lcom/hp/hpl/sparta/ParseCharStream;->readChar()C

    :cond_2
    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->QU_END:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->isSymbol([C)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hp/hpl/sparta/ParseCharStream;->QU_END:[C

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/ParseCharStream;->readSymbol([C)V

    return-void
.end method


.method final getHistory()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method getLastCharRead()I
    .locals 1

    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->ch_:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->lineNumber_:I

    return v0
.end method

.method getLog()Lcom/hp/hpl/sparta/ParseLog;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->log_:Lcom/hp/hpl/sparta/ParseLog;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/ParseCharStream;->systemId_:Ljava/lang/String;

    return-object v0
.end method
