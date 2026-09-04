.class final Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;
.super Ljava/lang/Object;
.source "ClassUtil.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/ClassUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClassMetadata"
.end annotation


.field private static final NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

.field private static final NO_CTORS:[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;


.field private _annotations:[Ljava/lang/annotation/Annotation;

.field private _constructors:[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

.field private _fields:[Ljava/lang/reflect/Field;

.field private final _forClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private _genericInterfaces:[Ljava/lang/reflect/Type;

.field private _hasEnclosingMethod:Ljava/lang/Boolean;

.field private _interfaces:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private _methods:[Ljava/lang/reflect/Method;

.field private _packageName:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1111
    new-array v0, v1, [Ljava/lang/annotation/Annotation;

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 1112
    new-array v0, v1, [Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->NO_CTORS:[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1127
    .local p1, "forClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    .line 1129
    return-void
.end method

.method private isObjectOrPrimitive()Z
    .locals 2

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-static {}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->access$100()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


.method public getConstructors()[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .locals 6

    .prologue
    .line 1179
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_constructors:[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 1180
    .local v3, "result":[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    if-nez v3, :cond_2

    .line 1183
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->isObjectOrPrimitive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1184
    :cond_0
    sget-object v3, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->NO_CTORS:[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 1193
    :cond_1
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_constructors:[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 1195
    :cond_2
    return-object v3

    .line 1186
    :cond_3
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1187
    .local v2, "rawCtors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v1, v2

    .line 1188
    .local v1, "len":I
    new-array v3, v1, [Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 1189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1190
    new-instance v4, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    aget-object v5, v2, v0

    invoke-direct {v4, v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v4, v3, v0

    .line 1189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_annotations:[Ljava/lang/annotation/Annotation;

    .line 1169
    .local v0, "result":[Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_0

    .line 1170
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->isObjectOrPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 1171
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_annotations:[Ljava/lang/annotation/Annotation;

    .line 1173
    :cond_0
    return-object v0

    .line 1170
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .locals 2

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_fields:[Ljava/lang/reflect/Field;

    .line 1201
    .local v0, "fields":[Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    .line 1202
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1203
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_fields:[Ljava/lang/reflect/Field;

    .line 1205
    :cond_0
    return-object v0
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_methods:[Ljava/lang/reflect/Method;

    .line 1211
    .local v0, "methods":[Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 1212
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1213
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_methods:[Ljava/lang/reflect/Method;

    .line 1215
    :cond_0
    return-object v0
.end method

.method public getGenericInterfaces()[Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_genericInterfaces:[Ljava/lang/reflect/Type;

    .line 1158
    .local v0, "result":[Ljava/lang/reflect/Type;
    if-nez v0, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1160
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_genericInterfaces:[Ljava/lang/reflect/Type;

    .line 1162
    :cond_0
    return-object v0
.end method

.method public getInterfaces()[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_interfaces:[Ljava/lang/Class;

    .line 1148
    .local v0, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1149
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 1150
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_interfaces:[Ljava/lang/Class;

    .line 1152
    :cond_0
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1132
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_packageName:Ljava/lang/String;

    .line 1133
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1134
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 1135
    .local v1, "pkg":Ljava/lang/Package;
    if-nez v1, :cond_3

    move-object v0, v2

    .line 1136
    :goto_0
    if-nez v0, :cond_0

    .line 1137
    const-string v0, ""

    .line 1139
    :cond_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_packageName:Ljava/lang/String;

    .line 1141
    .end local v1    # "pkg":Ljava/lang/Package;
    :cond_1
    const-string v3, ""

    if-ne v0, v3, :cond_2

    move-object v0, v2

    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    return-object v0

    .line 1135
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "pkg":Ljava/lang/Package;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasEnclosingMethod()Z
    .locals 2

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_hasEnclosingMethod:Ljava/lang/Boolean;

    .line 1222
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 1223
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->isObjectOrPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1224
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_hasEnclosingMethod:Ljava/lang/Boolean;

    .line 1226
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1223
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
