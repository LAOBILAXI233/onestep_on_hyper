.class public Lcom/sina/weibo/sdk/net/NetStateManager;
.super Ljava/lang/Object;
.source "NetStateManager.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/net/NetStateManager$NetState;,
        Lcom/sina/weibo/sdk/net/NetStateManager$NetStateReceive;
    }
.end annotation


.field public static CUR_NETSTATE:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

.field private static mContext:Landroid/content/Context;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;->Mobile:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    sput-object v0, Lcom/sina/weibo/sdk/net/NetStateManager;->CUR_NETSTATE:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    sput-object p0, Lcom/sina/weibo/sdk/net/NetStateManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getAPN()Lorg/apache/http/HttpHost;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 67
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    sget-object v0, Lcom/sina/weibo/sdk/net/NetStateManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 70
    sget-object v0, Lcom/sina/weibo/sdk/net/NetStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 72
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "proxy"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 76
    new-instance v2, Lorg/apache/http/HttpHost;

    const/16 v3, 0x50

    invoke-direct {v2, v1, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 78
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_1
    return-object v2

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method
