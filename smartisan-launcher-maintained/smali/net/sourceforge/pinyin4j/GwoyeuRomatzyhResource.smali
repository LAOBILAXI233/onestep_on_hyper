.class Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource;
.super Ljava/lang/Object;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource$1;,
        Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource$GwoyeuRomatzyhSystemResourceHolder;
    }
.end annotation


.field private pinyinToGwoyeuMappingDoc:Lcom/hp/hpl/sparta/Document;


.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource;->initializeResource()V

    return-void
.end method

.method constructor <init>(Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource$1;)V
    .locals 0

    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource;-><init>()V

    return-void
.end method

.method static getInstance()Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource;
    .locals 1

    sget-object v0, Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource$GwoyeuRomatzyhSystemResourceHolder;->theInstance:Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource;

    return-object v0
.end method

.method private initializeResource()V
    .locals 2

    :try_start_0
    const-string v0, ""

    const-string v1, "/pinyindb/pinyin_gwoyeu_mapping.xml"

    invoke-static {v1}, Lnet/sourceforge/pinyin4j/ResourceHelper;->getResourceInputStream(Ljava/lang/String;)Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hp/hpl/sparta/Parser;->parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/hp/hpl/sparta/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource;->setPinyinToGwoyeuMappingDoc(Lcom/hp/hpl/sparta/Document;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/hp/hpl/sparta/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private setPinyinToGwoyeuMappingDoc(Lcom/hp/hpl/sparta/Document;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource;->pinyinToGwoyeuMappingDoc:Lcom/hp/hpl/sparta/Document;

    return-void
.end method


.method getPinyinToGwoyeuMappingDoc()Lcom/hp/hpl/sparta/Document;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/pinyin4j/GwoyeuRomatzyhResource;->pinyinToGwoyeuMappingDoc:Lcom/hp/hpl/sparta/Document;

    return-object v0
.end method
