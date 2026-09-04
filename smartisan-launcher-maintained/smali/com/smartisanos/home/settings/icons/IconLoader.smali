.class public Lcom/smartisanos/home/settings/icons/IconLoader;
.super Landroid/os/AsyncTask;
.source "IconLoader.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/settings/icons/IconLoader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


.field public static final APPEND_APP_ICON:I = 0x1

.field public static final EXTRA_INVALID_ASSET:Ljava/lang/String; = "extra_invalid_asset"

.field public static final LOAD_APP_ICON:I = 0x0

.field private static final LOAD_FAILED:I = 0x0

.field private static final LOAD_SUCCESS:I = 0x1

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mCallback:Lcom/smartisanos/home/settings/icons/IconLoader$Callback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIconInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/smartisanos/home/settings/icons/IconLoader;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/settings/icons/IconLoader;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/smartisanos/home/settings/icons/IconLoader$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # I
    .param p3, "callback"    # Lcom/smartisanos/home/settings/icons/IconLoader$Callback;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/smartisanos/home/settings/icons/IconLoader;->mContext:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/smartisanos/home/settings/icons/IconLoader;->mToken:I

    .line 44
    iput-object p3, p0, Lcom/smartisanos/home/settings/icons/IconLoader;->mCallback:Lcom/smartisanos/home/settings/icons/IconLoader$Callback;

    .line 45
    return-void
.end method

.method private loadAppIconList([Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "arrays":[Ljava/util/HashMap;, "[Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    iget-object v6, p0, Lcom/smartisanos/home/settings/icons/IconLoader;->mIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 74
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    if-eqz v2, :cond_1

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/icons/IconLoader;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_continue_load

    return-void

    :cond_continue_load
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 77
    .local v1, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->getPrimaryId()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/smartisanos/home/settings/icons/IconLoader;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-virtual {v6, v1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->loadOfficialIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 79
    .local v5, "officialIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 80
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 86
    .local v4, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "extra_invalid_asset"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 88
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 89
    iget-object v6, p0, Lcom/smartisanos/home/settings/icons/IconLoader;->mHandler:Landroid/os/Handler;

    if-eqz v6, :goto_0

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/icons/IconLoader;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_send_invalid_asset

    goto :goto_0

    :cond_send_invalid_asset
    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 93
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "officialIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method


.method protected varargs doInBackground([Ljava/util/HashMap;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .local p1, "params":[Ljava/util/HashMap;, "[Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    const/4 v1, 0x0

    .line 49
    iget v0, p0, Lcom/smartisanos/home/settings/icons/IconLoader;->mToken:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/icons/IconLoader;->loadAppIconList([Ljava/util/HashMap;)V

    .line 52
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/icons/IconLoader;->doInBackground([Ljava/util/HashMap;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/icons/IconLoader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/smartisanos/home/settings/icons/IconLoader;->mCallback:Lcom/smartisanos/home/settings/icons/IconLoader$Callback;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/smartisanos/home/settings/icons/IconLoader;->mCallback:Lcom/smartisanos/home/settings/icons/IconLoader$Callback;

    invoke-interface {v0}, Lcom/smartisanos/home/settings/icons/IconLoader$Callback;->onLoadFinished()V

    .line 69
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 70
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/home/settings/icons/IconLoader;->mCallback:Lcom/smartisanos/home/settings/icons/IconLoader$Callback;

    invoke-interface {v0}, Lcom/smartisanos/home/settings/icons/IconLoader$Callback;->onLoadFailed()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/icons/IconLoader;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/smartisanos/home/settings/icons/IconLoader;->mHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method public setIconList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "iconList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/home/settings/icons/IconLoader;->mIconInfoList:Ljava/util/ArrayList;

    .line 98
    iget-object v0, p0, Lcom/smartisanos/home/settings/icons/IconLoader;->mIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    return-void
.end method
