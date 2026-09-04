.class public Lcom/smartisanos/launcher/actions/NumFlagWhiteList;
.super Ljava/lang/Object;
.source "NumFlagWhiteList.java"


.field public static final DISABLE_WHITE_LIST:Z = true

.field public static final TASK_NAME:Ljava/lang/String; = "launcher_number_flag_white_list"

.field public static WHITE_ARR:[Ljava/lang/String;

.field private static final WHITE_ARR_ORIGINAL:[Ljava/lang/String;

.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-class v0, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->log:Lcom/smartisanos/launcher/LOG;

    .line 170
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->WHITE_ARR:[Ljava/lang/String;

    .line 172
    const/16 v0, 0x6c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.youku.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.immomo.momo"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.youdao.dict"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.xueqiu.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sina.weibo"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sand.airdroid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.autonavi.minimap"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cn.dxy.android.aspirin"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.alensw.PicFolder"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cn.wps.moffice_eng"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.estrongs.android.pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.airbnb.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.buildcoo.beike"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.taobao.taobao"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.eg.android.AlipayGphone"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.jingdong.app.mall"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.sdu.didi.psnger"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.qiyi.video"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.ubercab"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.tencent.qqmusic"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.dianping.v1"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.sankuai.meituan"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.evernote"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.tencent.androidqqmail"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.qzone"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.netease.vopen"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.pplive.androidphone"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.smzdm.client.android"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.suning.mobile.ebuy"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.renren.mobile.android"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.netease.mail"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.linkedin.android"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.linkedin.chitu"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.taou.maimai"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.wiiun.maixin"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "mail139.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "cn.cj.pe"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.netease.mobimail"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.netease.qiyemail"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.sina.mail"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "net.daum.android.solmail"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "com.tencent.qqlite"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "com.tencent.mobileqqi"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "com.android.emailyh"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "com.corp21cn.mail189"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "com.sina.free.sm.pro"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "com.qiduo.mail"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "com.kingsoft.email"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "com.huawei.dsm.mail"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "com.yahoolitemail"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "com.tencent.qqcalendar"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "com.tencent.pb"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "im.yixin"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "com.alibaba.mobileim"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "com.box.basic"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "com.douban.frodo"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "com.itcalf.renhe"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "com.alibaba.android.babylon"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "com.yy.a.liveworld"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "com.corp21cn.cloudcontacts"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "com.pinterest"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "com.nice.main"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "com.xinge.xinge"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "com.duowan.mobile"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "jp.naver.line.android"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "com.p1.mobile.putong"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "com.douban.shuo"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "com.tencent.WBlog"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "com.xiaomi.channel"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "com.blueorbit.Muzzik"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "com.asiainfo.android"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "com.etalk"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "com.teambition.teambition"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "com.teambition.enterprise.android"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "cn.com.fetion"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "com.aol.mobile.aim"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "com.baidu.tieba"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "com.facebook.orca"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "com.google.android.apps.blogger"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "com.google.android.apps.plus"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "com.hootsuite.droid.full"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "com.instagram.android"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "com.joelapenna.foursquared"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "com.myspace.android"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "com.path"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "com.pica.msn"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "com.skype.rover"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "com.tumblr"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "com.viber.voip"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "com.weico.sinaweibo"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "com.whatsapp"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "com.yahoo.mobile.client.android.im"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "com.zhihu.android"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "co.vine.android"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "me.imid.fuubo"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "me.papa"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "com.lbt.gms"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "com.alibaba.android.rimet"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "com.alibaba.android.rimet.fx"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "com.wemomo.bibi"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "com.tencent.weread"

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->WHITE_ARR_ORIGINAL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    :try_start_0
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 51
    const-string v1, "launcher_number_flag_white_list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {p1, p0}, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->updateWhiteList(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v4, "launcher_number_flag_white_list"

    invoke-static {v4}, Lcom/smartisanos/launcher/data/handler/ConfigDB;->readConfig(Ljava/lang/String;)[B

    move-result-object v1

    .line 28
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 29
    invoke-static {v1}, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->parseNumberFlagArr([B)[Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "arr":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 31
    sput-object v0, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->WHITE_ARR:[Ljava/lang/String;

    .line 34
    .end local v0    # "arr":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 35
    .local v3, "loaded":Z
    sget-object v4, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->WHITE_ARR:[Ljava/lang/String;

    if-nez v4, :cond_1

    .line 36
    const/4 v3, 0x1

    .line 38
    :cond_1
    if-nez v3, :cond_2

    .line 40
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.smartisanos.sync.DATA_SYNC_IMMEDIATELY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "name"

    const-string v5, "launcher_number_flag_white_list"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v4, "force"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public static isForbidden(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method private static parseNumberFlagArr([B)[Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "arr":[Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 146
    .end local v0    # "arr":[Ljava/lang/String;
    .local v1, "arr":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 135
    .end local v1    # "arr":[Ljava/lang/String;
    .restart local v0    # "arr":[Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, "array":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 137
    .local v5, "size":I
    new-array v0, v5, [Ljava/lang/String;

    .line 138
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 139
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "str":Ljava/lang/String;
    aput-object v6, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 142
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v5    # "size":I
    .end local v6    # "str":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    const/4 v0, 0x0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v1, v0

    .line 146
    .end local v0    # "arr":[Ljava/lang/String;
    .restart local v1    # "arr":[Ljava/lang/String;
    goto :goto_0
.end method

.method public static updateWhiteList(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 21
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string v4, "name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 60
    .local v16, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 61
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v4, "content://com.smartisanos.datasync/sync_datas"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 62
    .local v3, "uri":Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v16, v6, v4

    .line 63
    .local v6, "params":[Ljava/lang/String;
    const-string v4, "launcher_number_flag_white_list"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 64
    sget-object v4, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateWhiteList return by name is not match ! unknown name ["

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, "]"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const/4 v9, 0x0

    .line 68
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 69
    .local v10, "data":[B
    const/4 v14, 0x0

    .line 71
    .local v14, "md5":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 72
    const-string v4, "md5"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 73
    .local v15, "md5Index":I
    const-string v4, "data"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 74
    .local v11, "dataIndex":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 76
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 81
    :cond_2
    if-eqz v9, :cond_3

    .line 82
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 85
    .end local v11    # "dataIndex":I
    .end local v15    # "md5Index":I
    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    if-nez v14, :cond_6

    .line 86
    :cond_4
    sget-object v4, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateWhiteList return by lose data ["

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, "]"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :catch_0
    move-exception v12

    .line 79
    .local v12, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    if-eqz v9, :cond_3

    .line 82
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 81
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v9, :cond_5

    .line 82
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4

    .line 89
    :cond_6
    invoke-static {v10}, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->parseNumberFlagArr([B)[Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "arr":[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v4, v8

    if-eqz v4, :cond_0

    .line 93
    move-object/from16 v0, v16

    invoke-static {v0, v14, v10}, Lcom/smartisanos/launcher/data/handler/ConfigDB;->updateConfig(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 95
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v18, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->WHITE_ARR_ORIGINAL:[Ljava/lang/String;

    array-length v7, v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_9

    aget-object v17, v5, v4

    .line 97
    .local v17, "pkg":Ljava/lang/String;
    if-nez v17, :cond_8

    .line 96
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 100
    :cond_8
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 103
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 105
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_9
    if-eqz v8, :cond_c

    .line 106
    array-length v5, v8

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_c

    aget-object v17, v8, v4

    .line 107
    .restart local v17    # "pkg":Ljava/lang/String;
    if-nez v17, :cond_b

    .line 106
    :cond_a
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 110
    :cond_b
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 113
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 117
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_c
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    .line 118
    .local v19, "size":I
    move/from16 v0, v19

    new-array v8, v0, [Ljava/lang/String;

    .line 119
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "arr":[Ljava/lang/String;
    check-cast v8, [Ljava/lang/String;

    .line 120
    .restart local v8    # "arr":[Ljava/lang/String;
    sput-object v8, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->WHITE_ARR:[Ljava/lang/String;

    .line 123
    new-instance v13, Landroid/content/Intent;

    const-string v4, "com.android.providers.downloads.ACTION_SYNC_DATA_FINISH_FEEDBACK"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v13, "feedbackIntent":Landroid/content/Intent;
    const-string v4, "name"

    move-object/from16 v0, v16

    invoke-virtual {v13, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v4, "md5"

    invoke-virtual {v13, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
