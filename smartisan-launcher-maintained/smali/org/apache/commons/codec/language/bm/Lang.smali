.class public Lorg/apache/commons/codec/language/bm/Lang;
.super Ljava/lang/Object;
.source "Lang.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/bm/Lang$1;,
        Lorg/apache/commons/codec/language/bm/Lang$LangRule;
    }
.end annotation


.field private static final LANGUAGE_RULES_RN:Ljava/lang/String; = "org/apache/commons/codec/language/bm/lang.txt"

.field private static final Langs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/Lang;",
            ">;"
        }
    .end annotation
.end field


.field private final languages:Lorg/apache/commons/codec/language/bm/Languages;

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Lang$LangRule;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 96
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lorg/apache/commons/codec/language/bm/NameType;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v4, Lorg/apache/commons/codec/language/bm/Lang;->Langs:Ljava/util/Map;

    .line 101
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

    .line 102
    .local v3, "s":Lorg/apache/commons/codec/language/bm/NameType;
    sget-object v4, Lorg/apache/commons/codec/language/bm/Lang;->Langs:Ljava/util/Map;

    const-string v5, "org/apache/commons/codec/language/bm/lang.txt"

    invoke-static {v3}, Lorg/apache/commons/codec/language/bm/Languages;->getInstance(Lorg/apache/commons/codec/language/bm/NameType;)Lorg/apache/commons/codec/language/bm/Languages;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/commons/codec/language/bm/Lang;->loadFromResource(Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Languages;)Lorg/apache/commons/codec/language/bm/Lang;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v3    # "s":Lorg/apache/commons/codec/language/bm/NameType;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lorg/apache/commons/codec/language/bm/Languages;)V
    .locals 1
    .param p2, "languages"    # Lorg/apache/commons/codec/language/bm/Languages;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Lang$LangRule;",
            ">;",
            "Lorg/apache/commons/codec/language/bm/Languages;",
            ")V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Lang$LangRule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/Lang;->rules:Ljava/util/List;

    .line 192
    iput-object p2, p0, Lorg/apache/commons/codec/language/bm/Lang;->languages:Lorg/apache/commons/codec/language/bm/Languages;

    .line 193
    return-void
.end method

.method public static instance(Lorg/apache/commons/codec/language/bm/NameType;)Lorg/apache/commons/codec/language/bm/Lang;
    .locals 1
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;

    .prologue
    .line 114
    sget-object v0, Lorg/apache/commons/codec/language/bm/Lang;->Langs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/codec/language/bm/Lang;

    return-object v0
.end method

.method public static loadFromResource(Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Languages;)Lorg/apache/commons/codec/language/bm/Lang;
    .locals 14
    .param p0, "languageRulesResourceName"    # Ljava/lang/String;
    .param p1, "languages"    # Lorg/apache/commons/codec/language/bm/Languages;

    .prologue
    .line 130
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v9, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Lang$LangRule;>;"
    const-class v11, Lorg/apache/commons/codec/language/bm/Lang;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 133
    .local v3, "lRulesIS":Ljava/io/InputStream;
    if-nez v3, :cond_0

    .line 134
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Unable to resolve required resource:org/apache/commons/codec/language/bm/lang.txt"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 137
    :cond_0
    new-instance v10, Ljava/util/Scanner;

    const-string v11, "UTF-8"

    invoke-direct {v10, v3, v11}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 139
    .local v10, "scanner":Ljava/util/Scanner;
    const/4 v2, 0x0

    .line 140
    .local v2, "inExtendedComment":Z
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v10}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 141
    invoke-virtual {v10}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, "rawLine":Ljava/lang/String;
    move-object v5, v8

    .line 143
    .local v5, "line":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 145
    const-string v11, "*/"

    invoke-virtual {v5, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 146
    const/4 v2, 0x0

    goto :goto_0

    .line 149
    :cond_2
    const-string v11, "/*"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 150
    const/4 v2, 0x1

    goto :goto_0

    .line 153
    :cond_3
    const-string v11, "//"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 154
    .local v1, "cmtI":I
    if-ltz v1, :cond_4

    .line 155
    const/4 v11, 0x0

    invoke-virtual {v5, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 159
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 161
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    .line 166
    const-string v11, "\\s+"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "parts":[Ljava/lang/String;
    array-length v11, v6

    const/4 v12, 0x3

    if-eq v11, v12, :cond_5

    .line 169
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Malformed line \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' in language resource \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local v1    # "cmtI":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "parts":[Ljava/lang/String;
    .end local v8    # "rawLine":Ljava/lang/String;
    :catchall_0
    move-exception v11

    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    throw v11

    .line 173
    .restart local v1    # "cmtI":I
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "parts":[Ljava/lang/String;
    .restart local v8    # "rawLine":Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    :try_start_1
    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 174
    .local v7, "pattern":Ljava/util/regex/Pattern;
    const/4 v11, 0x1

    aget-object v11, v6, v11

    const-string v12, "\\+"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "langs":[Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v11, v6, v11

    const-string v12, "true"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 177
    .local v0, "accept":Z
    new-instance v11, Lorg/apache/commons/codec/language/bm/Lang$LangRule;

    new-instance v12, Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v13, 0x0

    invoke-direct {v11, v7, v12, v0, v13}, Lorg/apache/commons/codec/language/bm/Lang$LangRule;-><init>(Ljava/util/regex/Pattern;Ljava/util/Set;ZLorg/apache/commons/codec/language/bm/Lang$1;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 182
    .end local v0    # "accept":Z
    .end local v1    # "cmtI":I
    .end local v4    # "langs":[Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "parts":[Ljava/lang/String;
    .end local v7    # "pattern":Ljava/util/regex/Pattern;
    .end local v8    # "rawLine":Ljava/lang/String;
    :cond_6
    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    .line 184
    new-instance v11, Lorg/apache/commons/codec/language/bm/Lang;

    invoke-direct {v11, v9, p1}, Lorg/apache/commons/codec/language/bm/Lang;-><init>(Ljava/util/List;Lorg/apache/commons/codec/language/bm/Languages;)V

    return-object v11
.end method


.method public guessLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/bm/Lang;->guessLanguages(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v0

    .line 204
    .local v0, "ls":Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->isSingleton()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->getAny()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "any"

    goto :goto_0
.end method

.method public guessLanguages(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    .locals 6
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 215
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "text":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    iget-object v5, p0, Lorg/apache/commons/codec/language/bm/Lang;->languages:Lorg/apache/commons/codec/language/bm/Languages;

    invoke-virtual {v5}, Lorg/apache/commons/codec/language/bm/Languages;->getLanguages()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 218
    .local v1, "langs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lorg/apache/commons/codec/language/bm/Lang;->rules:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/codec/language/bm/Lang$LangRule;

    .line 219
    .local v3, "rule":Lorg/apache/commons/codec/language/bm/Lang$LangRule;
    invoke-virtual {v3, v4}, Lorg/apache/commons/codec/language/bm/Lang$LangRule;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 220
    invoke-static {v3}, Lorg/apache/commons/codec/language/bm/Lang$LangRule;->access$100(Lorg/apache/commons/codec/language/bm/Lang$LangRule;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 221
    invoke-static {v3}, Lorg/apache/commons/codec/language/bm/Lang$LangRule;->access$200(Lorg/apache/commons/codec/language/bm/Lang$LangRule;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {v3}, Lorg/apache/commons/codec/language/bm/Lang$LangRule;->access$200(Lorg/apache/commons/codec/language/bm/Lang$LangRule;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 228
    .end local v3    # "rule":Lorg/apache/commons/codec/language/bm/Lang$LangRule;
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->from(Ljava/util/Set;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v2

    .line 229
    .local v2, "ls":Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    sget-object v5, Lorg/apache/commons/codec/language/bm/Languages;->NO_LANGUAGES:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v2, Lorg/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .end local v2    # "ls":Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    :cond_3
    return-object v2
.end method
