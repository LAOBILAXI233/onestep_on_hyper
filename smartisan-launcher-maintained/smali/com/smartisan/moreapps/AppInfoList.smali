.class public Lcom/smartisan/moreapps/AppInfoList;
.super Ljava/lang/Object;
.source "AppInfoList.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    }
.end annotation


.field private final APP_WEBS:[Ljava/lang/String;

.field public mActiveStates:[Z

.field public mClassNames:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/moreapps/AppInfoList$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageNames:[Ljava/lang/String;


.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x7

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->mActiveStates:[Z

    .line 24
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.smartisanos.home"

    aput-object v1, v0, v4

    const-string v1, "com.smartisan.notes"

    aput-object v1, v0, v5

    const-string v1, "com.smartisan.calendar"

    aput-object v1, v0, v6

    const-string v1, "com.smartisan.clock"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "com.smartisan.email"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.smartisan.mover"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.smartisan.reader"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->mPackageNames:[Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->mPackageNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->mClassNames:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "http://update.smartisanos.com/launcher/update_info"

    aput-object v1, v0, v4

    const-string v1, "http://update.smartisanos.com/notes/update_info"

    aput-object v1, v0, v5

    const-string v1, "http://update.smartisanos.com/calendar/update_info"

    aput-object v1, v0, v6

    const-string v1, "http://update.smartisanos.com/clock/update_info"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "http://update.smartisanos.com/email/update_info"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "http://update.smartisanos.com/smiling_cloud_sync/update_info"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://update.smartisanos.com/reader/update_info"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->APP_WEBS:[Ljava/lang/String;

    .line 48
    return-void

    .line 20
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x7

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->mActiveStates:[Z

    .line 24
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.smartisanos.home"

    aput-object v1, v0, v4

    const-string v1, "com.smartisan.notes"

    aput-object v1, v0, v5

    const-string v1, "com.smartisan.calendar"

    aput-object v1, v0, v6

    const-string v1, "com.smartisan.clock"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "com.smartisan.email"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.smartisan.mover"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.smartisan.reader"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->mPackageNames:[Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->mPackageNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->mClassNames:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "http://update.smartisanos.com/launcher/update_info"

    aput-object v1, v0, v4

    const-string v1, "http://update.smartisanos.com/notes/update_info"

    aput-object v1, v0, v5

    const-string v1, "http://update.smartisanos.com/calendar/update_info"

    aput-object v1, v0, v6

    const-string v1, "http://update.smartisanos.com/clock/update_info"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "http://update.smartisanos.com/email/update_info"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "http://update.smartisanos.com/smiling_cloud_sync/update_info"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://update.smartisanos.com/reader/update_info"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->APP_WEBS:[Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/smartisan/moreapps/AppInfoList;->mContext:Landroid/content/Context;

    .line 52
    return-void

    .line 20
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private drawableToBitmap(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "drawableId"    # I

    .prologue
    .line 195
    const/16 v0, 0x90

    .line 196
    .local v0, "ICON_SIZE":I
    iget-object v4, p0, Lcom/smartisan/moreapps/AppInfoList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 197
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/smartisan/libmoreapps/R$integer;->item_icon_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 198
    iget-object v4, p0, Lcom/smartisan/moreapps/AppInfoList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 199
    .local v3, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    invoke-static {v3, v0, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 200
    .local v1, "iconB":Landroid/graphics/Bitmap;
    if-eq v1, v3, :cond_0

    .line 201
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    :cond_0
    return-object v1
.end method


.method public clearAppInfoSelf(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v3, 0x0

    .line 137
    .local v3, "isRemoved":Z
    const/4 v1, -0x1

    .line 139
    .local v1, "index":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 141
    iget-object v4, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisan/moreapps/AppInfoList$AppInfo;

    .line 142
    .local v2, "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    iget-object v4, v2, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    move v1, v0

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    :cond_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 147
    iget-object v4, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 150
    .end local v0    # "i":I
    :cond_2
    return v3
.end method

.method public get(I)Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 124
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;

    goto :goto_0
.end method

.method public getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/smartisan/moreapps/AppInfoList;->mPackageNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/smartisan/moreapps/AppInfoList;->mPackageNames:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 171
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/smartisan/moreapps/AppInfoList;->mClassNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 173
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/smartisan/moreapps/AppInfoList;->mClassNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v0, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v1    # "i":I
    .end local v2    # "pkg":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 169
    .restart local v1    # "i":I
    .restart local v2    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDownloadLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisan/moreapps/AppInfoList$AppInfo;

    .line 186
    .local v1, "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    iget-object v2, v1, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, v1, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mUpdateInfo:Ljava/lang/String;

    .line 191
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    :goto_1
    return-object v2

    .line 184
    .restart local v0    # "i":I
    .restart local v1    # "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public initList()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 55
    const/4 v1, 0x7

    new-array v8, v1, [I

    sget v1, Lcom/smartisan/libmoreapps/R$drawable;->launcher:I

    aput v1, v8, v5

    sget v1, Lcom/smartisan/libmoreapps/R$drawable;->notes:I

    aput v1, v8, v11

    sget v1, Lcom/smartisan/libmoreapps/R$drawable;->calendar:I

    aput v1, v8, v12

    sget v1, Lcom/smartisan/libmoreapps/R$drawable;->clock:I

    aput v1, v8, v13

    sget v1, Lcom/smartisan/libmoreapps/R$drawable;->email:I

    aput v1, v8, v14

    const/4 v1, 0x5

    sget v2, Lcom/smartisan/libmoreapps/R$drawable;->mover:I

    aput v2, v8, v1

    const/4 v1, 0x6

    sget v2, Lcom/smartisan/libmoreapps/R$drawable;->reader:I

    aput v2, v8, v1

    .line 65
    .local v8, "appIcons":[I
    const/4 v1, 0x7

    new-array v9, v1, [I

    sget v1, Lcom/smartisan/libmoreapps/R$string;->launcher_app_txt:I

    aput v1, v9, v5

    sget v1, Lcom/smartisan/libmoreapps/R$string;->notes_app_txt:I

    aput v1, v9, v11

    sget v1, Lcom/smartisan/libmoreapps/R$string;->calendar_app_txt:I

    aput v1, v9, v12

    sget v1, Lcom/smartisan/libmoreapps/R$string;->clock_app_txt:I

    aput v1, v9, v13

    sget v1, Lcom/smartisan/libmoreapps/R$string;->email_app_txt:I

    aput v1, v9, v14

    const/4 v1, 0x5

    sget v2, Lcom/smartisan/libmoreapps/R$string;->mover_app_txt:I

    aput v2, v9, v1

    const/4 v1, 0x6

    sget v2, Lcom/smartisan/libmoreapps/R$string;->reader_app_txt:I

    aput v2, v9, v1

    .line 75
    .local v9, "appNameIds":[I
    const/4 v1, 0x7

    new-array v7, v1, [I

    sget v1, Lcom/smartisan/libmoreapps/R$string;->launcher_des_txt:I

    aput v1, v7, v5

    sget v1, Lcom/smartisan/libmoreapps/R$string;->notes_des_txt:I

    aput v1, v7, v11

    sget v1, Lcom/smartisan/libmoreapps/R$string;->calendar_des_txt:I

    aput v1, v7, v12

    sget v1, Lcom/smartisan/libmoreapps/R$string;->clock_des_txt:I

    aput v1, v7, v13

    sget v1, Lcom/smartisan/libmoreapps/R$string;->email_des_txt:I

    aput v1, v7, v14

    const/4 v1, 0x5

    sget v2, Lcom/smartisan/libmoreapps/R$string;->mover_des_txt:I

    aput v2, v7, v1

    const/4 v1, 0x6

    sget v2, Lcom/smartisan/libmoreapps/R$string;->reader_des_txt:I

    aput v2, v7, v1

    .line 85
    .local v7, "appDesIds":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    .line 86
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v1, v8

    if-ge v10, v1, :cond_0

    .line 87
    aget v1, v8, v10

    invoke-direct {p0, v1}, Lcom/smartisan/moreapps/AppInfoList;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 88
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/smartisan/moreapps/AppInfoList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget v2, v9, v10

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "appName":Ljava/lang/String;
    iget-object v1, p0, Lcom/smartisan/moreapps/AppInfoList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget v2, v7, v10

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "appDes":Ljava/lang/String;
    new-instance v0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;

    iget-object v1, p0, Lcom/smartisan/moreapps/AppInfoList;->mActiveStates:[Z

    aget-boolean v1, v1, v10

    iget-object v2, p0, Lcom/smartisan/moreapps/AppInfoList;->mPackageNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    iget-object v5, p0, Lcom/smartisan/moreapps/AppInfoList;->APP_WEBS:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/smartisan/moreapps/AppInfoList$AppInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 97
    .local v0, "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    iget-object v1, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    .end local v3    # "appName":Ljava/lang/String;
    .end local v4    # "appDes":Ljava/lang/String;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public resetList()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    :cond_0
    return-void
.end method

.method public setClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisan/moreapps/AppInfoList;->mPackageNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/smartisan/moreapps/AppInfoList;->mPackageNames:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 115
    .local v1, "knownPkg":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/smartisan/moreapps/AppInfoList;->mClassNames:[Ljava/lang/String;

    aput-object p2, v2, v0

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "i":I
    .end local v1    # "knownPkg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updateInfoList(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # Z

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "updated":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;

    .line 158
    .local v0, "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    iget-object v3, v0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    iput-boolean p2, v0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mIsActive:Z

    goto :goto_0

    .line 164
    .end local v0    # "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    :cond_1
    return v1
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/moreapps/AppInfoList$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/moreapps/AppInfoList$AppInfo;>;"
    iput-object p1, p0, Lcom/smartisan/moreapps/AppInfoList;->mInfoList:Ljava/util/ArrayList;

    .line 109
    return-void
.end method
