.class public Lorg/apache/commons/codec/language/bm/Languages;
.super Ljava/lang/Object;
.source "Languages.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;,
        Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    }
.end annotation


.field public static final ANY:Ljava/lang/String; = "any"

.field public static final ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

.field private static final LANGUAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/Languages;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LANGUAGES:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;


.field private final languages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 139
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lorg/apache/commons/codec/language/bm/NameType;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v4, Lorg/apache/commons/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    .line 142
    invoke-static {}, Lorg/apache/commons/codec/language/bm/NameType;->values()[Lorg/apache/commons/codec/language/bm/NameType;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/commons/codec/language/bm/NameType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 143
    .local v3, "s":Lorg/apache/commons/codec/language/bm/NameType;
    sget-object v4, Lorg/apache/commons/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    invoke-static {v3}, Lorg/apache/commons/codec/language/bm/Languages;->langResourceName(Lorg/apache/commons/codec/language/bm/NameType;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/codec/language/bm/Languages;->getInstance(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Languages;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v3    # "s":Lorg/apache/commons/codec/language/bm/NameType;
    :cond_0
    new-instance v4, Lorg/apache/commons/codec/language/bm/Languages$1;

    invoke-direct {v4}, Lorg/apache/commons/codec/language/bm/Languages$1;-><init>()V

    sput-object v4, Lorg/apache/commons/codec/language/bm/Languages;->NO_LANGUAGES:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .line 228
    new-instance v4, Lorg/apache/commons/codec/language/bm/Languages$2;

    invoke-direct {v4}, Lorg/apache/commons/codec/language/bm/Languages$2;-><init>()V

    sput-object v4, Lorg/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Languages;->languages:Ljava/util/Set;

    .line 262
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Languages;
    .locals 8
    .param p0, "languagesResourceName"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 154
    .local v3, "ls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v5, Lorg/apache/commons/codec/language/bm/Languages;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 156
    .local v1, "langIS":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 157
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to resolve required resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_0
    new-instance v4, Ljava/util/Scanner;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 162
    .local v4, "lsScanner":Ljava/util/Scanner;
    const/4 v0, 0x0

    .line 163
    .local v0, "inExtendedComment":Z
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 164
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "line":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 166
    const-string v5, "*/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_2
    const-string v5, "/*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    const/4 v0, 0x1

    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 173
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    throw v5

    :cond_4
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    .line 181
    new-instance v5, Lorg/apache/commons/codec/language/bm/Languages;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/codec/language/bm/Languages;-><init>(Ljava/util/Set;)V

    return-object v5
.end method

.method public static getInstance(Lorg/apache/commons/codec/language/bm/NameType;)Lorg/apache/commons/codec/language/bm/Languages;
    .locals 1
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;

    .prologue
    .line 148
    sget-object v0, Lorg/apache/commons/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/codec/language/bm/Languages;

    return-object v0
.end method

.method private static langResourceName(Lorg/apache/commons/codec/language/bm/NameType;)Ljava/lang/String;
    .locals 4
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;

    .prologue
    .line 185
    const-string v0, "org/apache/commons/codec/language/bm/%s_languages.txt"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


.method public getLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Languages;->languages:Ljava/util/Set;

    return-object v0
.end method
