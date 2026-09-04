.class public Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;
.super Ljava/lang/Object;
.source "OptionalHandlerFactory.java"

.implements Ljava/io/Serializable;


.field private static final CLASS_DOM_DOCUMENT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLASS_DOM_NODE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final DESERIALIZERS_FOR_JAVAX_XML:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.CoreXMLDeserializers"

.field private static final DESERIALIZER_FOR_DOM_DOCUMENT:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer"

.field private static final DESERIALIZER_FOR_DOM_NODE:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer"

.field private static final PACKAGE_PREFIX_JAVAX_XML:Ljava/lang/String; = "javax.xml."

.field private static final SERIALIZERS_FOR_JAVAX_XML:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.CoreXMLSerializers"

.field private static final SERIALIZER_FOR_DOM_NODE:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.DOMSerializer"

.field private static final _jdk7Helper:Lcom/fasterxml/jackson/databind/ext/Java7Support;

.field public static final instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

.field private static final serialVersionUID:J = 0x1L


.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 46
    const/4 v0, 0x0

    .local v0, "doc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 48
    .local v2, "node":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-class v2, Lorg/w3c/dom/Node;

    .line 49
    const-class v0, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    sput-object v2, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->CLASS_DOM_NODE:Ljava/lang/Class;

    .line 55
    sput-object v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->CLASS_DOM_DOCUMENT:Ljava/lang/Class;

    .line 64
    const/4 v3, 0x0

    .line 66
    .local v3, "x":Lcom/fasterxml/jackson/databind/ext/Java7Support;
    :try_start_1
    invoke-static {}, Lcom/fasterxml/jackson/databind/ext/Java7Support;->instance()Lcom/fasterxml/jackson/databind/ext/Java7Support;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 68
    :goto_1
    sput-object v3, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->_jdk7Helper:Lcom/fasterxml/jackson/databind/ext/Java7Support;

    .line 71
    new-instance v4, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    invoke-direct {v4}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;-><init>()V

    sput-object v4, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    return-void

    .line 50
    .end local v3    # "x":Lcom/fasterxml/jackson/databind/ext/Java7Support;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "WARNING: could not load DOM Node and/or Document classes"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "x":Lcom/fasterxml/jackson/databind/ext/Java7Support;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasSuperClassStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 3
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 169
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 170
    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    .line 177
    :cond_0
    :goto_1
    return v1

    .line 173
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    const/4 v1, 0x1

    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private instantiate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 152
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 153
    :catch_1
    move-exception v0

    goto :goto_1
.end method


.method public findDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 7
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 114
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    .line 116
    .local v4, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->_jdk7Helper:Lcom/fasterxml/jackson/databind/ext/Java7Support;

    if-eqz v6, :cond_1

    .line 117
    sget-object v6, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->_jdk7Helper:Lcom/fasterxml/jackson/databind/ext/Java7Support;

    invoke-virtual {v6, v4}, Lcom/fasterxml/jackson/databind/ext/Java7Support;->getDeserializerForJavaNioFilePath(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 118
    .local v1, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v1, :cond_1

    move-object v5, v1

    .line 140
    .end local v1    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    :goto_0
    return-object v5

    .line 122
    :cond_1
    sget-object v6, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->CLASS_DOM_NODE:Ljava/lang/Class;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->CLASS_DOM_NODE:Ljava/lang/Class;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 123
    const-string v5, "com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer"

    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    goto :goto_0

    .line 125
    :cond_2
    sget-object v6, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->CLASS_DOM_DOCUMENT:Ljava/lang/Class;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->CLASS_DOM_DOCUMENT:Ljava/lang/Class;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 126
    const-string v5, "com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer"

    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "className":Ljava/lang/String;
    const-string v6, "javax.xml."

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "javax.xml."

    invoke-direct {p0, v4, v6}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasSuperClassStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 132
    :cond_4
    const-string v2, "com.fasterxml.jackson.databind.ext.CoreXMLDeserializers"

    .line 136
    .local v2, "factoryName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 137
    .local v3, "ob":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 140
    check-cast v3, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .end local v3    # "ob":Ljava/lang/Object;
    invoke-interface {v3, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    goto :goto_0
.end method

.method public findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 7
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 84
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 86
    .local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->_jdk7Helper:Lcom/fasterxml/jackson/databind/ext/Java7Support;

    if-eqz v6, :cond_0

    .line 87
    sget-object v6, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->_jdk7Helper:Lcom/fasterxml/jackson/databind/ext/Java7Support;

    invoke-virtual {v6, v3}, Lcom/fasterxml/jackson/databind/ext/Java7Support;->getSerializerForJavaNioFilePath(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    .line 88
    .local v4, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-eqz v4, :cond_0

    .line 107
    .end local v4    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :goto_0
    return-object v4

    .line 92
    :cond_0
    sget-object v6, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->CLASS_DOM_NODE:Ljava/lang/Class;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->CLASS_DOM_NODE:Ljava/lang/Class;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    const-string v5, "com.fasterxml.jackson.databind.ext.DOMSerializer"

    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-object v4, v5

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "className":Ljava/lang/String;
    const-string v6, "javax.xml."

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "javax.xml."

    invoke-direct {p0, v3, v6}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasSuperClassStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 98
    :cond_2
    const-string v1, "com.fasterxml.jackson.databind.ext.CoreXMLSerializers"

    .line 103
    .local v1, "factoryName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 104
    .local v2, "ob":Ljava/lang/Object;
    if-nez v2, :cond_4

    move-object v4, v5

    .line 105
    goto :goto_0

    .end local v1    # "factoryName":Ljava/lang/String;
    .end local v2    # "ob":Ljava/lang/Object;
    :cond_3
    move-object v4, v5

    .line 100
    goto :goto_0

    .line 107
    .restart local v1    # "factoryName":Ljava/lang/String;
    .restart local v2    # "ob":Ljava/lang/Object;
    :cond_4
    check-cast v2, Lcom/fasterxml/jackson/databind/ser/Serializers;

    .end local v2    # "ob":Ljava/lang/Object;
    invoke-interface {v2, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    goto :goto_0
.end method
