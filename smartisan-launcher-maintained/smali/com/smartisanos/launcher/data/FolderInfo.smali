.class public Lcom/smartisanos/launcher/data/FolderInfo;
.super Lcom/smartisanos/launcher/data/ItemInfo;
.source "FolderInfo.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/data/FolderInfo$FolderListener;
    }
.end annotation


.field public contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/data/FolderInfo$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field public opened:Z


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/data/FolderInfo;->listeners:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/smartisanos/launcher/data/FolderInfo;->itemType:B

    .line 24
    return-void
.end method


.method public add(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 32
    iget-object v1, p0, Lcom/smartisanos/launcher/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/data/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/smartisanos/launcher/data/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/launcher/data/FolderInfo$FolderListener;->onAdd(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/FolderInfo;->itemsChanged()V

    .line 37
    return-void
.end method

.method addListener(Lcom/smartisanos/launcher/data/FolderInfo$FolderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/smartisanos/launcher/data/FolderInfo$FolderListener;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/smartisanos/launcher/data/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method itemsChanged()V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/data/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/smartisanos/launcher/data/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/FolderInfo$FolderListener;

    invoke-interface {v1}, Lcom/smartisanos/launcher/data/FolderInfo$FolderListener;->onItemsChanged()V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public remove(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 45
    iget-object v1, p0, Lcom/smartisanos/launcher/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/data/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/smartisanos/launcher/data/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/launcher/data/FolderInfo$FolderListener;->onRemove(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/FolderInfo;->itemsChanged()V

    .line 50
    return-void
.end method

.method removeListener(Lcom/smartisanos/launcher/data/FolderInfo$FolderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/smartisanos/launcher/data/FolderInfo$FolderListener;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smartisanos/launcher/data/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/smartisanos/launcher/data/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/smartisanos/launcher/data/FolderInfo;->title:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/data/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/smartisanos/launcher/data/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/launcher/data/FolderInfo$FolderListener;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
