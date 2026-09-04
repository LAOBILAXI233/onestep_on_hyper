.class public Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.super Lcom/fasterxml/jackson/databind/KeyDeserializer;
.source "StdKeyDeserializer.java"

.implements Ljava/io/Serializable;


.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;,
        Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;,
        Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;
    }
.end annotation


.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_BYTE:I = 0x2

.field public static final TYPE_CALENDAR:I = 0xb

.field public static final TYPE_CHAR:I = 0x4

.field public static final TYPE_CLASS:I = 0xf

.field public static final TYPE_CURRENCY:I = 0x10

.field public static final TYPE_DATE:I = 0xa

.field public static final TYPE_DOUBLE:I = 0x8

.field public static final TYPE_FLOAT:I = 0x7

.field public static final TYPE_INT:I = 0x5

.field public static final TYPE_LOCALE:I = 0x9

.field public static final TYPE_LONG:I = 0x6

.field public static final TYPE_SHORT:I = 0x3

.field public static final TYPE_URI:I = 0xd

.field public static final TYPE_URL:I = 0xe

.field public static final TYPE_UUID:I = 0xc

.field private static final serialVersionUID:J = 0x1L


.field protected final _deser:Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _keyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _kind:I


.method protected constructor <init>(ILjava/lang/Class;)V
    .locals 1
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(ILjava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;)V

    .line 59
    return-void
.end method

.method protected constructor <init>(ILjava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;)V
    .locals 0
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "deser":Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<*>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/KeyDeserializer;-><init>()V

    .line 62
    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_kind:I

    .line 63
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    .line 64
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_deser:Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;

    .line 65
    return-void
.end method

.method public static forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    if-eq p0, v2, :cond_0

    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_1

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;

    move-result-object v2

    .line 112
    :goto_0
    return-object v2

    .line 74
    :cond_1
    const-class v2, Ljava/util/UUID;

    if-ne p0, v2, :cond_2

    .line 75
    const/16 v1, 0xc

    .line 112
    .local v1, "kind":I
    :goto_1
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;

    invoke-direct {v2, v1, p0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(ILjava/lang/Class;)V

    goto :goto_0

    .line 76
    .end local v1    # "kind":I
    :cond_2
    const-class v2, Ljava/lang/Integer;

    if-ne p0, v2, :cond_3

    .line 77
    const/4 v1, 0x5

    .restart local v1    # "kind":I
    goto :goto_1

    .line 78
    .end local v1    # "kind":I
    :cond_3
    const-class v2, Ljava/lang/Long;

    if-ne p0, v2, :cond_4

    .line 79
    const/4 v1, 0x6

    .restart local v1    # "kind":I
    goto :goto_1

    .line 80
    .end local v1    # "kind":I
    :cond_4
    const-class v2, Ljava/util/Date;

    if-ne p0, v2, :cond_5

    .line 81
    const/16 v1, 0xa

    .restart local v1    # "kind":I
    goto :goto_1

    .line 82
    .end local v1    # "kind":I
    :cond_5
    const-class v2, Ljava/util/Calendar;

    if-ne p0, v2, :cond_6

    .line 83
    const/16 v1, 0xb

    .restart local v1    # "kind":I
    goto :goto_1

    .line 85
    .end local v1    # "kind":I
    :cond_6
    const-class v2, Ljava/lang/Boolean;

    if-ne p0, v2, :cond_7

    .line 86
    const/4 v1, 0x1

    .restart local v1    # "kind":I
    goto :goto_1

    .line 87
    .end local v1    # "kind":I
    :cond_7
    const-class v2, Ljava/lang/Byte;

    if-ne p0, v2, :cond_8

    .line 88
    const/4 v1, 0x2

    .restart local v1    # "kind":I
    goto :goto_1

    .line 89
    .end local v1    # "kind":I
    :cond_8
    const-class v2, Ljava/lang/Character;

    if-ne p0, v2, :cond_9

    .line 90
    const/4 v1, 0x4

    .restart local v1    # "kind":I
    goto :goto_1

    .line 91
    .end local v1    # "kind":I
    :cond_9
    const-class v2, Ljava/lang/Short;

    if-ne p0, v2, :cond_a

    .line 92
    const/4 v1, 0x3

    .restart local v1    # "kind":I
    goto :goto_1

    .line 93
    .end local v1    # "kind":I
    :cond_a
    const-class v2, Ljava/lang/Float;

    if-ne p0, v2, :cond_b

    .line 94
    const/4 v1, 0x7

    .restart local v1    # "kind":I
    goto :goto_1

    .line 95
    .end local v1    # "kind":I
    :cond_b
    const-class v2, Ljava/lang/Double;

    if-ne p0, v2, :cond_c

    .line 96
    const/16 v1, 0x8

    .restart local v1    # "kind":I
    goto :goto_1

    .line 97
    .end local v1    # "kind":I
    :cond_c
    const-class v2, Ljava/net/URI;

    if-ne p0, v2, :cond_d

    .line 98
    const/16 v1, 0xd

    .restart local v1    # "kind":I
    goto :goto_1

    .line 99
    .end local v1    # "kind":I
    :cond_d
    const-class v2, Ljava/net/URL;

    if-ne p0, v2, :cond_e

    .line 100
    const/16 v1, 0xe

    .restart local v1    # "kind":I
    goto :goto_1

    .line 101
    .end local v1    # "kind":I
    :cond_e
    const-class v2, Ljava/lang/Class;

    if-ne p0, v2, :cond_f

    .line 102
    const/16 v1, 0xf

    .restart local v1    # "kind":I
    goto :goto_1

    .line 103
    .end local v1    # "kind":I
    :cond_f
    const-class v2, Ljava/util/Locale;

    if-ne p0, v2, :cond_10

    .line 104
    const-class v2, Ljava/util/Locale;

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->findDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;

    move-result-object v0

    .line 105
    .local v0, "deser":Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<*>;"
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;

    const/16 v3, 0x9

    invoke-direct {v2, v3, p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(ILjava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;)V

    goto :goto_0

    .line 106
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<*>;"
    :cond_10
    const-class v2, Ljava/util/Currency;

    if-ne p0, v2, :cond_11

    .line 107
    const-class v2, Ljava/util/Currency;

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->findDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;

    move-result-object v0

    .line 108
    .restart local v0    # "deser":Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<*>;"
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;

    const/16 v3, 0x10

    invoke-direct {v2, v3, p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(ILjava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;)V

    goto/16 :goto_0

    .line 110
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<*>;"
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


.method protected _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 140
    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_kind:I

    packed-switch v3, :pswitch_data_0

    .line 225
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Internal error: unknown key type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    :pswitch_0
    const-string v3, "true"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 222
    :goto_0
    return-object v3

    .line 145
    :cond_0
    const-string v3, "false"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 148
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v4, "value not \'true\' or \'false\'"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p2, v3, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseInt(Ljava/lang/String;)I

    move-result v2

    .line 153
    .local v2, "value":I
    const/16 v3, -0x80

    if-lt v2, v3, :cond_2

    const/16 v3, 0xff

    if-le v2, v3, :cond_3

    .line 154
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v4, "overflow, value can not be represented as 8-bit value"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p2, v3, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 156
    :cond_3
    int-to-byte v3, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    goto :goto_0

    .line 160
    .end local v2    # "value":I
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseInt(Ljava/lang/String;)I

    move-result v2

    .line 161
    .restart local v2    # "value":I
    const/16 v3, -0x8000

    if-lt v2, v3, :cond_4

    const/16 v3, 0x7fff

    if-le v2, v3, :cond_5

    .line 162
    :cond_4
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v4, "overflow, value can not be represented as 16-bit value"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p2, v3, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 165
    :cond_5
    int-to-short v3, v2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    goto :goto_0

    .line 168
    .end local v2    # "value":I
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 169
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_0

    .line 171
    :cond_6
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v4, "can only convert 1-character Strings"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p2, v3, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 173
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 176
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 180
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto/16 :goto_0

    .line 182
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto/16 :goto_0

    .line 185
    :pswitch_8
    :try_start_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_deser:Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;

    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v4, "unable to parse key as locale"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p2, v3, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 191
    .end local v1    # "e":Ljava/io/IOException;
    :pswitch_9
    :try_start_1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_deser:Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;

    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto/16 :goto_0

    .line 192
    :catch_1
    move-exception v1

    .line 193
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v4, "unable to parse key as currency"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p2, v3, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 196
    .end local v1    # "e":Ljava/io/IOException;
    :pswitch_a
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    goto/16 :goto_0

    .line 198
    :pswitch_b
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 199
    .local v0, "date":Ljava/util/Date;
    if-nez v0, :cond_7

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v3

    goto/16 :goto_0

    .line 202
    .end local v0    # "date":Ljava/util/Date;
    :pswitch_c
    :try_start_2
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto/16 :goto_0

    .line 203
    :catch_2
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v4, "problem: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p2, v3, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_d
    :try_start_3
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v3

    goto/16 :goto_0

    .line 209
    :catch_3
    move-exception v1

    .line 210
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v4, "problem: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p2, v3, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_e
    :try_start_4
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 215
    :catch_4
    move-exception v1

    .line 216
    .local v1, "e":Ljava/net/MalformedURLException;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v4, "problem: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p2, v3, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 220
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :pswitch_f
    :try_start_5
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v3

    goto/16 :goto_0

    .line 221
    :catch_5
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v4, "unable to parse key as Class"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p2, v3, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 140
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method

.method protected _parseDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {p1}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method protected _parseInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected _parseLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 119
    if-nez p1, :cond_1

    move-object v1, v2

    .line 133
    :cond_0
    :goto_0
    return-object v1

    .line 123
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 124
    .local v1, "result":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 130
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 131
    goto :goto_0

    .line 127
    .end local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "re":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v3, "not a valid representation, problem: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p2, v2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 133
    .end local v0    # "re":Ljava/lang/Exception;
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v3, "not a valid representation"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p2, v2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getKeyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    return-object v0
.end method
