.class Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$5;
.super Ljava/lang/Object;
.source "ContactSearchIndexHelper.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->addItems(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

.field final synthetic val$contentValues:[Landroid/content/ContentValues;


.method constructor <init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;[Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$5;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$5;->val$contentValues:[Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 643
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$5;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->access$300(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;)Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    move-result-object v0

    const-string v1, "contact_index"

    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$5;->val$contentValues:[Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->insert(Ljava/lang/String;[Landroid/content/ContentValues;)[J

    .line 644
    return-void
.end method
