.class public Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;
.super Ljava/lang/Object;
.source "SpecialServiceNumberList.java"


.field private static final SPECIAL_NUMBER_MAX_LENGTH:I = 0x6

.field private static final SPECIAL_NUMBER_MIN_LENGTH:I = 0x3

.field private static sSpecialServiceNumberList:Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;


.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mSpecialServiceNumberArray:[[Ljava/lang/String;

.field private mSpecialServiceNumberMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->sSpecialServiceNumberList:Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "SpecialServiceNumberList"

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->mContext:Landroid/content/Context;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->mSpecialServiceNumberMap:Ljava/util/HashMap;

    .line 63
    const/16 v0, 0x2b

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "110"

    aput-object v2, v1, v4

    const-string v2, "\u532a\u8b66"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "112"

    aput-object v2, v1, v4

    const-string v2, "\u7d27\u6025\u53f7\u7801"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "117"

    aput-object v2, v1, v4

    const-string v2, "\u62a5\u65f6"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "119"

    aput-object v3, v2, v4

    const-string v3, "\u706b\u8b66"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "120"

    aput-object v3, v2, v4

    const-string v3, "\u6025\u6551"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "122"

    aput-object v3, v2, v4

    const-string v3, "\u4ea4\u901a\u4e8b\u6545"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "184"

    aput-object v3, v2, v4

    const-string v3, "\u90ae\u7f16"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "999"

    aput-object v3, v2, v4

    const-string v3, "\u6025\u6551"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "10000"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u7535\u4fe1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "10001"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u7535\u4fe1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "10010"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u8054\u901a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "10011"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u8054\u901a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "10086"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u79fb\u52a8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "12121"

    aput-object v3, v2, v4

    const-string v3, "\u5929\u6c14\u9884\u62a5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "12306"

    aput-object v3, v2, v4

    const-string v3, "\u94c1\u8def"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "12315"

    aput-object v3, v2, v4

    const-string v3, "\u6d88\u534f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "12320"

    aput-object v3, v2, v4

    const-string v3, "\u516c\u5171\u536b\u751f\u73af\u5883\u6295\u8bc9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "12333"

    aput-object v3, v2, v4

    const-string v3, "\u793e\u4fdd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "12348"

    aput-object v3, v2, v4

    const-string v3, "\u957f\u70ed\u7ebf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "12358"

    aput-object v3, v2, v4

    const-string v3, "\u7269\u4ef7\u5c40"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "12365"

    aput-object v3, v2, v4

    const-string v3, "\u8d28\u91cf\u6295\u8bc9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "12366"

    aput-object v3, v2, v4

    const-string v3, "\u5730\u7a0e"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "12369"

    aput-object v3, v2, v4

    const-string v3, "\u73af\u4fdd\u5c40"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "12580"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u79fb\u52a8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "12388"

    aput-object v3, v2, v4

    const-string v3, "\u7eaa\u68c0\u76d1\u5bdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "12395"

    aput-object v3, v2, v4

    const-string v3, "\u6c34\u4e0a\u6551\u63f4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95501"

    aput-object v3, v2, v4

    const-string v3, "\u6df1\u5733\u53d1\u5c55\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95508"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u53d1\u5c55\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95528"

    aput-object v3, v2, v4

    const-string v3, "\u6d66\u4e1c\u53d1\u5c55\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95533"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u5efa\u8bbe\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95555"

    aput-object v3, v2, v4

    const-string v3, "\u62db\u5546\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95558"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u4fe1\u5b9e\u4e1a\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95559"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u4ea4\u901a\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95561"

    aput-object v3, v2, v4

    const-string v3, "\u5174\u4e1a\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95566"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95568"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u6c11\u751f\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95577"

    aput-object v3, v2, v4

    const-string v3, "\u534e\u590f\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95580"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u90ae\u653f\u50a8\u84c4\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95588"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u5de5\u5546\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95595"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u5149\u5927\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95599"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u519c\u4e1a\u94f6\u884c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "100861"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u56fd\u79fb\u52a8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "118114"

    aput-object v3, v2, v4

    const-string v3, "\u7535\u4fe1\u53f7\u7801\u767e\u4e8b\u901a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->mSpecialServiceNumberArray:[[Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->mContext:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->initData()V

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-class v1, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->sSpecialServiceNumberList:Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;

    invoke-direct {v0, p0}, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->sSpecialServiceNumberList:Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;

    .line 35
    :cond_0
    sget-object v0, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->sSpecialServiceNumberList:Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 24
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->mSpecialServiceNumberArray:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 25
    iget-object v2, p0, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->mSpecialServiceNumberArray:[[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 27
    .local v0, "countryNumber":[Ljava/lang/String;
    iget-object v2, p0, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->mSpecialServiceNumberMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v0    # "countryNumber":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static isSpecialServiceNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-object v2

    .line 42
    :cond_1
    invoke-static {p1}, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->isSpecialServiceNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    move-object v0, p1

    .line 47
    .local v0, "code":Ljava/lang/String;
    iget-object v3, p0, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->mSpecialServiceNumberMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
