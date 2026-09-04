.class public Lorg/apache/commons/codec/language/bm/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/bm/Rule$RPattern;,
        Lorg/apache/commons/codec/language/bm/Rule$PhonemeList;,
        Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;,
        Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    }
.end annotation


.field public static final ALL:Ljava/lang/String; = "ALL"

.field public static final ALL_STRINGS_RMATCHER:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

.field private static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field private static final HASH_INCLUDE:Ljava/lang/String; = "#include"

.field private static final RULES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;>;>;>;"
        }
    .end annotation
.end field


.field private final lContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

.field private final pattern:Ljava/lang/String;

.field private final phoneme:Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

.field private final rContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;


.method static constructor <clinit>()V
    .locals 18

    .prologue
    .line 176
    new-instance v15, Lorg/apache/commons/codec/language/bm/Rule$1;

    invoke-direct {v15}, Lorg/apache/commons/codec/language/bm/Rule$1;-><init>()V

    sput-object v15, Lorg/apache/commons/codec/language/bm/Rule;->ALL_STRINGS_RMATCHER:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    .line 189
    new-instance v15, Ljava/util/EnumMap;

    const-class v16, Lorg/apache/commons/codec/language/bm/NameType;

    invoke-direct/range {v15 .. v16}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v15, Lorg/apache/commons/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    .line 193
    invoke-static {}, Lorg/apache/commons/codec/language/bm/NameType;->values()[Lorg/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/commons/codec/language/bm/NameType;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v6, v4

    .end local v1    # "arr$":[Lorg/apache/commons/codec/language/bm/NameType;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v14, v1, v6

    .line 194
    .local v14, "s":Lorg/apache/commons/codec/language/bm/NameType;
    new-instance v13, Ljava/util/EnumMap;

    const-class v15, Lorg/apache/commons/codec/language/bm/RuleType;

    invoke-direct {v13, v15}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 197
    .local v13, "rts":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;>;"
    invoke-static {}, Lorg/apache/commons/codec/language/bm/RuleType;->values()[Lorg/apache/commons/codec/language/bm/RuleType;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/commons/codec/language/bm/RuleType;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v4, 0x0

    .end local v6    # "i$":I
    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v9, :cond_2

    aget-object v12, v2, v5

    .line 198
    .local v12, "rt":Lorg/apache/commons/codec/language/bm/RuleType;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v11, "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;"
    invoke-static {v14}, Lorg/apache/commons/codec/language/bm/Languages;->getInstance(Lorg/apache/commons/codec/language/bm/NameType;)Lorg/apache/commons/codec/language/bm/Languages;

    move-result-object v10

    .line 201
    .local v10, "ls":Lorg/apache/commons/codec/language/bm/Languages;
    invoke-virtual {v10}, Lorg/apache/commons/codec/language/bm/Languages;->getLanguages()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5    # "i$":I
    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 203
    .local v7, "l":Ljava/lang/String;
    :try_start_0
    invoke-static {v14, v12, v7}, Lorg/apache/commons/codec/language/bm/Rule;->createScanner(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v15

    invoke-static {v14, v12, v7}, Lorg/apache/commons/codec/language/bm/Rule;->createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v11, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 204
    :catch_0
    move-exception v3

    .line 205
    .local v3, "e":Ljava/lang/IllegalStateException;
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Problem processing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v14, v12, v7}, Lorg/apache/commons/codec/language/bm/Rule;->createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 208
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .end local v7    # "l":Ljava/lang/String;
    :cond_0
    sget-object v15, Lorg/apache/commons/codec/language/bm/RuleType;->RULES:Lorg/apache/commons/codec/language/bm/RuleType;

    invoke-virtual {v12, v15}, Lorg/apache/commons/codec/language/bm/RuleType;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 209
    const-string v15, "common"

    const-string v16, "common"

    move-object/from16 v0, v16

    invoke-static {v14, v12, v0}, Lorg/apache/commons/codec/language/bm/Rule;->createScanner(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v16

    const-string v17, "common"

    move-object/from16 v0, v17

    invoke-static {v14, v12, v0}, Lorg/apache/commons/codec/language/bm/Rule;->createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_1
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v13, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    add-int/lit8 v4, v5, 0x1

    .local v4, "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 215
    .end local v10    # "ls":Lorg/apache/commons/codec/language/bm/Languages;
    .end local v11    # "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;"
    .end local v12    # "rt":Lorg/apache/commons/codec/language/bm/RuleType;
    :cond_2
    sget-object v15, Lorg/apache/commons/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    add-int/lit8 v4, v6, 0x1

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    move v6, v4

    .end local v4    # "i$":I
    .restart local v6    # "i$":I
    goto/16 :goto_0

    .line 217
    .end local v2    # "arr$":[Lorg/apache/commons/codec/language/bm/RuleType;
    .end local v9    # "len$":I
    .end local v13    # "rts":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/codec/language/bm/RuleType;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;>;>;"
    .end local v14    # "s":Lorg/apache/commons/codec/language/bm/NameType;
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "lContext"    # Ljava/lang/String;
    .param p3, "rContext"    # Ljava/lang/String;
    .param p4, "phoneme"    # Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->lContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->rContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    .line 625
    iput-object p4, p0, Lorg/apache/commons/codec/language/bm/Rule;->phoneme:Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    .line 626
    return-void
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 82
    invoke-static {p0, p1}, Lorg/apache/commons/codec/language/bm/Rule;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 82
    invoke-static {p0, p1}, Lorg/apache/commons/codec/language/bm/Rule;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/CharSequence;C)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # C

    .prologue
    .line 82
    invoke-static {p0, p1}, Lorg/apache/commons/codec/language/bm/Rule;->contains(Ljava/lang/CharSequence;C)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/CharSequence;C)Z
    .locals 2
    .param p0, "chars"    # Ljava/lang/CharSequence;
    .param p1, "input"    # C

    .prologue
    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 221
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 222
    const/4 v1, 0x1

    .line 225
    :goto_1
    return v1

    .line 220
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string v0, "org/apache/commons/codec/language/bm/%s_%s_%s.txt"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/apache/commons/codec/language/bm/RuleType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createScanner(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 5
    .param p0, "lang"    # Ljava/lang/String;

    .prologue
    .line 245
    const-string v2, "org/apache/commons/codec/language/bm/%s.txt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "resName":Ljava/lang/String;
    const-class v2, Lorg/apache/commons/codec/language/bm/Languages;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 248
    .local v1, "rulesIS":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 249
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_0
    new-instance v2, Ljava/util/Scanner;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v2
.end method

.method private static createScanner(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;
    .locals 5
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codec/language/bm/Rule;->createResourceName(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "resName":Ljava/lang/String;
    const-class v2, Lorg/apache/commons/codec/language/bm/Languages;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 237
    .local v1, "rulesIS":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 238
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_0
    new-instance v2, Ljava/util/Scanner;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v2
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v2

    .line 259
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_2

    .line 260
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 259
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 264
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getInstance(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->from(Ljava/util/Set;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/language/bm/Rule;->getInstance(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/List;
    .locals 5
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "langs"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codec/language/bm/Rule;->getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/Map;

    move-result-object v2

    .line 281
    .local v2, "ruleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v0, "allRules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 283
    .local v3, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 285
    .end local v3    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    :cond_0
    return-object v0
.end method

.method public static getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 335
    sget-object v1, Lorg/apache/commons/codec/language/bm/Rule;->RULES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 337
    .local v0, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    if-nez v0, :cond_0

    .line 338
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No rules found for %s, %s, %s."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lorg/apache/commons/codec/language/bm/RuleType;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_0
    return-object v0
.end method

.method public static getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/Map;
    .locals 1
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;
    .param p1, "rt"    # Lorg/apache/commons/codec/language/bm/RuleType;
    .param p2, "langs"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/RuleType;",
            "Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p2}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->getAny()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/language/bm/Rule;->getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "any"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/language/bm/Rule;->getInstanceMap(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private static parsePhoneme(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .locals 6
    .param p0, "ph"    # Ljava/lang/String;

    .prologue
    .line 346
    const-string v4, "["

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 347
    .local v3, "open":I
    if-ltz v3, :cond_1

    .line 348
    const-string v4, "]"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 349
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Phoneme expression contains a \'[\' but does not end in \']\'"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 351
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "before":Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "in":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    const-string v4, "[+]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 355
    .local v2, "langs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    invoke-static {v2}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->from(Ljava/util/Set;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    .line 357
    .end local v0    # "before":Ljava/lang/String;
    .end local v1    # "in":Ljava/lang/String;
    .end local v2    # "langs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object v4

    :cond_1
    new-instance v4, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    sget-object v5, Lorg/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-direct {v4, p0, v5}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    goto :goto_0
.end method

.method private static parsePhonemeExpr(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .locals 9
    .param p0, "ph"    # Ljava/lang/String;

    .prologue
    .line 362
    const-string v6, "("

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 363
    const-string v6, ")"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 364
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Phoneme starts with \'(\' so must end with \')\'"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 367
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v5, "phs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "body":Ljava/lang/String;
    const-string v6, "[|]"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 370
    .local v4, "part":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/commons/codec/language/bm/Rule;->parsePhoneme(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    .end local v4    # "part":Ljava/lang/String;
    :cond_1
    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 373
    :cond_2
    new-instance v6, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    const-string v7, ""

    sget-object v8, Lorg/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_3
    new-instance v6, Lorg/apache/commons/codec/language/bm/Rule$PhonemeList;

    invoke-direct {v6, v5}, Lorg/apache/commons/codec/language/bm/Rule$PhonemeList;-><init>(Ljava/util/List;)V

    .line 378
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "body":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "phs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    :goto_1
    return-object v6

    :cond_4
    invoke-static {p0}, Lorg/apache/commons/codec/language/bm/Rule;->parsePhoneme(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v6

    goto :goto_1
.end method

.method private static parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;
    .locals 22
    .param p0, "scanner"    # Ljava/util/Scanner;
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 384
    .local v15, "lines":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;>;"
    const/4 v10, 0x0

    .line 386
    .local v10, "currentLine":I
    const/4 v12, 0x0

    .line 387
    .local v12, "inMultilineComment":Z
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 388
    add-int/lit8 v10, v10, 0x1

    .line 389
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v18

    .line 390
    .local v18, "rawLine":Ljava/lang/String;
    move-object/from16 v14, v18

    .line 392
    .local v14, "line":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 393
    const-string v8, "*/"

    invoke-virtual {v14, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 394
    const/4 v12, 0x0

    goto :goto_0

    .line 397
    :cond_1
    const-string v8, "/*"

    invoke-virtual {v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 398
    const/4 v12, 0x1

    goto :goto_0

    .line 401
    :cond_2
    const-string v8, "//"

    invoke-virtual {v14, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 402
    .local v9, "cmtI":I
    if-ltz v9, :cond_3

    .line 403
    const/4 v8, 0x0

    invoke-virtual {v14, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 407
    :cond_3
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 409
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 413
    const-string v8, "#include"

    invoke-virtual {v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 415
    const-string v8, "#include"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v14, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 416
    .local v13, "incl":Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 417
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Malformed import statement \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 420
    :cond_4
    invoke-static {v13}, Lorg/apache/commons/codec/language/bm/Rule;->createScanner(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v8

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "->"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v8, v0}, Lorg/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 424
    .end local v13    # "incl":Ljava/lang/String;
    :cond_5
    const-string v8, "\\s+"

    invoke-virtual {v14, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 425
    .local v16, "parts":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v8, v0

    const/16 v20, 0x4

    move/from16 v0, v20

    if-eq v8, v0, :cond_6

    .line 426
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Malformed rule statement split into "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " parts: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 430
    :cond_6
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v16, v8

    invoke-static {v8}, Lorg/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "pat":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v16, v8

    invoke-static {v8}, Lorg/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, "lCon":Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v8, v16, v8

    invoke-static {v8}, Lorg/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 433
    .local v5, "rCon":Ljava/lang/String;
    const/4 v8, 0x3

    aget-object v8, v16, v8

    invoke-static {v8}, Lorg/apache/commons/codec/language/bm/Rule;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/codec/language/bm/Rule;->parsePhonemeExpr(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    move-result-object v6

    .line 434
    .local v6, "ph":Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    move v7, v10

    .line 435
    .local v7, "cLine":I
    new-instance v2, Lorg/apache/commons/codec/language/bm/Rule$2;

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/codec/language/bm/Rule$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;ILjava/lang/String;)V

    .line 449
    .local v2, "r":Lorg/apache/commons/codec/language/bm/Rule;
    iget-object v8, v2, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 450
    .local v17, "patternKey":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 451
    .local v19, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    if-nez v19, :cond_7

    .line 452
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .restart local v19    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_7
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 456
    .end local v2    # "r":Lorg/apache/commons/codec/language/bm/Rule;
    .end local v3    # "pat":Ljava/lang/String;
    .end local v4    # "lCon":Ljava/lang/String;
    .end local v5    # "rCon":Ljava/lang/String;
    .end local v6    # "ph":Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .end local v7    # "cLine":I
    .end local v17    # "patternKey":Ljava/lang/String;
    .end local v19    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Rule;>;"
    :catch_0
    move-exception v11

    .line 457
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Problem parsing line \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 466
    .end local v9    # "cmtI":I
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "parts":[Ljava/lang/String;
    .end local v18    # "rawLine":Ljava/lang/String;
    :cond_8
    return-object v15
.end method

.method private static pattern(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Rule$RPattern;
    .locals 13
    .param p0, "regex"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    .line 477
    const-string v10, "^"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 478
    .local v8, "startsWith":Z
    const-string v10, "$"

    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 479
    .local v4, "endsWith":Z
    if-eqz v8, :cond_0

    move v12, v7

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_1
    invoke-virtual {p0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "content":Ljava/lang/String;
    const-string v10, "["

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 482
    .local v2, "boxes":Z
    if-nez v2, :cond_7

    .line 483
    if-eqz v8, :cond_3

    if-eqz v4, :cond_3

    .line 485
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 487
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$3;

    invoke-direct {v10}, Lorg/apache/commons/codec/language/bm/Rule$3;-><init>()V

    .line 566
    :goto_2
    return-object v10

    .end local v2    # "boxes":Z
    .end local v3    # "content":Ljava/lang/String;
    :cond_0
    move v12, v11

    .line 479
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    goto :goto_1

    .line 494
    .restart local v2    # "boxes":Z
    .restart local v3    # "content":Ljava/lang/String;
    :cond_2
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$4;

    invoke-direct {v10, v3}, Lorg/apache/commons/codec/language/bm/Rule$4;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 501
    :cond_3
    if-nez v8, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    .line 503
    sget-object v10, Lorg/apache/commons/codec/language/bm/Rule;->ALL_STRINGS_RMATCHER:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    goto :goto_2

    .line 504
    :cond_5
    if-eqz v8, :cond_6

    .line 506
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$5;

    invoke-direct {v10, v3}, Lorg/apache/commons/codec/language/bm/Rule$5;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 512
    :cond_6
    if-eqz v4, :cond_c

    .line 514
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$6;

    invoke-direct {v10, v3}, Lorg/apache/commons/codec/language/bm/Rule$6;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 522
    :cond_7
    const-string v10, "["

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 523
    .local v9, "startsWithBox":Z
    const-string v10, "]"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 525
    .local v5, "endsWithBox":Z
    if-eqz v9, :cond_c

    if-eqz v5, :cond_c

    .line 526
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "boxContent":Ljava/lang/String;
    const-string v10, "["

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 529
    const-string v10, "^"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 530
    .local v6, "negate":Z
    if-eqz v6, :cond_8

    .line 531
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 533
    :cond_8
    move-object v0, v1

    .line 534
    .local v0, "bContent":Ljava/lang/String;
    if-nez v6, :cond_9

    .line 536
    .local v7, "shouldMatch":Z
    :goto_3
    if-eqz v8, :cond_a

    if-eqz v4, :cond_a

    .line 538
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$7;

    invoke-direct {v10, v0, v7}, Lorg/apache/commons/codec/language/bm/Rule$7;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    .end local v7    # "shouldMatch":Z
    :cond_9
    move v7, v11

    .line 534
    goto :goto_3

    .line 544
    .restart local v7    # "shouldMatch":Z
    :cond_a
    if-eqz v8, :cond_b

    .line 546
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$8;

    invoke-direct {v10, v0, v7}, Lorg/apache/commons/codec/language/bm/Rule$8;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    .line 552
    :cond_b
    if-eqz v4, :cond_c

    .line 554
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$9;

    invoke-direct {v10, v0, v7}, Lorg/apache/commons/codec/language/bm/Rule$9;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    .line 566
    .end local v0    # "bContent":Ljava/lang/String;
    .end local v1    # "boxContent":Ljava/lang/String;
    .end local v5    # "endsWithBox":Z
    .end local v6    # "negate":Z
    .end local v7    # "shouldMatch":Z
    .end local v9    # "startsWithBox":Z
    :cond_c
    new-instance v10, Lorg/apache/commons/codec/language/bm/Rule$10;

    invoke-direct {v10, p0}, Lorg/apache/commons/codec/language/bm/Rule$10;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 578
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v1

    .line 581
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 582
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 586
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 590
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 594
    :cond_0
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 598
    :cond_1
    return-object p0
.end method


.method public getLContext()Lorg/apache/commons/codec/language/bm/Rule$RPattern;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->lContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneme()Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->phoneme:Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    return-object v0
.end method

.method public getRContext()Lorg/apache/commons/codec/language/bm/Rule$RPattern;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule;->rContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    return-object v0
.end method

.method public patternAndContextMatches(Ljava/lang/CharSequence;I)Z
    .locals 5
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 676
    if-gez p2, :cond_0

    .line 677
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "Can not match pattern at negative indexes"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 680
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 681
    .local v1, "patternLength":I
    add-int v0, p2, v1

    .line 683
    .local v0, "ipl":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v0, v3, :cond_2

    .line 695
    :cond_1
    :goto_0
    return v2

    .line 690
    :cond_2
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/codec/language/bm/Rule;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 692
    iget-object v3, p0, Lorg/apache/commons/codec/language/bm/Rule;->rContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/codec/language/bm/Rule$RPattern;->isMatch(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 695
    iget-object v3, p0, Lorg/apache/commons/codec/language/bm/Rule;->lContext:Lorg/apache/commons/codec/language/bm/Rule$RPattern;

    invoke-interface {p1, v2, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/commons/codec/language/bm/Rule$RPattern;->isMatch(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method
