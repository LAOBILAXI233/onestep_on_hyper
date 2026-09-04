.class public Lcom/smartisanos/smengine/MeshManager;
.super Ljava/lang/Object;
.source "MeshManager.java"


.field private mMeshMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/smengine/Mesh;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    return-void
.end method


.method public addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/Mesh;->setIsInMeshManager(Z)V

    .line 20
    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/Mesh;->setName(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Mesh;

    return-object v0
.end method

.method public clearMeshContainsName(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v4, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    iget-object v4, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/Mesh;

    .line 79
    .local v3, "tmpMesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/Mesh;->clear(Z)V

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 83
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "tmpMesh":Lcom/smartisanos/smengine/Mesh;
    :cond_1
    return-void
.end method

.method public getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Mesh;

    return-object v0
.end method

.method public removeMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v1, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Mesh;

    .line 25
    .local v0, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-eqz v0, :cond_0

    .line 26
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Mesh;->setIsInMeshManager(Z)V

    .line 27
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Mesh;->clear(Z)V

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/Mesh;

    return-object v1
.end method

.method public removeMesh(Lcom/smartisanos/smengine/Mesh;)V
    .locals 5
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;

    .prologue
    .line 32
    iget-object v3, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 33
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    .local v1, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/Mesh;

    .line 35
    .local v2, "tmpMesh":Lcom/smartisanos/smengine/Mesh;
    if-ne v2, p1, :cond_0

    .line 36
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/Mesh;->setIsInMeshManager(Z)V

    .line 37
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/Mesh;->clear(Z)V

    .line 38
    iget-object v3, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "tmpMesh":Lcom/smartisanos/smengine/Mesh;
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeXML(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "xmlWritter"    # Lorg/xmlpull/v1/XmlSerializer;

    .prologue
    .line 48
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "MeshManager"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    const/4 v3, 0x0

    const-string v4, "count"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    iget-object v3, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 51
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 52
    .local v0, "i":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 53
    .local v2, "str":Ljava/lang/String;
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "child"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    goto :goto_0

    .line 56
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    .restart local v2    # "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/smartisanos/smengine/MeshManager;->mMeshMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/Mesh;

    goto :goto_1

    .line 59
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    const-string v4, "MeshManager"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "i":I
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 60
    :catch_0
    move-exception v3

    goto :goto_2
.end method
