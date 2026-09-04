.class public Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "FromStringDeserializer.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Std"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


.field public static final STD_CHARSET:I = 0x9

.field public static final STD_CLASS:I = 0x4

.field public static final STD_CURRENCY:I = 0x6

.field public static final STD_FILE:I = 0x1

.field public static final STD_INET_ADDRESS:I = 0xb

.field public static final STD_INET_SOCKET_ADDRESS:I = 0xc

.field public static final STD_JAVA_TYPE:I = 0x5

.field public static final STD_LOCALE:I = 0x8

.field public static final STD_PATTERN:I = 0x7

.field public static final STD_TIME_ZONE:I = 0xa

.field public static final STD_URI:I = 0x3

.field public static final STD_URL:I = 0x2

.field private static final serialVersionUID:J = 0x1L


.field protected final _kind:I


.method protected constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .param p2, "kind"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    .line 204
    iput p2, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_kind:I

    .line 205
    return-void
.end method


.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0x3a

    const/4 v7, 0x0

    .line 210
    iget v8, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_kind:I

    packed-switch v8, :pswitch_data_0

    .line 278
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 212
    :pswitch_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-object v7

    .line 214
    :pswitch_1
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :pswitch_2
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    goto :goto_0

    .line 219
    :pswitch_3
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_valueClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {p2, v7, p1, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleInstantiationProblem(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructFromCanonical(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    goto :goto_0

    .line 228
    :pswitch_5
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v7

    goto :goto_0

    .line 231
    :pswitch_6
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    goto :goto_0

    .line 234
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_firstHyphenOrUnderscore(Ljava/lang/String;)I

    move-result v3

    .line 235
    .local v3, "ix":I
    if-gez v3, :cond_0

    .line 236
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "first":Ljava/lang/String;
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_firstHyphenOrUnderscore(Ljava/lang/String;)I

    move-result v3

    .line 241
    if-gez v3, :cond_1

    .line 242
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, "second":Ljava/lang/String;
    new-instance v7, Ljava/util/Locale;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v6, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    .end local v1    # "first":Ljava/lang/String;
    .end local v3    # "ix":I
    .end local v6    # "second":Ljava/lang/String;
    :pswitch_8
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    goto :goto_0

    .line 250
    :pswitch_9
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    goto :goto_0

    .line 252
    :pswitch_a
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    goto :goto_0

    .line 254
    :pswitch_b
    const-string v8, "["

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 257
    const/16 v8, 0x5d

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 258
    .local v2, "i":I
    if-ne v2, v10, :cond_2

    .line 259
    new-instance v7, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v8

    const-string v9, "Bracketed IPv6 address must contain closing bracket"

    const-class v10, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v8, v9, p1, v10}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    throw v7

    .line 264
    :cond_2
    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 265
    .local v4, "j":I
    if-le v4, v10, :cond_3

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 266
    .local v5, "port":I
    :goto_1
    new-instance v8, Ljava/net/InetSocketAddress;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v7, v8

    goto/16 :goto_0

    .end local v5    # "port":I
    :cond_3
    move v5, v7

    .line 265
    goto :goto_1

    .line 268
    .end local v2    # "i":I
    .end local v4    # "j":I
    :cond_4
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 269
    .restart local v3    # "ix":I
    if-ltz v3, :cond_5

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-gez v8, :cond_5

    .line 271
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 272
    .restart local v5    # "port":I
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v7, v8

    goto/16 :goto_0

    .line 275
    .end local v5    # "port":I
    :cond_5
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8, p1, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v7, v8

    goto/16 :goto_0

    .line 210
    nop

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected _deserializeFromEmptyString()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_kind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 285
    const-string v0, ""

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    .line 288
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;->_kind:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 289
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    goto :goto_0

    .line 291
    :cond_1
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserializeFromEmptyString()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected _firstHyphenOrUnderscore(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 297
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "end":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 298
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 299
    .local v0, "c":C
    const/16 v3, 0x5f

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_1

    .line 303
    .end local v0    # "c":C
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return v2

    .line 297
    .restart local v0    # "c":C
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    .end local v0    # "c":C
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method
