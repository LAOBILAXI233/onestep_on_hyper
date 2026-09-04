.class public Lcom/fasterxml/jackson/databind/util/BeanUtil;
.super Ljava/lang/Object;
.source "BeanUtil.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static isCglibGetCallbacks(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 5
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 153
    .local v2, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v3

    .line 160
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 162
    .local v0, "compType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 164
    const-string v4, ".cglib"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    const-string v4, "net.sf.cglib"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "org.hibernate.repackage.cglib"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "org.springframework.cglib"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected static isGroovyMetaClassGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 4
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 198
    .local v1, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v2

    .line 201
    :cond_1
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "groovy.lang"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected static isGroovyMetaClassSetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 4
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v0

    .line 185
    .local v0, "argType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "groovy.lang"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    const/4 v2, 0x1

    .line 189
    :cond_0
    return v2
.end method

.method protected static legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "basename"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .prologue
    .line 223
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 224
    .local v2, "end":I
    if-ne v2, p1, :cond_0

    .line 225
    const/4 v5, 0x0

    .line 247
    :goto_0
    return-object v5

    .line 228
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 229
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 231
    .local v1, "d":C
    if-ne v0, v1, :cond_1

    .line 232
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 235
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    sub-int v5, v2, p1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 236
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    add-int/lit8 v3, p1, 0x1

    .line 238
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 239
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 240
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 241
    if-ne v0, v1, :cond_3

    .line 242
    invoke-virtual {v4, p0, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 247
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static okNameForGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 1
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static okNameForGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)Ljava/lang/String;
    .locals 2
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "stdNaming"    # Z

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "name":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 24
    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 26
    :cond_0
    return-object v1
.end method

.method public static okNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static okNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stdNaming"    # Z

    .prologue
    const/4 v2, 0x2

    .line 66
    const-string v1, "is"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 68
    .local v0, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 69
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1, v2}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .end local v0    # "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 69
    .restart local v0    # "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p1, v2}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 74
    .end local v0    # "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static okNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static okNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "stdNaming"    # Z

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static okNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static okNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stdNaming"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 35
    const-string v1, "get"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "getCallbacks"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isCglibGetCallbacks(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    const-string v1, "getMetaClass"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isGroovyMetaClassGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p1, v2}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1, v2}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static okNameForSetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 1
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForSetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static okNameForSetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)Ljava/lang/String;
    .locals 2
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "stdNaming"    # Z

    .prologue
    .line 81
    const-string v1, "set"

    invoke-static {p0, v1, p1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "metaClass"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isGroovyMetaClassSetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "basename"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 256
    .local v2, "end":I
    if-ne v2, p1, :cond_0

    .line 257
    const/4 v4, 0x0

    .line 276
    :goto_0
    return-object v4

    .line 260
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 261
    .local v0, "c0":C
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 262
    .local v1, "c1":C
    if-ne v0, v1, :cond_1

    .line 263
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 268
    :cond_1
    add-int/lit8 v4, p1, 0x1

    if-ge v4, v2, :cond_2

    .line 269
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 270
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 273
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int v4, v2, p1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 274
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, p0, v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
