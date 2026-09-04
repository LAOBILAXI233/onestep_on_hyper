.class public Lcom/smartisanos/launcher/receiver/DataDumpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataDumpReceiver.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;,
        Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;,
        Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;
    }
.end annotation


.field private static final ALL:Ljava/lang/String; = "all"

.field private static final DATABASE_DUMP:Ljava/lang/String; = "db"

.field private static final FPS_DUMP:Ljava/lang/String; = "fps"

.field private static final INFO_LOG:Ljava/lang/String; = "info_log"

.field private static final LAYER_DUMP:Ljava/lang/String; = "layer"

.field private static final MEMORY_DUMP:Ljava/lang/String; = "memory"

.field public static final MEMORY_DUMP_DIR:Ljava/lang/String; = "/sdcard/smartisan"

.field private static final SCENE_DUMP:Ljava/lang/String; = "scene"

.field private static final UI_DUMP:Ljava/lang/String; = "ui"

.field private static final XML_DUMP:Ljava/lang/String; = "xml"

.field private static log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->createXML()V

    return-void
.end method

.method private static appendDataToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 110
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "rwd"

    invoke-direct {v1, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v1, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 112
    .local v2, "pointer":J
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 114
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v2    # "pointer":J
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private appendDumpInfo(Ljava/lang/String;ILjava/lang/StringBuffer;Z)V
    .locals 7
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "depth"    # I
    .param p3, "buf"    # Ljava/lang/StringBuffer;
    .param p4, "isEnd"    # Z

    .prologue
    .line 470
    const-string v3, "\u251c"

    .line 471
    .local v3, "pipe":Ljava/lang/String;
    const-string v0, "\u2514"

    .line 472
    .local v0, "corner":Ljava/lang/String;
    const-string v4, "\u2500\u2500"

    .line 473
    .local v4, "pointer":Ljava/lang/String;
    const-string v5, "\u00a0\u00a0 "

    .line 474
    .local v5, "space":Ljava/lang/String;
    const-string v2, "|"

    .line 475
    .local v2, "line":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 480
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 481
    const-string v6, ""

    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    :cond_1
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    const-string v6, "\n"

    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    return-void
.end method

.method private static cmdResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 128
    .local v5, "runtime":Ljava/lang/Runtime;
    :try_start_0
    invoke-virtual {v5, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 129
    .local v3, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 130
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 131
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 138
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static convertThreadMode(Ljava/lang/String;)Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;
    .locals 1
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 489
    const-string v0, "main"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->MAIN_THREAD:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    .line 494
    :goto_0
    return-object v0

    .line 491
    :cond_0
    const-string v0, "gl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->GL_THREAD:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    goto :goto_0

    .line 494
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->GL_THREAD:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    goto :goto_0
.end method

.method private static convertToMode(Ljava/lang/String;)Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "m":Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 522
    :goto_0
    return-object v1

    .line 502
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 503
    const-string v1, "all"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->ALL:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    :cond_1
    :goto_1
    move-object v1, v0

    .line 522
    goto :goto_0

    .line 505
    :cond_2
    const-string v1, "db"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->DB:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    goto :goto_1

    .line 507
    :cond_3
    const-string v1, "ui"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 508
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->UI:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    goto :goto_1

    .line 509
    :cond_4
    const-string v1, "layer"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 510
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->LAYER:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    goto :goto_1

    .line 511
    :cond_5
    const-string v1, "memory"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 512
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->MEMORY:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    goto :goto_1

    .line 513
    :cond_6
    const-string v1, "scene"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 514
    sget-object v1, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->SCENE_DUMP:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    goto :goto_0

    .line 515
    :cond_7
    const-string v1, "fps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 516
    sget-object v1, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->FPS:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    goto :goto_0

    .line 517
    :cond_8
    const-string v1, "xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 518
    sget-object v1, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->XML:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    goto :goto_0

    .line 519
    :cond_9
    const-string v1, "info_log"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    sget-object v1, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->INFO_LOG:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    goto :goto_0
.end method

.method private static cp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 526
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, "ffile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    .local v1, "tfile":Ljava/io/File;
    return-void
.end method

.method private static cpFile(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;

    .prologue
    .line 531
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    const/4 v0, 0x0

    .line 539
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    move-object v0, v1

    .line 541
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private createXML()V
    .locals 15

    .prologue
    .line 171
    new-instance v0, Ljava/io/File;

    const-string v13, "/sdcard/smartisan"

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 175
    :cond_0
    const-string v5, "scenedata.xml"

    .line 176
    .local v5, "fileName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/sdcard/smartisan"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 179
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 182
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 183
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 184
    .local v1, "document":Lorg/w3c/dom/Document;
    const-string v13, "scene"

    invoke-interface {v1, v13}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 185
    .local v9, "root":Lorg/w3c/dom/Element;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v13

    invoke-virtual {v13, v9, v1}, Lcom/smartisanos/launcher/view/MainView;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 186
    invoke-interface {v1, v9}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 187
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 188
    .local v7, "fos":Ljava/io/FileOutputStream;
    new-instance v10, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v10, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 189
    .local v10, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v8, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v8, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 190
    .local v8, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v12

    .line 191
    .local v12, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v12}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v11

    .line 192
    .local v11, "transformer":Ljavax/xml/transform/Transformer;
    invoke-virtual {v11, v10, v8}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 193
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 205
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v9    # "root":Lorg/w3c/dom/Element;
    .end local v10    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v11    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v12    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .line 197
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 199
    .local v2, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v2    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_3
    move-exception v2

    .line 201
    .local v2, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v2    # "e":Ljavax/xml/transform/TransformerException;
    :catch_4
    move-exception v2

    .line 203
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static dumpMemoryAndCpu()V
    .locals 22

    .prologue
    .line 71
    new-instance v5, Ljava/io/File;

    const-string v20, "/sdcard/smartisan"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_0

    .line 73
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 75
    :cond_0
    const-string v8, "cpu_memory_dump"

    .line 76
    .local v8, "fileName":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/sdcard/smartisan"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_1

    .line 80
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 86
    .local v2, "calendar":Ljava/util/Calendar;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 87
    .local v19, "year":I
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 88
    .local v15, "month":I
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 89
    .local v4, "day":I
    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 90
    .local v10, "hour":I
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 91
    .local v14, "min":I
    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 92
    .local v16, "second":I
    const/16 v20, 0xe

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 93
    .local v13, "mill":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v15, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 94
    .local v17, "time":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "##### "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 95
    .local v18, "title":Ljava/lang/String;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v3, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "dumpsys cpuinfo"

    aput-object v21, v3, v20

    const/16 v20, 0x1

    const-string v21, "dumpsys meminfo"

    aput-object v21, v3, v20

    const/16 v20, 0x2

    const-string v21, "dumpsys meminfo com.smartisanos.launcher"

    aput-object v21, v3, v20

    .line 100
    .local v3, "cmds":[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v12, "infoBuffer":Ljava/lang/StringBuffer;
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_2

    .line 103
    aget-object v20, v3, v11

    invoke-static/range {v20 .. v20}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->cmdResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 81
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "cmds":[Ljava/lang/String;
    .end local v4    # "day":I
    .end local v10    # "hour":I
    .end local v11    # "i":I
    .end local v12    # "infoBuffer":Ljava/lang/StringBuffer;
    .end local v13    # "mill":I
    .end local v14    # "min":I
    .end local v15    # "month":I
    .end local v16    # "second":I
    .end local v17    # "time":Ljava/lang/String;
    .end local v18    # "title":Ljava/lang/String;
    .end local v19    # "year":I
    :catch_0
    move-exception v6

    .line 82
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 105
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v3    # "cmds":[Ljava/lang/String;
    .restart local v4    # "day":I
    .restart local v10    # "hour":I
    .restart local v11    # "i":I
    .restart local v12    # "infoBuffer":Ljava/lang/StringBuffer;
    .restart local v13    # "mill":I
    .restart local v14    # "min":I
    .restart local v15    # "month":I
    .restart local v16    # "second":I
    .restart local v17    # "time":Ljava/lang/String;
    .restart local v18    # "title":Ljava/lang/String;
    .restart local v19    # "year":I
    :cond_2
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v9, v0}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->appendDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const-string v14, "launcher.dumpsurfaceview"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 213
    const-string v14, "cgh"

    const-string v15, "### got com.smartisanos.launcher.surfaceview"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :try_start_0
    const-class v2, Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    .line 217
    .local v2, "clazz":Ljava/lang/Class;
    const-string v14, "dumpSurfaceView"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 219
    .local v7, "method":Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisanos/home/Launcher;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_2
    :goto_1
    const-string v14, "pageIndex"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 228
    .local v9, "pageIndex":I
    const/4 v14, -0x1

    if-eq v9, v14, :cond_3

    .line 229
    new-instance v14, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$1;

    const/16 v15, 0x64

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15, v9}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$1;-><init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;II)V

    const/4 v15, 0x0

    .line 243
    invoke-virtual {v14, v15}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$1;->send(F)V

    .line 246
    :cond_3
    const/4 v13, 0x1

    .line 247
    .local v13, "verify":Z
    if-eqz v13, :cond_4

    .line 248
    const-string v14, "code"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 249
    .local v8, "mode":Ljava/lang/String;
    const-string v6, "OREO"

    .line 250
    .local v6, "magicCode":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_0

    .line 253
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 256
    invoke-static {}, Lcom/smartisanos/launcher/LOG;->openLog()V

    .line 258
    .end local v6    # "magicCode":Ljava/lang/String;
    .end local v8    # "mode":Ljava/lang/String;
    :cond_4
    const-string v14, "mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "m":Ljava/lang/String;
    invoke-static {v5}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->convertToMode(Ljava/lang/String;)Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    move-result-object v8

    .line 260
    .local v8, "mode":Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;
    if-eqz v8, :cond_0

    .line 264
    sget-object v11, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->GL_THREAD:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    .line 265
    .local v11, "threadMode":Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;
    const-string v14, "thread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 266
    .local v10, "thread":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 267
    invoke-static {v10}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->convertThreadMode(Ljava/lang/String;)Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    move-result-object v11

    .line 270
    :cond_5
    const-string v14, "value"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 271
    .local v12, "value":I
    sget-boolean v14, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v14, :cond_6

    sget-object v14, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v15, "data dump begin !"

    invoke-virtual {v14, v15}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 272
    :cond_6
    const/4 v4, 0x0

    .line 273
    .local v4, "isAll":Z
    sget-object v14, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$5;->$SwitchMap$com$smartisanos$launcher$receiver$DataDumpReceiver$MODE:[I

    invoke-virtual {v8}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_0

    .line 276
    :pswitch_0
    const/4 v4, 0x1

    .line 278
    goto/16 :goto_0

    .line 221
    .end local v4    # "isAll":Z
    .end local v5    # "m":Ljava/lang/String;
    .end local v8    # "mode":Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;
    .end local v9    # "pageIndex":I
    .end local v10    # "thread":Ljava/lang/String;
    .end local v11    # "threadMode":Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;
    .end local v12    # "value":I
    .end local v13    # "verify":Z
    :catch_0
    move-exception v3

    .line 222
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 296
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "isAll":Z
    .restart local v5    # "m":Ljava/lang/String;
    .restart local v8    # "mode":Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;
    .restart local v9    # "pageIndex":I
    .restart local v10    # "thread":Ljava/lang/String;
    .restart local v11    # "threadMode":Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;
    .restart local v12    # "value":I
    .restart local v13    # "verify":Z
    :pswitch_1
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->dumpDatabase()V

    .line 297
    if-eqz v4, :cond_0

    .line 308
    :pswitch_2
    new-instance v14, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$2;

    const/16 v15, 0x64

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$2;-><init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;I)V

    const/4 v15, 0x0

    .line 375
    invoke-virtual {v14, v15}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$2;->send(F)V

    .line 377
    if-eqz v4, :cond_0

    .line 388
    :pswitch_3
    const-string v14, "dumpsys meminfo"

    invoke-static {v14}, Lcom/smartisanos/launcher/LauncherModel;->execCommand(Ljava/lang/String;)V

    .line 389
    if-eqz v4, :cond_0

    .line 395
    :pswitch_4
    new-instance v14, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$3;

    const/16 v15, 0x64

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$3;-><init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;I)V

    const/4 v15, 0x0

    .line 424
    invoke-virtual {v14, v15}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$3;->send(F)V

    .line 425
    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 432
    :pswitch_5
    sget-object v14, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->GL_THREAD:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    if-ne v11, v14, :cond_7

    .line 433
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v14

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/smartisanos/launcher/view/MainView;->DUMP_SCENE_FRAME_BEFORE:Z

    goto/16 :goto_0

    .line 435
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/MainView;->dumpAllScene()V

    goto/16 :goto_0

    .line 441
    :pswitch_6
    const/4 v14, 0x1

    if-ne v12, v14, :cond_8

    .line 442
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v14

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/smartisanos/launcher/view/MainView;->DUMP_FPS:Z

    goto/16 :goto_0

    .line 444
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v14

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/smartisanos/launcher/view/MainView;->DUMP_FPS:Z

    goto/16 :goto_0

    .line 450
    :pswitch_7
    sget-object v14, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->GL_THREAD:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    if-ne v11, v14, :cond_9

    .line 451
    new-instance v3, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$4;

    const/16 v14, 0x64

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$4;-><init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;I)V

    .line 457
    .local v3, "e":Lcom/smartisanos/smengine/Event;
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 463
    .end local v3    # "e":Lcom/smartisanos/smengine/Event;
    :goto_2
    :pswitch_8
    const/4 v14, 0x0

    sput-boolean v14, Lcom/smartisanos/launcher/LOG;->DISABLE_INFO_LOG:Z

    goto/16 :goto_0

    .line 459
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->createXML()V

    goto :goto_2

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
