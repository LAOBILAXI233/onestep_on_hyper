.class public abstract Lcom/fasterxml/jackson/core/JsonGenerator;
.super Ljava/lang/Object;
.source "JsonGenerator.java"

.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;
.implements Lcom/fasterxml/jackson/core/Versioned;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    }
.end annotation


.field protected _cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;


.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method protected _reportError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1887
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    throw v0
.end method

.method protected _reportUnsupportedOperation()V
    .locals 3

    .prologue
    .line 1893
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported by generator of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final _throwInternal()V
    .locals 0

    .prologue
    .line 1890
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    return-void
.end method

.method protected final _verifyOffsets(III)V
    .locals 5
    .param p1, "arrayLength"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1901
    if-ltz p2, :cond_0

    add-int v0, p2, p3

    if-le v0, p1, :cond_1

    .line 1902
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid argument(s) (offset=%d, length=%d) for input array of %d element"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1906
    :cond_1
    return-void
.end method

.method protected _writeSimpleObject(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1921
    if-nez p1, :cond_0

    .line 1922
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    .line 1972
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 1925
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1926
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1929
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_b

    move-object v0, p1

    .line 1930
    check-cast v0, Ljava/lang/Number;

    .line 1931
    .local v0, "n":Ljava/lang/Number;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1932
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    goto :goto_0

    .line 1934
    :cond_2
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 1935
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    goto :goto_0

    .line 1937
    :cond_3
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 1938
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    goto :goto_0

    .line 1940
    :cond_4
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 1941
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    goto :goto_0

    .line 1943
    :cond_5
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_6

    .line 1944
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(S)V

    goto :goto_0

    .line 1946
    :cond_6
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_7

    .line 1947
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(S)V

    goto :goto_0

    .line 1949
    :cond_7
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_8

    .line 1950
    check-cast v0, Ljava/math/BigInteger;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 1952
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_8
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_9

    .line 1953
    check-cast v0, Ljava/math/BigDecimal;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 1957
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_9
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_a

    .line 1958
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    goto :goto_0

    .line 1960
    .restart local v0    # "n":Ljava/lang/Number;
    :cond_a
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_e

    .line 1961
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .end local v0    # "n":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    goto/16 :goto_0

    .line 1964
    :cond_b
    instance-of v1, p1, [B

    if-eqz v1, :cond_c

    .line 1965
    check-cast p1, [B

    .end local p1    # "value":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary([B)V

    goto/16 :goto_0

    .line 1967
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    .line 1968
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1970
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_d
    instance-of v1, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_e

    .line 1971
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1974
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public canOmitFields()Z
    .locals 1

    .prologue
    .line 699
    const/4 v0, 0x1

    return v0
.end method

.method public canUseSchema(Lcom/fasterxml/jackson/core/FormatSchema;)Z
    .locals 1
    .param p1, "schema"    # Lcom/fasterxml/jackson/core/FormatSchema;

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public canWriteBinaryNatively()Z
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public canWriteFormattedNumbers()Z
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method public canWriteObjectId()Z
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public canWriteTypeId()Z
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x0

    return v0
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 320
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->enable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 321
    :goto_0
    return-object p0

    .line 320
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;

    goto :goto_0
.end method

.method public copyCurrentEvent(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1684
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 1686
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v1, :cond_0

    .line 1687
    const-string v2, "No current event to copy"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 1689
    :cond_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1752
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->_throwInternal()V

    .line 1754
    :goto_0
    return-void

    .line 1691
    :pswitch_1
    const-string v2, "No current event to copy"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 1694
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    goto :goto_0

    .line 1697
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 1700
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    goto :goto_0

    .line 1703
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    goto :goto_0

    .line 1706
    :pswitch_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 1709
    :pswitch_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->hasTextCharacters()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1710
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextCharacters()[C

    move-result-object v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextOffset()I

    move-result v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextLength()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString([CII)V

    goto :goto_0

    .line 1712
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1717
    :pswitch_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    .line 1718
    .local v0, "n":Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, v2, :cond_2

    .line 1719
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    goto :goto_0

    .line 1720
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, v2, :cond_3

    .line 1721
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 1723
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    goto :goto_0

    .line 1729
    .end local v0    # "n":Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    :pswitch_9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    .line 1730
    .restart local v0    # "n":Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, v2, :cond_4

    .line 1731
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 1732
    :cond_4
    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, v2, :cond_5

    .line 1733
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    goto :goto_0

    .line 1735
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    goto/16 :goto_0

    .line 1740
    .end local v0    # "n":Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    :pswitch_a
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1743
    :pswitch_b
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1746
    :pswitch_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    goto/16 :goto_0

    .line 1749
    :pswitch_d
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1689
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
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
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 4
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1788
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 1789
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v1, :cond_0

    .line 1790
    const-string v2, "No current event to copy"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 1793
    :cond_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    .line 1794
    .local v0, "id":I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 1795
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1796
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 1797
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    .line 1800
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 1816
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->copyCurrentEvent(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1818
    :goto_0
    return-void

    .line 1802
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 1803
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_2

    .line 1804
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    .line 1806
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 1809
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 1810
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_3

    .line 1811
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_2

    .line 1813
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    goto :goto_0

    .line 1800
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public abstract disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
.end method

.method public abstract enable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getCharacterEscapes()Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->getOutputContext()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    .line 613
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/JsonStreamContext;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getFeatureMask()I
.end method

.method public getFormatFeatures()I
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public getHighestEscapedChar()I
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public getOutputBuffered()I
    .locals 1

    .prologue
    .line 595
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getOutputContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    return-object v0
.end method

.method public getSchema()Lcom/fasterxml/jackson/core/FormatSchema;
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
.end method

.method public overrideFormatFeatures(II)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 3
    .param p1, "values"    # I
    .param p2, "mask"    # I

    .prologue
    .line 402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No FormatFeatures defined for generator of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public overrideStdFeatures(II)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 4
    .param p1, "values"    # I
    .param p2, "mask"    # I

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->getFeatureMask()I

    move-result v1

    .line 372
    .local v1, "oldState":I
    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v2, v1

    and-int v3, p1, p2

    or-int v0, v2, v3

    .line 373
    .local v0, "newState":I
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setFeatureMask(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v2

    return-object v2
.end method

.method public setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0
    .param p1, "esc"    # Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .prologue
    .line 534
    return-object p0
.end method

.method public abstract setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonGenerator;
.end method

.method public setCurrentValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->getOutputContext()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    .line 626
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/JsonStreamContext;
    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->setCurrentValue(Ljava/lang/Object;)V

    .line 629
    :cond_0
    return-void
.end method

.method public abstract setFeatureMask(I)Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0
    .param p1, "charCode"    # I

    .prologue
    .line 506
    return-object p0
.end method

.method public setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0
    .param p1, "pp"    # Lcom/fasterxml/jackson/core/PrettyPrinter;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 463
    return-object p0
.end method

.method public setRootValueSeparator(Lcom/fasterxml/jackson/core/SerializableString;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .param p1, "sep"    # Lcom/fasterxml/jackson/core/SerializableString;

    .prologue
    .line 548
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSchema(Lcom/fasterxml/jackson/core/FormatSchema;)V
    .locals 3
    .param p1, "schema"    # Lcom/fasterxml/jackson/core/FormatSchema;

    .prologue
    .line 432
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generator of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support schema of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;
.end method

.method public abstract version()Lcom/fasterxml/jackson/core/Version;
.end method

.method public writeArray([DII)V
    .locals 4
    .param p1, "array"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 909
    if-nez p1, :cond_0

    .line 910
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 912
    :cond_0
    array-length v2, p1

    invoke-virtual {p0, v2, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->_verifyOffsets(III)V

    .line 913
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 914
    move v1, p2

    .local v1, "i":I
    add-int v0, p2, p3

    .local v0, "end":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 915
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    .line 914
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 917
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 918
    return-void
.end method

.method public writeArray([III)V
    .locals 4
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 861
    if-nez p1, :cond_0

    .line 862
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 864
    :cond_0
    array-length v2, p1

    invoke-virtual {p0, v2, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->_verifyOffsets(III)V

    .line 865
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 866
    move v1, p2

    .local v1, "i":I
    add-int v0, p2, p3

    .local v0, "end":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 867
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 869
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 870
    return-void
.end method

.method public writeArray([JII)V
    .locals 4
    .param p1, "array"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    if-nez p1, :cond_0

    .line 886
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 888
    :cond_0
    array-length v2, p1

    invoke-virtual {p0, v2, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->_verifyOffsets(III)V

    .line 889
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 890
    move v1, p2

    .local v1, "i":I
    add-int v0, p2, p3

    .local v0, "end":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 891
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    .line 890
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 893
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 894
    return-void
.end method

.method public final writeArrayFieldStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1619
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 1621
    return-void
.end method

.method public abstract writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeBinary(Ljava/io/InputStream;I)I
    .locals 1
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1162
    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public abstract writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeBinary([B)V
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1144
    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    .line 1145
    return-void
.end method

.method public writeBinary([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1134
    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    .line 1135
    return-void
.end method

.method public final writeBinaryField(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1601
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1602
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary([B)V

    .line 1603
    return-void
.end method

.method public abstract writeBoolean(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeBooleanField(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1508
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    .line 1510
    return-void
.end method

.method public writeEmbeddedObject(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1329
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    const-string v1, "No native support for writing embedded objects"

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    throw v0
.end method

.method public abstract writeEndArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeEndObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeFieldId(J)V
    .locals 1
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method public abstract writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeFieldName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNull()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeNullField(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1521
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    .line 1523
    return-void
.end method

.method public abstract writeNumber(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/math/BigDecimal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeNumber(S)V
    .locals 0
    .param p1, "v"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1206
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;D)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1560
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1561
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    .line 1562
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;F)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1573
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 1575
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;I)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1534
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 1536
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;J)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1547
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    .line 1549
    return-void
.end method

.method public final writeNumberField(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1587
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1588
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    .line 1589
    return-void
.end method

.method public abstract writeObject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "pojo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1651
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1652
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    .line 1653
    return-void
.end method

.method public final writeObjectFieldStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1637
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 1639
    return-void
.end method

.method public writeObjectId(Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1351
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    const-string v1, "No native support for writing Object Ids"

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    throw v0
.end method

.method public writeObjectRef(Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1364
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    const-string v1, "No native support for writing Object Ids"

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    throw v0
.end method

.method public writeOmittedField(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1664
    return-void
.end method

.method public abstract writeRaw(C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 1
    .param p1, "raw"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1076
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 1077
    return-void
.end method

.method public abstract writeRaw(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeRaw(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeRaw([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeRawUTF8String([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeRawValue(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 1
    .param p1, "raw"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1101
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRawValue(Ljava/lang/String;)V

    .line 1102
    return-void
.end method

.method public abstract writeRawValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeRawValue(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeRawValue([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeStartArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeStartArray(I)V
    .locals 0
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 749
    return-void
.end method

.method public abstract writeStartObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeStartObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "forValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 789
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCurrentValue(Ljava/lang/Object;)V

    .line 790
    return-void
.end method

.method public abstract writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeString([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1495
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 1497
    return-void
.end method

.method public abstract writeTree(Lcom/fasterxml/jackson/core/TreeNode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeTypeId(Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1379
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    const-string v1, "No native support for writing Type Ids"

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    throw v0
.end method

.method public abstract writeUTF8String([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
