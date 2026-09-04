.class public final Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
.super Ljava/lang/Object;
.source "ObjectWriter.java"

.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ObjectWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneratorSettings"
.end annotation


.field public static final empty:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

.field private static final serialVersionUID:J = 0x1L


.field public final characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field public final prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

.field public final rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

.field public final schema:Lcom/fasterxml/jackson/core/FormatSchema;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1207
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/SerializableString;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->empty:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 0
    .param p1, "pp"    # Lcom/fasterxml/jackson/core/PrettyPrinter;
    .param p2, "sch"    # Lcom/fasterxml/jackson/core/FormatSchema;
    .param p3, "esc"    # Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .param p4, "rootSep"    # Lcom/fasterxml/jackson/core/SerializableString;

    .prologue
    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 1239
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/FormatSchema;

    .line 1240
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 1241
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    .line 1242
    return-void
.end method


.method public initialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 1295
    .local v0, "pp":Lcom/fasterxml/jackson/core/PrettyPrinter;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v1, :cond_0

    .line 1296
    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-ne v0, v1, :cond_4

    .line 1297
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 1305
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v1, :cond_1

    .line 1306
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 1308
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/FormatSchema;

    if-eqz v1, :cond_2

    .line 1309
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/FormatSchema;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setSchema(Lcom/fasterxml/jackson/core/FormatSchema;)V

    .line 1311
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v1, :cond_3

    .line 1312
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setRootValueSeparator(Lcom/fasterxml/jackson/core/SerializableString;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 1314
    :cond_3
    return-void

    .line 1299
    :cond_4
    instance-of v1, v0, Lcom/fasterxml/jackson/core/util/Instantiatable;

    if-eqz v1, :cond_5

    .line 1300
    check-cast v0, Lcom/fasterxml/jackson/core/util/Instantiatable;

    .end local v0    # "pp":Lcom/fasterxml/jackson/core/PrettyPrinter;
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/Instantiatable;->createInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 1302
    .restart local v0    # "pp":Lcom/fasterxml/jackson/core/PrettyPrinter;
    :cond_5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/core/FormatSchema;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 4
    .param p1, "sch"    # Lcom/fasterxml/jackson/core/FormatSchema;

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/FormatSchema;

    if-ne v0, p1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/SerializableString;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 4
    .param p1, "pp"    # Lcom/fasterxml/jackson/core/PrettyPrinter;

    .prologue
    .line 1246
    if-nez p1, :cond_0

    .line 1247
    sget-object p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-ne p1, v0, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/FormatSchema;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/SerializableString;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 4
    .param p1, "esc"    # Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-ne v0, p1, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/FormatSchema;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/SerializableString;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withRootValueSeparator(Lcom/fasterxml/jackson/core/SerializableString;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 4
    .param p1, "sep"    # Lcom/fasterxml/jackson/core/SerializableString;

    .prologue
    .line 1276
    if-nez p1, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    if-nez v0, :cond_2

    .line 1286
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    :cond_0
    :goto_0
    return-object p0

    .line 1281
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-interface {v1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1286
    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/FormatSchema;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/SerializableString;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withRootValueSeparator(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 5
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 1264
    if-nez p1, :cond_1

    .line 1265
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    if-nez v0, :cond_2

    .line 1271
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    :cond_0
    :goto_0
    return-object p0

    .line 1268
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1271
    :cond_2
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/FormatSchema;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-nez p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/SerializableString;)V

    move-object p0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
