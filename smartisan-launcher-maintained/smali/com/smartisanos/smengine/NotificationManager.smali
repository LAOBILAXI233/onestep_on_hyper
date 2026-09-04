.class public Lcom/smartisanos/smengine/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/NotificationManager$Observer;
    }
.end annotation


.field private static mNotificationManager:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/smartisanos/smengine/NotificationManager;",
            ">;"
        }
    .end annotation
.end field


.field private mObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/NotificationManager$Observer;",
            ">;>;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/NotificationManager;->mNotificationManager:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/NotificationManager;->mObserverMap:Ljava/util/HashMap;

    .line 18
    return-void
.end method

.method public static getCurrentNotificationManager()Lcom/smartisanos/smengine/NotificationManager;
    .locals 2

    .prologue
    .line 20
    sget-object v1, Lcom/smartisanos/smengine/NotificationManager;->mNotificationManager:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/NotificationManager;

    .line 21
    .local v0, "m":Lcom/smartisanos/smengine/NotificationManager;
    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/smartisanos/smengine/NotificationManager;

    .end local v0    # "m":Lcom/smartisanos/smengine/NotificationManager;
    invoke-direct {v0}, Lcom/smartisanos/smengine/NotificationManager;-><init>()V

    .line 23
    .restart local v0    # "m":Lcom/smartisanos/smengine/NotificationManager;
    sget-object v1, Lcom/smartisanos/smengine/NotificationManager;->mNotificationManager:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 25
    :cond_0
    return-object v0
.end method


.method public addObserver(Ljava/lang/String;Lcom/smartisanos/smengine/NotificationManager$Observer;)V
    .locals 5
    .param p1, "notificationName"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/smartisanos/smengine/NotificationManager$Observer;

    .prologue
    .line 28
    if-nez p2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/smengine/NotificationManager;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 32
    .local v3, "observerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/NotificationManager$Observer;>;"
    if-nez v3, :cond_2

    .line 33
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "observerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/NotificationManager$Observer;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .restart local v3    # "observerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/NotificationManager$Observer;>;"
    iget-object v4, p0, Lcom/smartisanos/smengine/NotificationManager;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 39
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/NotificationManager$Observer;

    .line 40
    .local v2, "obs":Lcom/smartisanos/smengine/NotificationManager$Observer;
    if-ne v2, p2, :cond_4

    .line 41
    const/4 v0, 0x1

    .line 45
    .end local v2    # "obs":Lcom/smartisanos/smengine/NotificationManager$Observer;
    :cond_3
    if-nez v0, :cond_0

    .line 46
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    .restart local v2    # "obs":Lcom/smartisanos/smengine/NotificationManager$Observer;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public postNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V
    .locals 4
    .param p1, "notificationName"    # Ljava/lang/String;
    .param p2, "obj"    # Lcom/smartisanos/smengine/Notification;

    .prologue
    .line 81
    iget-object v3, p0, Lcom/smartisanos/smengine/NotificationManager;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 82
    .local v2, "observerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/NotificationManager$Observer;>;"
    if-eqz v2, :cond_0

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 84
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/NotificationManager$Observer;

    .line 85
    .local v1, "observer":Lcom/smartisanos/smengine/NotificationManager$Observer;
    invoke-interface {v1, p1, p2}, Lcom/smartisanos/smengine/NotificationManager$Observer;->handleNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    .end local v1    # "observer":Lcom/smartisanos/smengine/NotificationManager$Observer;
    :cond_0
    return-void
.end method

.method public removeObserver(Lcom/smartisanos/smengine/NotificationManager$Observer;)V
    .locals 8
    .param p1, "observer"    # Lcom/smartisanos/smengine/NotificationManager$Observer;

    .prologue
    .line 62
    if-nez p1, :cond_1

    .line 79
    :cond_0
    return-void

    .line 65
    :cond_1
    iget-object v6, p0, Lcom/smartisanos/smengine/NotificationManager;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 66
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    .local v1, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/smartisanos/smengine/NotificationManager;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 68
    .local v3, "observerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/NotificationManager$Observer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v4, "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/NotificationManager$Observer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 70
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/smengine/NotificationManager$Observer;

    .line 71
    .local v5, "tmpObserver":Lcom/smartisanos/smengine/NotificationManager$Observer;
    if-ne v5, p1, :cond_3

    .line 72
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v5, v1}, Lcom/smartisanos/smengine/NotificationManager$Observer;->onRemove(Ljava/lang/String;)V

    .line 77
    .end local v5    # "tmpObserver":Lcom/smartisanos/smengine/NotificationManager$Observer;
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 69
    .restart local v5    # "tmpObserver":Lcom/smartisanos/smengine/NotificationManager$Observer;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeObserver(Ljava/lang/String;)V
    .locals 4
    .param p1, "notificationName"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v3, p0, Lcom/smartisanos/smengine/NotificationManager;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 52
    .local v2, "observerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/NotificationManager$Observer;>;"
    if-eqz v2, :cond_1

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/NotificationManager$Observer;

    .line 55
    .local v1, "observer":Lcom/smartisanos/smengine/NotificationManager$Observer;
    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/NotificationManager$Observer;->onRemove(Ljava/lang/String;)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "observer":Lcom/smartisanos/smengine/NotificationManager$Observer;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 58
    iget-object v3, p0, Lcom/smartisanos/smengine/NotificationManager;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
