.class public Lcom/smartisanos/smengine/MaterialManager;
.super Ljava/lang/Object;
.source "MaterialManager.java"


.field private mMaterialMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/smengine/mymaterial/Material;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/MaterialManager;->mMaterialMap:Ljava/util/HashMap;

    .line 14
    return-void
.end method


.method public addMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V
    .locals 2
    .param p1, "m"    # Lcom/smartisanos/smengine/mymaterial/Material;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/smartisanos/smengine/MaterialManager;->mMaterialMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/mymaterial/Material;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 22
    iget-object v3, p0, Lcom/smartisanos/smengine/MaterialManager;->mMaterialMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 23
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/smartisanos/smengine/MaterialManager;->mMaterialMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/mymaterial/Material;

    .line 25
    .local v2, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v2}, Lcom/smartisanos/smengine/mymaterial/Material;->clear()V

    goto :goto_0

    .line 27
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_0
    return-void
.end method

.method public removeMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V
    .locals 2
    .param p1, "m"    # Lcom/smartisanos/smengine/mymaterial/Material;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/smartisanos/smengine/MaterialManager;->mMaterialMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/mymaterial/Material;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method
