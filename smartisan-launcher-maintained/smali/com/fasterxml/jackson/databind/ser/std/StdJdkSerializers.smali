.class public Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;
.super Ljava/lang/Object;
.source "StdJdkSerializers.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicLongSerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicIntegerSerializer;,
        Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicBooleanSerializer;
    }
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static all()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v0, "sers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    .line 32
    .local v1, "sls":Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
    const-class v2, Ljava/net/URL;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-class v2, Ljava/net/URI;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-class v2, Ljava/util/Currency;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-class v2, Ljava/util/UUID;

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-class v2, Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-class v2, Ljava/util/Locale;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-class v3, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicBooleanSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const-class v3, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicIntegerSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-class v3, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicLongSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-class v2, Ljava/io/File;

    const-class v3, Lcom/fasterxml/jackson/databind/ser/std/FileSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-class v2, Ljava/lang/Class;

    const-class v3, Lcom/fasterxml/jackson/databind/ser/std/ClassSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-class v2, Ljava/lang/Void;

    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :try_start_0
    const-class v2, Ljava/sql/Timestamp;

    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-class v2, Ljava/sql/Date;

    const-class v3, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-class v2, Ljava/sql/Time;

    const-class v3, Lcom/fasterxml/jackson/databind/ser/std/SqlTimeSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 62
    :catch_0
    move-exception v2

    goto :goto_0
.end method
