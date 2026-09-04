.class public Lcom/fasterxml/jackson/databind/ObjectWriter;
.super Ljava/lang/Object;
.source "ObjectWriter.java"

.implements Lcom/fasterxml/jackson/core/Versioned;
.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;,
        Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    }
.end annotation


.field protected static final NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

.field private static final serialVersionUID:J = 0x1L


.field protected final _config:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field protected final _generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

.field protected final _generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

.field protected final _prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

.field protected final _serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

.field protected final _serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;)V
    .locals 1
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 120
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .line 121
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    .line 122
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 124
    sget-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->empty:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    .line 125
    sget-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->empty:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    .line 126
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/core/FormatSchema;)V
    .locals 2
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p3, "s"    # Lcom/fasterxml/jackson/core/FormatSchema;

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 136
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .line 137
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    .line 138
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 140
    if-nez p3, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->empty:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    .line 142
    sget-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->empty:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    .line 143
    return-void

    .line 140
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    invoke-direct {v0, v1, p3, v1, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/SerializableString;)V

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/PrettyPrinter;)V
    .locals 2
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p3, "rootType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "pp"    # Lcom/fasterxml/jackson/core/PrettyPrinter;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 99
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .line 100
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    .line 101
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 102
    if-nez p4, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->empty:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    .line 106
    if-eqz p3, :cond_0

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->empty:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    .line 112
    :goto_1
    return-void

    .line 102
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    invoke-direct {v0, p4, v1, v1, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/SerializableString;)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 110
    sget-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->empty:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-virtual {v0, p0, p3}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->forRootType(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    goto :goto_1
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 3
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/ObjectWriter;
    .param p2, "f"    # Lcom/fasterxml/jackson/core/JsonFactory;

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonFactory;->requiresPropertyOrdering()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 185
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .line 186
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    .line 187
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 189
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    .line 190
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    .line 191
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/ObjectWriter;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 168
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .line 169
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    .line 170
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 172
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    .line 173
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    .line 174
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/ObjectWriter;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p3, "genSettings"    # Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .param p4, "prefetch"    # Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 153
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .line 154
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    .line 155
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 157
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    .line 158
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    .line 159
    return-void
.end method

.method private final _writeCloseable(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    .locals 5
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1162
    move-object v2, p2

    check-cast v2, Ljava/io/Closeable;

    .line 1164
    .local v2, "toClose":Ljava/io/Closeable;
    :try_start_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;)V

    .line 1165
    move-object v1, v2

    .line 1166
    .local v1, "tmpToClose":Ljava/io/Closeable;
    const/4 v2, 0x0

    .line 1167
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 1173
    .end local v1    # "tmpToClose":Ljava/io/Closeable;
    :goto_0
    return-void

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1, v2, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/io/Closeable;Ljava/lang/Exception;)V

    goto :goto_0
.end method


.method protected final _configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    .locals 3
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1141
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configureGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1142
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    .line 1143
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_writeCloseable(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 1153
    :goto_0
    return-void

    .line 1147
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    goto :goto_0

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final _configureGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1186
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->initialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1187
    return-void
.end method

.method protected _new(Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "genSettings"    # Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .param p2, "prefetch"    # Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    .prologue
    .line 236
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)V

    return-object v0
.end method

.method protected _new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/core/JsonFactory;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/ObjectWriter;
    .param p2, "f"    # Lcom/fasterxml/jackson/core/JsonFactory;

    .prologue
    .line 216
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/core/JsonFactory;)V

    return-object v0
.end method

.method protected _new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/ObjectWriter;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;

    .prologue
    .line 225
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    return-object v0
.end method

.method protected _newSequenceWriter(ZLcom/fasterxml/jackson/core/JsonGenerator;Z)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 3
    .param p1, "wrapInArray"    # Z
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "managedInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configureGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 251
    new-instance v0, Lcom/fasterxml/jackson/databind/SequenceWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/SequenceWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;Lcom/fasterxml/jackson/core/JsonGenerator;ZLcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)V

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SequenceWriter;->init(Z)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object v0

    return-object v0
.end method

.method protected _serializerProvider()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    .locals 3

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->createInstance(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    return-object v0
.end method

.method protected _verifySchemaType(Lcom/fasterxml/jackson/core/FormatSchema;)V
    .locals 3
    .param p1, "schema"    # Lcom/fasterxml/jackson/core/FormatSchema;

    .prologue
    .line 1127
    if-eqz p1, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->canUseSchema(Lcom/fasterxml/jackson/core/FormatSchema;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not use FormatSchema of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1133
    :cond_0
    return-void
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V
    .locals 2
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1075
    if-nez p1, :cond_0

    .line 1076
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1078
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V

    .line 1079
    return-void
.end method

.method public acceptJsonFormatVisitor(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V
    .locals 1
    .param p2, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1085
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V

    .line 1086
    return-void
.end method

.method public canSerialize(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1089
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->hasSerializerFor(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method

.method public canSerialize(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1099
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "cause":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->hasSerializerFor(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method

.method public forType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "rootType":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "rootType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 410
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-virtual {v1, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->forRootType(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    move-result-object v0

    .line 411
    .local v0, "pf":Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "rootType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 423
    const/4 v0, 0x0

    check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    .line 425
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributes()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAttributes()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object v0
.end method

.method public getFactory()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    return-object v0
.end method

.method public getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public hasPrefetchedSerializer()Z
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->hasSerializer()Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/MapperFeature;

    .prologue
    .line 868
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 864
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    return v0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;

    .prologue
    .line 604
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 605
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/FormatFeature;

    .prologue
    .line 364
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 365
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/core/FormatSchema;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "schema"    # Lcom/fasterxml/jackson/core/FormatSchema;

    .prologue
    .line 558
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->with(Lcom/fasterxml/jackson/core/FormatSchema;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    move-result-object v0

    .line 559
    .local v0, "genSet":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    if-ne v0, v1, :cond_0

    .line 563
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .line 562
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_verifySchemaType(Lcom/fasterxml/jackson/core/FormatSchema;)V

    .line 563
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/core/JsonFactory;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonFactory;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/core/JsonFactory;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    .line 326
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 327
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "pp"    # Lcom/fasterxml/jackson/core/PrettyPrinter;

    .prologue
    .line 504
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->with(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    move-result-object v0

    .line 505
    .local v0, "genSet":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    if-ne v0, v1, :cond_0

    .line 508
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "escapes"    # Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .prologue
    .line 612
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->with(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    move-result-object v0

    .line 613
    .local v0, "genSet":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    if-ne v0, v1, :cond_0

    .line 616
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 267
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 268
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public varargs with(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "first"    # Lcom/fasterxml/jackson/databind/SerializationFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 276
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 277
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "attrs"    # Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .prologue
    .line 630
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 631
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "filterProvider"    # Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getFilterProvider()Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withFilters(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "df"    # Ljava/text/DateFormat;

    .prologue
    .line 478
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 479
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 588
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 589
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 593
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 594
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public withAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 649
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 650
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public withAttributes(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withAttributes(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 642
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public withDefaultPrettyPrinter()Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->with(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/FormatFeature;

    .prologue
    .line 372
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 373
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    .line 334
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withFeatures([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 335
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 285
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 286
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "rootName"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .prologue
    .line 531
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 532
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "rootName"    # Ljava/lang/String;

    .prologue
    .line 523
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 524
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public withRootValueSeparator(Lcom/fasterxml/jackson/core/SerializableString;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "sep"    # Lcom/fasterxml/jackson/core/SerializableString;

    .prologue
    .line 676
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->withRootValueSeparator(Lcom/fasterxml/jackson/core/SerializableString;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    move-result-object v0

    .line 677
    .local v0, "genSet":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    if-ne v0, v1, :cond_0

    .line 680
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public withRootValueSeparator(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 665
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->withRootValueSeparator(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    move-result-object v0

    .line 666
    .local v0, "genSet":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorSettings:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    if-ne v0, v1, :cond_0

    .line 669
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public withSchema(Lcom/fasterxml/jackson/core/FormatSchema;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "schema"    # Lcom/fasterxml/jackson/core/FormatSchema;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->with(Lcom/fasterxml/jackson/core/FormatSchema;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 460
    .local p1, "rootType":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<*>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->forType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "rootType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 452
    .local p1, "rootType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 584
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public without(Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/FormatFeature;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 381
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public without(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    .line 342
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 343
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 294
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 295
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public varargs without(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "first"    # Lcom/fasterxml/jackson/databind/SerializationFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 303
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 304
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public withoutAttribute(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 657
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withoutAttribute(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 658
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/FormatFeature;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withoutFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 389
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    .line 350
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withoutFeatures([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 351
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 312
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withoutFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 313
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public withoutRootName()Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 3

    .prologue
    .line 546
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v2, Lcom/fasterxml/jackson/databind/PropertyName;->NO_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 547
    .local v0, "newConfig":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter;
    :cond_0
    invoke-virtual {p0, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_new(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object p0

    goto :goto_0
.end method

.method public writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    .locals 4
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 924
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configureGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 925
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v3, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, p2, Ljava/io/Closeable;

    if-eqz v2, :cond_2

    move-object v1, p2

    .line 928
    check-cast v1, Ljava/io/Closeable;

    .line 930
    .local v1, "toClose":Ljava/io/Closeable;
    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;)V

    .line 931
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v3, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 932
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    :cond_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 945
    .end local v1    # "toClose":Ljava/io/Closeable;
    :cond_1
    :goto_0
    return-void

    .line 934
    .restart local v1    # "toClose":Ljava/io/Closeable;
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/io/Closeable;Ljava/lang/Exception;)V

    goto :goto_0

    .line 940
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "toClose":Ljava/io/Closeable;
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetch:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;)V

    .line 941
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v3, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 942
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    goto :goto_0
.end method

.method public writeValue(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/DataOutput;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 1003
    return-void
.end method

.method public writeValue(Ljava/io/File;Ljava/lang/Object;)V
    .locals 2
    .param p1, "resultFile"    # Ljava/io/File;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 960
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 961
    return-void
.end method

.method public writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 977
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 978
    return-void
.end method

.method public writeValue(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 994
    return-void
.end method

.method public writeValueAsBytes(Ljava/lang/Object;)[B
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1042
    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/BufferRecycler;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    .line 1044
    .local v0, "bb":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    :try_start_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    sget-object v4, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v3, v0, v4}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1050
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v2

    .line 1051
    .local v2, "result":[B
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->release()V

    .line 1052
    return-object v2

    .line 1045
    .end local v2    # "result":[B
    :catch_0
    move-exception v1

    .line 1046
    .local v1, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    throw v1

    .line 1047
    .end local v1    # "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :catch_1
    move-exception v1

    .line 1048
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3
.end method

.method public writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1018
    new-instance v1, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/BufferRecycler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    .line 1020
    .local v1, "sw":Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;
    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1026
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->getAndClear()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    throw v0

    .line 1023
    .end local v0    # "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :catch_1
    move-exception v0

    .line 1024
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v2

    throw v2
.end method

.method public writeValues(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 1
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 723
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configureGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 724
    invoke-virtual {p0, v0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_newSequenceWriter(ZLcom/fasterxml/jackson/core/JsonGenerator;Z)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object v0

    return-object v0
.end method

.method public writeValues(Ljava/io/DataOutput;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/DataOutput;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_newSequenceWriter(ZLcom/fasterxml/jackson/core/JsonGenerator;Z)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object v0

    return-object v0
.end method

.method public writeValues(Ljava/io/File;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 3
    .param p1, "out"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 703
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_newSequenceWriter(ZLcom/fasterxml/jackson/core/JsonGenerator;Z)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object v0

    return-object v0
.end method

.method public writeValues(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_newSequenceWriter(ZLcom/fasterxml/jackson/core/JsonGenerator;Z)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object v0

    return-object v0
.end method

.method public writeValues(Ljava/io/Writer;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 741
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_newSequenceWriter(ZLcom/fasterxml/jackson/core/JsonGenerator;Z)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object v0

    return-object v0
.end method

.method public writeValuesAsArray(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 2
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_newSequenceWriter(ZLcom/fasterxml/jackson/core/JsonGenerator;Z)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object v0

    return-object v0
.end method

.method public writeValuesAsArray(Ljava/io/DataOutput;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 854
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/DataOutput;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_newSequenceWriter(ZLcom/fasterxml/jackson/core/JsonGenerator;Z)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object v0

    return-object v0
.end method

.method public writeValuesAsArray(Ljava/io/File;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 3
    .param p1, "out"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 787
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_newSequenceWriter(ZLcom/fasterxml/jackson/core/JsonGenerator;Z)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object v0

    return-object v0
.end method

.method public writeValuesAsArray(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 846
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_newSequenceWriter(ZLcom/fasterxml/jackson/core/JsonGenerator;Z)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object v0

    return-object v0
.end method

.method public writeValuesAsArray(Ljava/io/Writer;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 827
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_newSequenceWriter(ZLcom/fasterxml/jackson/core/JsonGenerator;Z)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object v0

    return-object v0
.end method
