.class Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;
.super Ljava/lang/Object;
.source "Utils.java"

.implements Ljava/util/concurrent/Callable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/data/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenerateShadowIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


.field private final mContext:Landroid/content/Context;

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mItem:Lcom/smartisanos/launcher/data/ItemInfo;


.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/smartisanos/launcher/data/ItemInfo;Landroid/content/Context;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "info"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-object p1, p0, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 897
    iput-object p2, p0, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;->mItem:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 898
    iput-object p3, p0, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;->mContext:Landroid/content/Context;

    .line 899
    return-void
.end method


.method public call()Landroid/content/ContentValues;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 903
    iget-object v3, p0, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;->mItem:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/smartisanos/home/Launcher;->isSystemAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 904
    .local v1, "isSystem":Z
    iget-object v3, p0, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;->mItem:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iget-object v3, p0, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;->mItem:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v4, v5, v3, v6, v1}, Lcom/smartisanos/launcher/LauncherModel;->getIconDataContentValues(JLjava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 905
    .local v0, "cv":Landroid/content/ContentValues;
    if-nez v0, :cond_2

    .line 906
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 907
    .local v2, "logInfo":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;->mItem:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v3, :cond_3

    .line 908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;->mItem:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 912
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 913
    const-string v3, "[mContext is null]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 915
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 916
    const-string v3, "[mDrawable is null]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 918
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GenerateShadowIconTask, cv is null ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 920
    .end local v2    # "logInfo":Ljava/lang/StringBuffer;
    :cond_2
    return-object v0

    .line 910
    .restart local v2    # "logInfo":Ljava/lang/StringBuffer;
    :cond_3
    const-string v3, "[mItem is null]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;->call()Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method
