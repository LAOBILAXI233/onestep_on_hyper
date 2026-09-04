.class public Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;
.super Ljava/lang/Object;
.source "StdKeySerializers.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$EnumKeySerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$StringKeySerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;,
        Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;
    }
.end annotation


.field protected static final DEFAULT_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected static final DEFAULT_STRING_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->DEFAULT_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 19
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$StringKeySerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$StringKeySerializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->DEFAULT_STRING_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->DEFAULT_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v0
.end method

.method public static getFallbackKeySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .param p0, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "rawKeyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    .line 86
    const-class v0, Ljava/lang/Enum;

    if-ne p1, v0, :cond_0

    .line 87
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;-><init>()V

    .line 94
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/util/EnumValues;->constructFromName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumValues;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$EnumKeySerializer;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/EnumValues;)Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$EnumKeySerializer;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->DEFAULT_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_0
.end method

.method public static getStdKeySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2
    .param p0, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "useDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "rawKeyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x5

    .line 39
    if-eqz p1, :cond_0

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    .line 40
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Dynamic;-><init>()V

    .line 66
    :goto_0
    return-object v0

    .line 42
    :cond_1
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_2

    .line 43
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->DEFAULT_STRING_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    :cond_3
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    goto :goto_0

    .line 50
    :cond_4
    const-class v0, Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 51
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    goto :goto_0

    .line 53
    :cond_5
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    goto :goto_0

    .line 56
    :cond_6
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 57
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    goto :goto_0

    .line 60
    :cond_7
    const-class v0, Ljava/util/UUID;

    if-ne p1, v0, :cond_8

    .line 61
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;-><init>(ILjava/lang/Class;)V

    goto :goto_0

    .line 63
    :cond_8
    if-eqz p2, :cond_9

    .line 64
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->DEFAULT_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_0

    .line 66
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method
