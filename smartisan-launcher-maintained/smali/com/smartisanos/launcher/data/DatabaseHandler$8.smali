.class final Lcom/smartisanos/launcher/data/DatabaseHandler$8;
.super Lcom/smartisanos/smengine/Event;
.source "DatabaseHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventUpdateMessageCount(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$itemId:J

.field final synthetic val$msgCount:I


.method constructor <init>(IJI)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 2225
    iput-wide p2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$8;->val$itemId:J

    iput p4, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$8;->val$msgCount:I

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    .line 2228
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2229
    iget-wide v2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$8;->val$itemId:J

    iget v4, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$8;->val$msgCount:I

    invoke-static {v2, v3, v4}, Lcom/smartisanos/launcher/LauncherModel;->updateMapMsgNumber(JI)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    .line 2230
    .local v1, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v1, :cond_0

    .line 2231
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    iget-wide v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v2, v4, v5}, Lcom/smartisanos/launcher/view/MainView;->getCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 2232
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 2233
    iget v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->updateFlagMessageNumber(I)V

    .line 2237
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v1    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_0
    return-void
.end method
