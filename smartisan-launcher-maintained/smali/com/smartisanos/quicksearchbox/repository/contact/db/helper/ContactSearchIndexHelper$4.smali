.class Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$4;
.super Ljava/lang/Object;
.source "ContactSearchIndexHelper.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->removeItems(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

.field final synthetic val$removeWhereArgs:[[Ljava/lang/String;


.method constructor <init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;[[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$4;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$4;->val$removeWhereArgs:[[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 629
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$4;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->access$300(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;)Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    move-result-object v0

    const-string v1, "contact_index"

    const-string v2, "_id=?"

    iget-object v3, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$4;->val$removeWhereArgs:[[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->delete(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)[I

    .line 630
    return-void
.end method
