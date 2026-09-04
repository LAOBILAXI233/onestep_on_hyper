.class public Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
.super Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
.source "ContextAttributes.java"

.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation


.field protected static final EMPTY:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;

.field protected static final NULL_SURROGATE:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x1L


.field protected transient _nonShared:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _shared:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->EMPTY:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->NULL_SURROGATE:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "shared":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;

    .line 95
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "shared":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local p2, "nonShared":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;

    .line 99
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;

    .line 100
    return-void
.end method

.method private _copy(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "src":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getEmpty()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->EMPTY:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;

    return-object v0
.end method


.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 162
    .local v0, "ob":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 163
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->NULL_SURROGATE:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 169
    .end local v0    # "ob":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected nonSharedInstance(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    .line 210
    sget-object p2, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->NULL_SURROGATE:Ljava/lang/Object;

    .line 212
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;

    invoke-direct {v1, v2, v0}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object v1
.end method

.method public withPerCallAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 176
    if-nez p2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    sget-object p2, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->NULL_SURROGATE:Ljava/lang/Object;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->nonSharedInstance(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object p0

    .line 193
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
    :cond_1
    :goto_0
    return-object p0

    .line 180
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public withSharedAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 117
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->EMPTY:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;

    if-ne p0, v1, :cond_0

    .line 118
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 122
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;-><init>(Ljava/util/Map;)V

    return-object v1

    .line 120
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public withSharedAttributes(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "shared":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public withoutSharedAttribute(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
    :cond_0
    :goto_0
    return-object p0

    .line 138
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 140
    sget-object p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->EMPTY:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;

    goto :goto_0

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 147
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method
