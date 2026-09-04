.class final Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;
.super Lcom/fasterxml/jackson/databind/KeyDeserializer;
.source "StdKeyDeserializer.java"

.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DelegatingKD"
.end annotation


.field private static final serialVersionUID:J = 0x1L


.field protected final _delegate:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
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


.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/KeyDeserializer;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_keyClass:Ljava/lang/Class;

    .line 302
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_delegate:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 303
    return-void
.end method


.method public final deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 309
    if-nez p1, :cond_1

    .line 310
    const/4 v1, 0x0

    .line 320
    :cond_0
    :goto_0
    return-object v1

    .line 314
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_delegate:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 315
    .local v1, "result":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 318
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_keyClass:Ljava/lang/Class;

    const-string v3, "not a valid representation"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2, v2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 319
    .end local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 320
    .local v0, "re":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_keyClass:Ljava/lang/Class;

    const-string v3, "not a valid representation: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

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
    .line 324
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_keyClass:Ljava/lang/Class;

    return-object v0
.end method
