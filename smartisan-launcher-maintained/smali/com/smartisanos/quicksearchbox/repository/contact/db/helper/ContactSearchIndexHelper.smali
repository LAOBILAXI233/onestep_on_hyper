.class public Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;
.super Ljava/lang/Object;
.source "ContactSearchIndexHelper.java"

.implements Lcom/smartisanos/quicksearchbox/repository/BaseDbHelper;


.field private static final EXECUTOR_TIMEOUT_SECONDS:S = 0x8s

.field private static final PHONE_CONTENT_URI:Landroid/net/Uri;

.field private static final PhoneDetailProjection_ContactId:I = 0x1

.field private static final PhoneDetailProjection_Display_Name:I = 0x3

.field private static final PhoneDetailProjection_LookUpKey:I = 0x2

.field private static final PhoneDetailProjection_Number:I = 0x4

.field private static final PhoneDetailProjection_RawId:I = 0x0

.field private static final PhonedetailProjection:[Ljava/lang/String;

.field private static final RAWCONTACT_CONTENT_URI:Landroid/net/Uri;

.field private static final Raw_IdProjection:[Ljava/lang/String;

.field private static final Raw_VersionProjection:[Ljava/lang/String;

.field private static final RawcontactsProjectionId_Id:I = 0x0

.field private static final RawcontactsProjectionId_Version:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContactSearchIndexHelper"

.field private static final mLocalContactBeanLocker:Ljava/lang/Object;

.field private static mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean; = null

.field private static final mTableName:Ljava/lang/String; = "contact_index"

.field private static sContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;


.field private DIFFTYPE_ADD:Ljava/lang/Integer;

.field private DIFFTYPE_MODIFY:Ljava/lang/Integer;

.field private DIFFTYPE_REMOVE:Ljava/lang/Integer;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;


.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeanLocker:Ljava/lang/Object;

    .line 87
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->RAWCONTACT_CONTENT_URI:Landroid/net/Uri;

    .line 89
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->PHONE_CONTENT_URI:Landroid/net/Uri;

    .line 92
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->Raw_IdProjection:[Ljava/lang/String;

    .line 98
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "version"

    aput-object v1, v0, v3

    sput-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->Raw_VersionProjection:[Ljava/lang/String;

    .line 108
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->PhonedetailProjection:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_REMOVE:Ljava/lang/Integer;

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_ADD:Ljava/lang/Integer;

    .line 64
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_MODIFY:Ljava/lang/Integer;

    .line 119
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mContext:Landroid/content/Context;

    move-object v0, p1

    .line 120
    check-cast v0, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    .line 121
    invoke-static {p1}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->getInstance(Landroid/content/Context;)Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    .line 122
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeanLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    return-object v0
.end method

.method static synthetic access$102([Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    .locals 0
    .param p0, "x0"    # [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .prologue
    .line 37
    sput-object p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;)[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->loadLocalContactBeans()[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;)Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->initLocalSearchIndexDb()Z

    move-result v0

    return v0
.end method

.method private addItems(Ljava/util/List;I)V
    .locals 4
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p1, "addList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    const/4 v2, 0x0

    new-array v0, v2, [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 636
    .local v0, "contactBeen":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "contactBeen":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    check-cast v0, [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 638
    .restart local v0    # "contactBeen":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    invoke-direct {p0, v0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->parseContactBeanToContentValues([Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)[Landroid/content/ContentValues;

    move-result-object v1

    .line 639
    .local v1, "contentValues":[Landroid/content/ContentValues;
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->initExecutor()V

    .line 640
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$5;

    invoke-direct {v3, p0, v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$5;-><init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;[Landroid/content/ContentValues;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 646
    return-void
.end method

.method private clearLocalContactBeans()V
    .locals 2

    .prologue
    .line 143
    sget-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeanLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 145
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private extractRawVersionFromLocalbean()[I
    .locals 3

    .prologue
    .line 294
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->getLocalContactBeans(Z)[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 295
    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    array-length v2, v2

    new-array v1, v2, [I

    .line 296
    .local v1, "rawVersion":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 297
    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 298
    const/4 v2, -0x1

    aput v2, v1, v0

    .line 296
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getRawDataVersion()I

    move-result v2

    aput v2, v1, v0

    goto :goto_1

    .line 303
    :cond_1
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    sget-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->sContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    invoke-direct {v0, p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->sContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    .line 128
    :cond_0
    sget-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->sContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    return-object v0
.end method

.method public static getLocalContactBeanLocker()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeanLocker:Ljava/lang/Object;

    return-object v0
.end method

.method private getLocalContactMaxRawId()I
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 786
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    const-string v1, "contact_index"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 787
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 788
    .local v6, "columnIndex_rawId":I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 789
    .local v9, "max":I
    if-nez v9, :cond_0

    .line 790
    const/4 v0, -0x1

    .line 809
    :goto_0
    return v0

    .line 794
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    .line 796
    :cond_1
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 797
    .local v10, "temp":I
    if-le v10, v9, :cond_2

    .line 798
    move v9, v10

    .line 800
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 804
    if-eqz v7, :cond_3

    .line 805
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 806
    const/4 v7, 0x0

    .end local v10    # "temp":I
    :cond_3
    :goto_1
    move v0, v9

    .line 809
    goto :goto_0

    .line 801
    :catch_0
    move-exception v8

    .line 802
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 804
    if-eqz v7, :cond_3

    .line 805
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 806
    const/4 v7, 0x0

    goto :goto_1

    .line 804
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 805
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 806
    const/4 v7, 0x0

    :cond_4
    throw v0
.end method

.method private initContentResolver()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mContentResolver:Landroid/content/ContentResolver;

    goto :goto_0
.end method

.method private initExecutor()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 54
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method

.method private initLocalSearchIndexDb()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 697
    const-string v6, "\u5f00\u59cb\u521d\u59cb\u5316\u7d22\u5f15\u8868..."

    invoke-static {v6}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 699
    .local v2, "start":J
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->loadDetailFromProvider()[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    move-result-object v0

    .line 700
    .local v0, "contactBeanArray":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    if-eqz v0, :cond_2

    .line 701
    array-length v6, v0

    if-nez v6, :cond_0

    .line 715
    :goto_0
    return v4

    .line 704
    :cond_0
    const-string v6, "\u521d\u59cb\u5316\u5e94\u7528\u8054\u7cfb\u4eba\u7d22\u5f15\u8868ing"

    invoke-static {v6}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 705
    invoke-direct {p0, v0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->parseContactBeanToContentValues([Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)[Landroid/content/ContentValues;

    move-result-object v1

    .line 706
    .local v1, "contentValues":[Landroid/content/ContentValues;
    invoke-virtual {p0, v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->insertBulk([Landroid/content/ContentValues;)[J

    move-result-object v6

    if-nez v6, :cond_1

    .line 707
    const-string v4, "\u521d\u59cb\u5316\u5e94\u7528\u8054\u7cfb\u4eba\u7d22\u5f15\u8868\u5931\u8d25"

    invoke-static {v4}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->error(Ljava/lang/String;)V

    move v4, v5

    .line 708
    goto :goto_0

    .line 710
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u521d\u59cb\u5316\u7d22\u5f15\u8868\u603b\u7528\u65f6 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 714
    .end local v1    # "contentValues":[Landroid/content/ContentValues;
    :cond_2
    const-string v4, "\u521d\u59cb\u5316\u5e94\u7528\u8054\u7cfb\u4eba\u7d22\u5f15\u8868\u5931\u8d25"

    invoke-static {v4}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->error(Ljava/lang/String;)V

    move v4, v5

    .line 715
    goto :goto_0
.end method

.method private loadLocalContactBeans()[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    .locals 26

    .prologue
    .line 819
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 820
    .local v23, "searchIndex":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    const-string v3, "contact_index"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 821
    .local v20, "cursor":Landroid/database/Cursor;
    if-nez v20, :cond_1

    .line 822
    const/16 v19, 0x0

    .line 868
    :cond_0
    :goto_0
    return-object v19

    .line 824
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 825
    .local v24, "start":J
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->getLocalContactMaxRawId()I

    move-result v22

    .line 826
    .local v22, "length":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_2

    .line 827
    const/16 v19, 0x0

    goto :goto_0

    .line 829
    :cond_2
    add-int/lit8 v2, v22, 0x1

    new-array v0, v2, [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    move-object/from16 v19, v0

    .line 831
    .local v19, "contactBeanArray":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    const-string v2, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 832
    .local v16, "columnIndex_rawId":I
    const-string v2, "contact_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 833
    .local v10, "columnIndex_contactId":I
    const-string v2, "version"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 834
    .local v18, "columnIndex_version":I
    const-string v2, "lookupkey"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 835
    .local v12, "columnIndex_lookupkey":I
    const-string v2, "displayname"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 836
    .local v11, "columnIndex_displayname":I
    const-string v2, "number"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 837
    .local v13, "columnIndex_number":I
    const-string v2, "origin_index"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 838
    .local v14, "columnIndex_originindex":I
    const-string v2, "qwerty_index"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 839
    .local v15, "columnIndex_qwetryindex":I
    const-string v2, "t9_index"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 841
    .local v17, "columnIndex_t9index":I
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 842
    const/16 v19, 0x0

    .line 863
    .end local v19    # "contactBeanArray":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    if-eqz v20, :cond_0

    .line 864
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 865
    const/16 v20, 0x0

    goto :goto_0

    .line 845
    .restart local v19    # "contactBeanArray":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    :cond_3
    :try_start_1
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 846
    .local v3, "rawId":I
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 847
    .local v6, "displayName":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v2

    .line 848
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v2

    .line 849
    const/4 v2, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v2

    .line 850
    new-instance v2, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 851
    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 852
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 854
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 855
    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 856
    move-object/from16 v0, v23

    invoke-static {v6, v0}, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->unParsePinyinUnit(Ljava/lang/String;[Ljava/lang/String;)Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)V

    aput-object v2, v19, v3

    .line 859
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 863
    if-eqz v20, :cond_0

    .line 864
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 865
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 860
    .end local v3    # "rawId":I
    .end local v6    # "displayName":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 861
    .local v21, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 863
    if-eqz v20, :cond_0

    .line 864
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 865
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 863
    .end local v21    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v20, :cond_4

    .line 864
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 865
    const/16 v20, 0x0

    :cond_4
    throw v2
.end method

.method private modifyItems(Ljava/util/List;I)V
    .locals 8
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "modifyList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    const/4 v7, 0x0

    .line 649
    new-array v0, v7, [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 650
    .local v0, "contactBeen":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "contactBeen":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    check-cast v0, [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 652
    .restart local v0    # "contactBeen":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    invoke-direct {p0, v0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->parseContactBeanToContentValues([Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)[Landroid/content/ContentValues;

    move-result-object v1

    .line 653
    .local v1, "contentValues":[Landroid/content/ContentValues;
    new-array v3, p2, [[Ljava/lang/String;

    .line 654
    .local v3, "updateWhereArgs":[[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 655
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    invoke-virtual {v4}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getRawId()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v7

    aput-object v5, v3, v2

    .line 654
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 657
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->initExecutor()V

    .line 658
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$6;

    invoke-direct {v5, p0, v1, v3}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$6;-><init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;[Landroid/content/ContentValues;[[Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 664
    return-void
.end method

.method private parseContactBeanToContentValues(Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "contactBean"    # Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .prologue
    const/16 v3, 0x9

    .line 724
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 725
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 726
    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getPinyinSearchUnit()Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->parsePinYinUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)[Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "searchIndex":[Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "contentValues":Landroid/content/ContentValues;
    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 728
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string v2, "_id"

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getRawId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    const-string v2, "contact_id"

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getContactId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 730
    const-string v2, "version"

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getRawDataVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 731
    const-string v2, "lookupkey"

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getLookupkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v2, "displayname"

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getDisplayname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v2, "number"

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v2, "origin_index"

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v2, "qwerty_index"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v2, "t9_index"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 739
    .end local v1    # "searchIndex":[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseContactBeanToContentValues([Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)[Landroid/content/ContentValues;
    .locals 4
    .param p1, "contactBeans"    # [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .prologue
    .line 748
    array-length v0, p1

    .line 749
    .local v0, "contactBeanArrayLength":I
    new-array v1, v0, [Landroid/content/ContentValues;

    .line 750
    .local v1, "contentValues":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 751
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->parseContactBeanToContentValues(Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)Landroid/content/ContentValues;

    move-result-object v3

    aput-object v3, v1, v2

    .line 750
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 753
    :cond_0
    return-object v1
.end method

.method private reInitLocalContactIndexTableBlock()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 360
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->initExecutor()V

    .line 361
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$3;

    invoke-direct {v5, p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$3;-><init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 374
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    const-wide/16 v4, 0x8

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 375
    .local v2, "result":Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_0

    .line 376
    const/4 v3, 0x1

    .line 389
    .end local v2    # "result":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return v3

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 383
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 384
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 386
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 387
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 388
    const-string v4, "\u521d\u59cb\u5316\u8868\u8d85\u65f6\u6216\u624b\u673a\u8054\u7cfb\u4eba\u8fc7\u591a"

    invoke-static {v4}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reloadLocalContactBeans()[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 215
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->initExecutor()V

    .line 216
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$1;

    invoke-direct {v4, p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$1;-><init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 231
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    const-wide/16 v4, 0x8

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 232
    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    if-eqz v2, :cond_0

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7d22\u5f15\u8868\u957f\u5ea6 :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 234
    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 267
    :goto_0
    return-object v2

    .line 236
    :cond_0
    const-string v2, "\u7d22\u5f15\u8868\u4e3a\u7a7a"

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 237
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    sput-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 245
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    move-object v2, v3

    .line 248
    goto :goto_0

    .line 241
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    sput-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 249
    :catch_1
    move-exception v0

    .line 250
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 251
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 252
    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    move-object v2, v3

    .line 254
    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 256
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "\u83b7\u53d6\u672c\u5730\u8054\u7cfb\u4eba\u7d22\u5f15\u8d85\u65f6,\u91cd\u65b0\u521d\u59cb\u5316\u8054\u7cfb\u4eba\u7d22\u5f15\u8868"

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->error(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 258
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 259
    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 261
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->reinitLocalContactIndex()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 262
    const-string v2, "\u91cd\u65b0\u521b\u5efa\u7d22\u5f15\u8868\u6210\u529f"

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/util/Util;->indexDataInited(Landroid/content/Context;)Z

    :goto_1
    move-object v2, v3

    .line 267
    goto :goto_0

    .line 265
    :cond_5
    const-string v2, "\u91cd\u65b0\u521b\u5efa\u7d22\u5f15\u8868\u5931\u8d25"

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private removeItems(Ljava/util/List;I)V
    .locals 8
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    const/4 v7, 0x0

    .line 617
    new-array v0, v7, [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 618
    .local v0, "contactBeen":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "contactBeen":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    check-cast v0, [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 620
    .restart local v0    # "contactBeen":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    invoke-direct {p0, v0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->parseContactBeanToContentValues([Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)[Landroid/content/ContentValues;

    move-result-object v1

    .line 621
    .local v1, "contentValues":[Landroid/content/ContentValues;
    new-array v3, p2, [[Ljava/lang/String;

    .line 622
    .local v3, "removeWhereArgs":[[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 623
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    invoke-virtual {v4}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getRawId()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v7

    aput-object v5, v3, v2

    .line 622
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->initExecutor()V

    .line 626
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$4;

    invoke-direct {v5, p0, v3}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$4;-><init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;[[Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 632
    return-void
.end method


.method public deleteBulk(Ljava/lang/String;[[Ljava/lang/String;)[I
    .locals 3
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [[Ljava/lang/String;

    .prologue
    .line 185
    sget-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeanLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    const-string v2, "contact_index"

    invoke-virtual {v0, v2, p1, p2}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->delete(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)[I

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteSingle(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 178
    sget-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeanLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    const-string v2, "contact_index"

    invoke-virtual {v0, v2, p1, p2}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public diffAndSyncLocalContact()Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 503
    .local v8, "start":J
    const-wide/16 v6, 0x0

    .line 504
    .local v6, "end":J
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 505
    .local v3, "diffMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;>;"
    iget-object v10, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_ADD:Ljava/lang/Integer;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v10, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_MODIFY:Ljava/lang/Integer;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v10, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_REMOVE:Ljava/lang/Integer;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 509
    const-string v10, "\u4ece\u7cfb\u7edf\u4e2d\u83b7\u53d6\u8054\u7cfb\u4eba\u4fe1\u606f..."

    invoke-static {v10}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->loadDetailFromProvider()[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    move-result-object v1

    .line 511
    .local v1, "contactBeanProvider":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    if-nez v1, :cond_1

    .line 513
    iget-object v10, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    invoke-virtual {v10}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->recreateContactTable()V

    move-object v3, v11

    .line 557
    .end local v3    # "diffMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 516
    .restart local v3    # "diffMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;>;"
    :cond_1
    const-string v10, "\u4ece\u672c\u5730\u7d22\u5f15\u8868\u4e2d\u83b7\u53d6\u8054\u7cfb\u4eba\u4fe1\u606f..."

    invoke-static {v10}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 517
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->getLocalContactBeans(Z)[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 518
    sget-object v10, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    if-nez v10, :cond_2

    .line 520
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->reInitLocalContactIndexTableUnBlock()V

    move-object v3, v11

    .line 521
    goto :goto_0

    .line 523
    :cond_2
    sget-object v10, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    array-length v0, v10

    .line 524
    .local v0, "contactBeanLocalLength":I
    array-length v2, v1

    .line 525
    .local v2, "contactBeanProviderLength":I
    const-string v10, "main"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " \u672c\u5730\u8868\u957f\u5ea6: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \u7cfb\u7edf\u8868\u957f\u5ea6: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    sub-int v4, v2, v0

    .line 528
    .local v4, "differenceLength":I
    if-gez v4, :cond_3

    .line 531
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->reinitLocalContactIndex()Z

    move-object v3, v11

    .line 532
    goto :goto_0

    .line 535
    :cond_3
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_7

    .line 536
    aget-object v10, v1, v5

    if-nez v10, :cond_5

    sget-object v10, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    aget-object v10, v10, v5

    if-eqz v10, :cond_5

    .line 538
    iget-object v10, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_REMOVE:Ljava/lang/Integer;

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    sget-object v12, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    aget-object v12, v12, v5

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 539
    :cond_5
    sget-object v10, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    aget-object v10, v10, v5

    if-nez v10, :cond_6

    aget-object v10, v1, v5

    if-eqz v10, :cond_6

    .line 541
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->reInitLocalContactIndexTableUnBlock()V

    move-object v3, v11

    .line 542
    goto :goto_0

    .line 543
    :cond_6
    sget-object v10, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    aget-object v10, v10, v5

    if-eqz v10, :cond_4

    aget-object v10, v1, v5

    if-eqz v10, :cond_4

    aget-object v10, v1, v5

    .line 544
    invoke-virtual {v10}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getRawDataVersion()I

    move-result v10

    sget-object v12, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getRawDataVersion()I

    move-result v12

    if-eq v10, v12, :cond_4

    .line 546
    iget-object v10, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_MODIFY:Ljava/lang/Integer;

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    aget-object v12, v1, v5

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 550
    :cond_7
    move v5, v0

    :goto_3
    if-ge v5, v2, :cond_0

    .line 552
    aget-object v10, v1, v5

    if-eqz v10, :cond_8

    .line 553
    iget-object v10, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_ADD:Ljava/lang/Integer;

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    aget-object v11, v1, v5

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public getDiffTypeAdd()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_ADD:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDiffTypeModity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_MODIFY:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDiffTypeRemove()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_REMOVE:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLocalContactBeans(Z)[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    .locals 3
    .param p1, "reload"    # Z

    .prologue
    .line 196
    sget-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->clearLocalContactBeans()V

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 200
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->reloadLocalContactBeans()[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    move-result-object v1

    sput-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    if-eqz v1, :cond_1

    .line 201
    sget-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 206
    .end local v0    # "i":I
    :goto_1
    return-object v1

    .line 199
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_2
    const-string v1, "\u83b7\u53d6\u7d22\u5f15\u8868\u5931\u8d25\uff0c\u964d\u7ea7\u4e3a\u7a7a\u8054\u7cfb\u4eba\u7ed3\u679c"

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    sput-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    goto :cond_3

    .line 206
    .end local v0    # "i":I
    :cond_3
    sget-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    goto :goto_1
.end method

.method public getProviderContactRawSize()I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 677
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->initContentResolver()V

    .line 678
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->RAWCONTACT_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->Raw_IdProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 679
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, -0x1

    .line 681
    .local v6, "count":I
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 685
    if-eqz v7, :cond_0

    .line 686
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 687
    const/4 v7, 0x0

    .line 690
    :cond_0
    :goto_0
    return v6

    .line 682
    :catch_0
    move-exception v8

    .line 683
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    if-eqz v7, :cond_0

    .line 686
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 687
    const/4 v7, 0x0

    goto :goto_0

    .line 685
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 686
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 687
    const/4 v7, 0x0

    :cond_1
    throw v0
.end method

.method public initLocalContactIndexFirst()Z
    .locals 3

    .prologue
    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 278
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->initLocalSearchIndexDb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeanLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 280
    :try_start_0
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->loadLocalContactBeans()[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    move-result-object v1

    sput-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 281
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    sget-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    if-eqz v1, :cond_0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7d22\u5f15\u8868\u957f\u5ea6 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 287
    :goto_1
    const/4 v1, 0x1

    .line 290
    :goto_2
    return v1

    .line 281
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 285
    :cond_0
    const-string v1, "\u7d22\u5f15\u8868\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public insertBulk([Landroid/content/ContentValues;)[J
    .locals 3
    .param p1, "contentValuesArray"    # [Landroid/content/ContentValues;

    .prologue
    .line 157
    sget-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeanLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    const-string v2, "contact_index"

    invoke-virtual {v0, v2, p1}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->insert(Ljava/lang/String;[Landroid/content/ContentValues;)[J

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insertSingle(Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 150
    sget-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeanLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    const-string v2, "contact_index"

    invoke-virtual {v0, v2, p1}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadDetailFromProvider()[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    .locals 22

    .prologue
    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 446
    .local v18, "start":J
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->initContentResolver()V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->PHONE_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->PhonedetailProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 449
    .local v15, "cursor":Landroid/database/Cursor;
    if-nez v15, :cond_1

    .line 450
    const/4 v14, 0x0

    .line 493
    :cond_0
    :goto_0
    return-object v14

    .line 452
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->loadRawVersionFromProvider()[I

    move-result-object v17

    .line 453
    .local v17, "rawVersionArray":[I
    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_2

    .line 454
    const-string v2, "\u624b\u673a\u4e2d\u6ca1\u6709\u8054\u7cfb\u4eba"

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 455
    const/4 v2, 0x0

    new-array v14, v2, [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    goto :goto_0

    .line 457
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u624b\u673a\u4e2d\u8054\u7cfb\u4eba\u7684\u6570\u91cf : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 460
    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->PhonedetailProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 461
    .local v12, "columnIndex_RawId":I
    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->PhonedetailProjection:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 462
    .local v13, "columndIndex_ContactId":I
    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->PhonedetailProjection:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 463
    .local v10, "columnIndex_LookUpkey":I
    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->PhonedetailProjection:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 464
    .local v9, "columnIndex_DisplayName":I
    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->PhonedetailProjection:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v2, v2, v4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 466
    .local v11, "columnIndex_Number":I
    move-object/from16 v0, v17

    array-length v2, v0

    new-array v14, v2, [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 469
    .local v14, "contactBeanArray":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 470
    const/4 v2, 0x0

    new-array v14, v2, [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    .end local v14    # "contactBeanArray":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    if-eqz v15, :cond_0

    .line 488
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 489
    const/4 v15, 0x0

    goto :goto_0

    .line 473
    .restart local v14    # "contactBeanArray":[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    :cond_3
    :try_start_1
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 474
    .local v3, "rawId":I
    invoke-interface {v15, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 475
    .local v6, "displayName":Ljava/lang/String;
    new-instance v2, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 477
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aget v5, v17, v3

    .line 480
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 481
    invoke-interface {v15, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v20, "-"

    const-string v21, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v20, " "

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v14, v3

    .line 483
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 487
    if-eqz v15, :cond_4

    .line 488
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 489
    const/4 v15, 0x0

    .line 492
    .end local v3    # "rawId":I
    .end local v6    # "displayName":Ljava/lang/String;
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4ece\u624b\u673a\u4e2d\u83b7\u53d6\u8054\u7cfb\u4eba\u7528\u65f6: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v18

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 484
    :catch_0
    move-exception v16

    .line 485
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    if-eqz v15, :cond_4

    .line 488
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 489
    const/4 v15, 0x0

    goto :goto_1

    .line 487
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_5

    .line 488
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 489
    const/4 v15, 0x0

    :cond_5
    throw v2
.end method

.method public loadRawVersion(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)[I
    .locals 11
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 763
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    const-string v1, "contact_index"

    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->Raw_VersionProjection:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 764
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 765
    new-array v9, v10, [I

    .line 781
    :cond_0
    :goto_0
    return-object v9

    .line 767
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->getLocalContactMaxRawId()I

    move-result v0

    new-array v9, v0, [I

    .line 769
    .local v9, "versionResult":[I
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 770
    .local v6, "columnIndex_rawId":I
    const-string v0, "version"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 771
    .local v7, "columnIndex_version":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 772
    new-array v9, v10, [I

    goto :goto_0

    .line 775
    :cond_2
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v9, v0

    .line 776
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 777
    if-eqz v8, :cond_0

    .line 778
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 779
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public loadRawVersionFromProvider()[I
    .locals 18

    .prologue
    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 400
    .local v16, "start":J
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->initContentResolver()V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->RAWCONTACT_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->Raw_VersionProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 402
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_1

    .line 403
    const/4 v2, 0x0

    new-array v14, v2, [I

    .line 435
    :cond_0
    :goto_0
    return-object v14

    .line 406
    :cond_1
    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->Raw_VersionProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 407
    .local v9, "columnIndex_rawId":I
    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->Raw_VersionProjection:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 408
    .local v8, "columnIndex_dataVersion":I
    const/4 v2, 0x0

    new-array v14, v2, [I

    .line 409
    .local v14, "rawVersionArray":[I
    const/4 v13, -0x1

    .line 411
    .local v13, "max":I
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 412
    const/4 v2, 0x0

    new-array v14, v2, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    .end local v14    # "rawVersionArray":[I
    if-eqz v11, :cond_0

    .line 431
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 432
    const/4 v11, 0x0

    goto :goto_0

    .line 417
    .restart local v14    # "rawVersionArray":[I
    :cond_2
    :try_start_1
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 418
    .local v10, "current":I
    if-le v10, v13, :cond_3

    .line 419
    move v13, v10

    .line 421
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 422
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 423
    add-int/lit8 v2, v13, 0x1

    new-array v14, v2, [I

    .line 425
    :cond_4
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v14, v2

    .line 426
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 430
    if-eqz v11, :cond_0

    .line 431
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 432
    const/4 v11, 0x0

    goto :goto_0

    .line 427
    .end local v10    # "current":I
    :catch_0
    move-exception v12

    .line 428
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    if-eqz v11, :cond_0

    .line 431
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 432
    const/4 v11, 0x0

    goto :goto_0

    .line 430
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_5

    .line 431
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 432
    const/4 v11, 0x0

    :cond_5
    throw v2
.end method

.method public qwertySearch(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "keyWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 873
    if-nez p1, :cond_0

    .line 874
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "keyWord is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 876
    :cond_0
    sget-object v4, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    if-nez v4, :cond_1

    .line 877
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->getLocalContactBeans(Z)[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 886
    :cond_1
    sget-object v5, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeanLocker:Ljava/lang/Object;

    monitor-enter v5

    .line 887
    :try_start_0
    sget-object v4, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    array-length v2, v4

    .line 888
    .local v2, "mLocalContactBeansLength":I
    if-gtz v2, :cond_2

    .line 889
    const/4 v3, 0x0

    monitor-exit v5

    .line 911
    :goto_0
    return-object v3

    .line 891
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 893
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 894
    sget-object v4, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    aget-object v0, v4, v1

    .line 895
    .local v0, "contactBean":Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    if-nez v0, :cond_4

    .line 893
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 899
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 901
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 910
    .end local v0    # "contactBean":Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    .end local v1    # "i":I
    .end local v2    # "mLocalContactBeansLength":I
    .end local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 905
    .restart local v0    # "contactBean":Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    .restart local v1    # "i":I
    .restart local v2    # "mLocalContactBeansLength":I
    .restart local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getPinyinSearchUnit()Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/QwertyUtil;->match(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 906
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 910
    .end local v0    # "contactBean":Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public reInitLocalContactIndexTableUnBlock()V
    .locals 2

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->initExecutor()V

    .line 331
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$2;-><init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method

.method public reinitLocalContactIndex()Z
    .locals 3

    .prologue
    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 311
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->reInitLocalContactIndexTableBlock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeanLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 313
    :try_start_0
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->loadLocalContactBeans()[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    move-result-object v1

    sput-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 314
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    sget-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    if-eqz v1, :cond_0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7d22\u5f15\u8868\u957f\u5ea6 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 320
    :goto_1
    const/4 v1, 0x1

    .line 323
    :goto_2
    return v1

    .line 314
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 318
    :cond_0
    const-string v1, "\u7d22\u5f15\u8868\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 310
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public showDiffContactMap(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, "diffMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 668
    .local v1, "diffType":Ljava/lang/Integer;
    const-string v2, "amy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----------------------beanlist: difftype "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "----------------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 670
    .local v0, "contactBean":Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    const-string v4, "amy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getDisplayname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 673
    .end local v0    # "contactBean":Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    .end local v1    # "diffType":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public syncContact()V
    .locals 8

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->loadRawVersionFromProvider()[I

    move-result-object v5

    .line 598
    .local v5, "rawVersionFromProvider":[I
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->extractRawVersionFromLocalbean()[I

    move-result-object v4

    .line 599
    .local v4, "rawVersionFromLocal":[I
    array-length v3, v5

    .line 600
    .local v3, "providerLength":I
    array-length v2, v4

    .line 601
    .local v2, "localLength":I
    sub-int v0, v3, v2

    .line 602
    .local v0, "diffLength":I
    if-eqz v0, :cond_1

    .line 603
    const-string v6, "\u8054\u7cfb\u4eba\u6709\u589e\u52a0\u6216\u5220\u9664,\u91cd\u65b0\u521d\u59cb\u5316\u7d22\u5f15\u8868\u5e76\u66f4\u65b0\u7d22\u5f15\u6570\u7ec4"

    invoke-static {v6}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->reInitLocalContactIndexTableUnBlock()V

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 607
    aget v6, v4, v1

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    aget v6, v4, v1

    aget v7, v5, v1

    if-eq v6, v7, :cond_2

    .line 608
    const-string v6, "\u8054\u7cfb\u4eba\u6709\u6539\u53d8,\u91cd\u65b0\u521d\u59cb\u5316\u7d22\u5f15\u8868\u5e76\u66f4\u65b0\u7d22\u5f15\u6570\u7ec4"

    invoke-static {v6}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->reInitLocalContactIndexTableUnBlock()V

    goto :goto_0

    .line 606
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public syncContactAccurate()V
    .locals 10

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->initExecutor()V

    .line 565
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->diffAndSyncLocalContact()Ljava/util/HashMap;

    move-result-object v2

    .line 566
    .local v2, "diffMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;>;"
    if-nez v2, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v8, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_REMOVE:Ljava/lang/Integer;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 570
    .local v6, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    iget-object v8, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_ADD:Ljava/lang/Integer;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 571
    .local v0, "addList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    iget-object v8, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->DIFFTYPE_MODIFY:Ljava/lang/Integer;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 572
    .local v3, "modifyList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 573
    .local v7, "removeListSize":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 574
    .local v1, "addListSize":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 575
    .local v4, "modifyListSize":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5220\u9664\u7684\u8054\u7cfb\u4eba\u6570\u91cf: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\u6dfb\u52a0\u7684\u8054\u7cfb\u4eba\u7684\u6570\u91cf: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\u4fee\u6539\u7684\u8054\u7cfb\u4eba\u7684\u6570\u91cf: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 577
    const/4 v5, 0x1

    .line 578
    .local v5, "reload":Z
    if-lez v7, :cond_4

    if-gtz v1, :cond_2

    if-lez v4, :cond_4

    .line 579
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->reInitLocalContactIndexTableUnBlock()V

    .line 590
    :cond_3
    :goto_1
    invoke-virtual {p0, v5}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->getLocalContactBeans(Z)[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 591
    iget-object v8, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    if-eqz v8, :cond_0

    .line 592
    iget-object v8, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-virtual {v8}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 580
    :cond_4
    if-lez v7, :cond_5

    .line 581
    invoke-direct {p0, v6, v7}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->removeItems(Ljava/util/List;I)V

    goto :goto_1

    .line 582
    :cond_5
    if-lez v1, :cond_6

    if-lez v4, :cond_6

    .line 583
    invoke-direct {p0, v0, v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->addItems(Ljava/util/List;I)V

    .line 584
    invoke-direct {p0, v3, v4}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->modifyItems(Ljava/util/List;I)V

    goto :goto_1

    .line 585
    :cond_6
    if-lez v1, :cond_7

    .line 586
    invoke-direct {p0, v0, v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->addItems(Ljava/util/List;I)V

    goto :goto_1

    .line 587
    :cond_7
    if-lez v4, :cond_3

    .line 588
    invoke-direct {p0, v3, v4}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->modifyItems(Ljava/util/List;I)V

    goto :goto_1
.end method

.method public t9Search(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "keyWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 916
    if-nez p1, :cond_0

    .line 917
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "keyWord is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 919
    :cond_0
    sget-object v4, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    if-nez v4, :cond_1

    .line 920
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->getLocalContactBeans(Z)[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 929
    :cond_1
    sget-object v5, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeanLocker:Ljava/lang/Object;

    monitor-enter v5

    .line 930
    :try_start_0
    sget-object v4, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    array-length v2, v4

    .line 931
    .local v2, "mLocalContactBeansLength":I
    if-gtz v2, :cond_2

    .line 932
    const/4 v3, 0x0

    monitor-exit v5

    .line 954
    :goto_0
    return-object v3

    .line 934
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 937
    sget-object v4, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    aget-object v0, v4, v1

    .line 938
    .local v0, "contactBean":Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    if-nez v0, :cond_4

    .line 936
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 942
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 944
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 953
    .end local v0    # "contactBean":Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    .end local v1    # "i":I
    .end local v2    # "mLocalContactBeansLength":I
    .end local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 948
    .restart local v0    # "contactBean":Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    .restart local v1    # "i":I
    .restart local v2    # "mLocalContactBeansLength":I
    .restart local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getPinyinSearchUnit()Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/T9Util;->match(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 949
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 953
    .end local v0    # "contactBean":Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateBulk([Landroid/content/ContentValues;Ljava/lang/String;[[Ljava/lang/String;)[I
    .locals 3
    .param p1, "contentValues"    # [Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [[Ljava/lang/String;

    .prologue
    .line 171
    sget-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeanLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    const-string v2, "contact_index"

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->update(Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;[[Ljava/lang/String;)[I

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSingle(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 164
    sget-object v1, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mLocalContactBeanLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    const-string v2, "contact_index"

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
