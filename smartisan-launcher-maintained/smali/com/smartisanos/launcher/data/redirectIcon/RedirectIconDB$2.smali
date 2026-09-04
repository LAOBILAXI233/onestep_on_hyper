.class final Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$2;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "RedirectIconDB.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->updateIconStatus(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$cmp:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$status:Z


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 238
    iput-boolean p2, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$2;->val$status:Z

    iput-object p3, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$2;->val$pkg:Ljava/lang/String;

    iput-object p4, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$2;->val$cmp:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 241
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "use_improved_app_icon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$2;->val$status:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data1"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$2;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "componentName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$2;->val$cmp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "whereCase":Ljava/lang/String;
    iget-object v2, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$2;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "redirect_icons"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_insert

    .line 246
    return-void

    :cond_insert
    const-string v2, "packageName"

    iget-object v3, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$2;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "componentName"

    iget-object v3, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$2;->val$cmp:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$2;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "redirect_icons"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method
