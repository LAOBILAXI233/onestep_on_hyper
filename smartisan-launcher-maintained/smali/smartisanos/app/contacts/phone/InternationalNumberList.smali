.class public Lsmartisanos/app/contacts/phone/InternationalNumberList;
.super Ljava/lang/Object;
.source "InternationalNumberList.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisanos/app/contacts/phone/InternationalNumberList$NumberSortComparator;
    }
.end annotation


.field private static sInternationalNumberList:Lsmartisanos/app/contacts/phone/InternationalNumberList;


.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInternationalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInternationalNumberArray:[[Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->sInternationalNumberList:Lsmartisanos/app/contacts/phone/InternationalNumberList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "InternationalNumberList"

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->mContext:Landroid/content/Context;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->mInternationalMap:Ljava/util/HashMap;

    .line 86
    const/16 v0, 0xfc

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "5999"

    aput-object v2, v1, v4

    const-string v2, "\u5e93\u62c9\u7d22"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "4175"

    aput-object v2, v1, v4

    const-string v2, "\u5217\u652f\u6566\u58eb\u767b"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "1939"

    aput-object v2, v1, v4

    const-string v2, "\u6ce2\u591a\u9ece\u5404"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1907"

    aput-object v3, v2, v4

    const-string v3, "\u963f\u62c9\u65af\u52a0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1876"

    aput-object v3, v2, v4

    const-string v3, "\u7259\u4e70\u52a0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1869"

    aput-object v3, v2, v4

    const-string v3, "\u5723\u57fa\u8328\u548c\u5c3c\u7ef4\u65af"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1868"

    aput-object v3, v2, v4

    const-string v3, "\u7279\u7acb\u5c3c\u8fbe\u548c\u591a\u5df4\u54e5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1809"

    aput-object v3, v2, v4

    const-string v3, "\u591a\u7c73\u5c3c\u52a0\u5171\u548c\u56fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1808"

    aput-object v3, v2, v4

    const-string v3, "\u590f\u5a01\u5937"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1787"

    aput-object v3, v2, v4

    const-string v3, "\u6ce2\u591a\u9ece\u5404"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1784"

    aput-object v3, v2, v4

    const-string v3, "\u5723\u6587\u68ee\u7279\u548c\u683c\u6797\u7eb3\u4e01\u65af"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1767"

    aput-object v3, v2, v4

    const-string v3, "\u591a\u7c73\u5c3c\u514b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1758"

    aput-object v3, v2, v4

    const-string v3, "\u5723\u5362\u897f\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1671"

    aput-object v3, v2, v4

    const-string v3, "\u5173\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1670"

    aput-object v3, v2, v4

    const-string v3, "\u5317\u9a6c\u91cc\u4e9a\u7eb3\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1664"

    aput-object v3, v2, v4

    const-string v3, "\u8499\u7279\u585e\u62c9\u7279"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1649"

    aput-object v3, v2, v4

    const-string v3, "\u7279\u514b\u65af\u548c\u51ef\u79d1\u65af\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1473"

    aput-object v3, v2, v4

    const-string v3, "\u683c\u6797\u7eb3\u8fbe"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1441"

    aput-object v3, v2, v4

    const-string v3, "\u767e\u6155\u5927"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1345"

    aput-object v3, v2, v4

    const-string v3, "\u5f00\u66fc\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1340"

    aput-object v3, v2, v4

    const-string v3, "\u7f8e\u5c5e\u7ef4\u4eac\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1284"

    aput-object v3, v2, v4

    const-string v3, "\u82f1\u5c5e\u7ef4\u4eac\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1268"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u63d0\u74dc\u548c\u5df4\u5e03\u8fbe"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1264"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u572d\u62c9\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1246"

    aput-object v3, v2, v4

    const-string v3, "\u5df4\u5df4\u591a\u65af"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1242"

    aput-object v3, v2, v4

    const-string v3, "\u5df4\u54c8\u9a6c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "999"

    aput-object v3, v2, v4

    const-string v3, "\u4fdd\u7559\uff0c\u53ef\u80fd\u79fb\u4f5c\u7d27\u6025\u6551\u63f4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "998"

    aput-object v3, v2, v4

    const-string v3, "\u4e4c\u5179\u522b\u514b\u65af\u5766"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "996"

    aput-object v3, v2, v4

    const-string v3, "\u5409\u5c14\u5409\u65af\u65af\u5766"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "995"

    aput-object v3, v2, v4

    const-string v3, "\u683c\u9c81\u5409\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "994"

    aput-object v3, v2, v4

    const-string v3, "\u963f\u585e\u62dc\u7586"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "993"

    aput-object v3, v2, v4

    const-string v3, "\u571f\u5e93\u66fc\u65af\u5766"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "992"

    aput-object v3, v2, v4

    const-string v3, "\u5854\u5409\u514b\u65af\u5766"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "991"

    aput-object v3, v2, v4

    const-string v3, "\u56fd\u9645\u7535\u4fe1\u516c\u4f17\u901a\u4fe1\u670d\u52a1\u8bd5\u9a8c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "979"

    aput-object v3, v2, v4

    const-string v3, "\u56fd\u9645\u8d39\u7387\u670d\u52a1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "977"

    aput-object v3, v2, v4

    const-string v3, "\u5c3c\u6cca\u5c14"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "976"

    aput-object v3, v2, v4

    const-string v3, "\u8499\u53e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "975"

    aput-object v3, v2, v4

    const-string v3, "\u4e0d\u4e39"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "974"

    aput-object v3, v2, v4

    const-string v3, "\u5361\u5854\u5c14"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "973"

    aput-object v3, v2, v4

    const-string v3, "\u5df4\u6797"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "972"

    aput-object v3, v2, v4

    const-string v3, "\u4ee5\u8272\u5217"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "971"

    aput-object v3, v2, v4

    const-string v3, "\u963f\u62c9\u4f2f\u8054\u5408\u914b\u957f\u56fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "970"

    aput-object v3, v2, v4

    const-string v3, "\u5df4\u52d2\u65af\u5766"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "969"

    aput-object v3, v2, v4

    const-string v3, "\u4e5f\u95e8\u6c11\u4e3b\u5171\u548c\u56fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "968"

    aput-object v3, v2, v4

    const-string v3, "\u963f\u66fc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "967"

    aput-object v3, v2, v4

    const-string v3, "\u4e5f\u95e8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "966"

    aput-object v3, v2, v4

    const-string v3, "\u6c99\u7279\u963f\u62c9\u4f2f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "965"

    aput-object v3, v2, v4

    const-string v3, "\u79d1\u5a01\u7279"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "964"

    aput-object v3, v2, v4

    const-string v3, "\u4f0a\u62c9\u514b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "963"

    aput-object v3, v2, v4

    const-string v3, "\u53d9\u5229\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "962"

    aput-object v3, v2, v4

    const-string v3, "\u7ea6\u65e6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "961"

    aput-object v3, v2, v4

    const-string v3, "\u9ece\u5df4\u5ae9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "960"

    aput-object v3, v2, v4

    const-string v3, "\u9a6c\u5c14\u4ee3\u592b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "886"

    aput-object v3, v2, v4

    const-string v3, "\u53f0\u6e7e"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "882"

    aput-object v3, v2, v4

    const-string v3, "\u56fd\u9645\u7f51\u7edc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "881"

    aput-object v3, v2, v4

    const-string v3, "\u79fb\u52a8\u536b\u661f\u7cfb\u7edf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "880"

    aput-object v3, v2, v4

    const-string v3, "\u5b5f\u52a0\u62c9\u56fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "879"

    aput-object v3, v2, v4

    const-string v3, "\u9884\u7559\u7ed9\u56fd\u5bb6\u79fb\u52a8/\u6d77\u6d0b\u4f7f\u7528"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "878"

    aput-object v3, v2, v4

    const-string v3, "\u73af\u7403\u4e2a\u4eba\u901a\u8baf\u670d\u52a1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "877"

    aput-object v3, v2, v4

    const-string v3, "\u9884\u7559\u7ed9\u6d77\u6d0b\u79fb\u52a8\u901a\u8baf\u670d\u52a1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "876"

    aput-object v3, v2, v4

    const-string v3, "\u9884\u7559\u7ed9\u6d77\u6d0b\u79fb\u52a8\u901a\u8baf\u670d\u52a1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "875"

    aput-object v3, v2, v4

    const-string v3, "\u9884\u7559\u7ed9\u6d77\u6d0b\u79fb\u52a8\u901a\u8baf\u670d\u52a1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "870"

    aput-object v3, v2, v4

    const-string v3, "\u56fd\u9645\u6d77\u4e8b\u536b\u661f\u7ec4\u7ec7 SNAC \u536b\u661f\u7535\u8bdd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "856"

    aput-object v3, v2, v4

    const-string v3, "\u8001\u631d"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "855"

    aput-object v3, v2, v4

    const-string v3, "\u67ec\u57d4\u5be8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "853"

    aput-object v3, v2, v4

    const-string v3, "\u6fb3\u95e8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "852"

    aput-object v3, v2, v4

    const-string v3, "\u9999\u6e2f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "850"

    aput-object v3, v2, v4

    const-string v3, "\u671d\u9c9c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "808"

    aput-object v3, v2, v4

    const-string v3, "\u4fdd\u7559\u7ed9\u56fd\u9645\u8d39\u7528\u5206\u62c5\u4e1a\u52a1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "800"

    aput-object v3, v2, v4

    const-string v3, "\u56fd\u9645\u514d\u8d39\u7535\u8bdd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "692"

    aput-object v3, v2, v4

    const-string v3, "\u9a6c\u7ecd\u5c14\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "691"

    aput-object v3, v2, v4

    const-string v3, "\u5bc6\u514b\u7f57\u5c3c\u897f\u4e9a\u8054\u90a6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "690"

    aput-object v3, v2, v4

    const-string v3, "\u6258\u514b\u52b3\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "689"

    aput-object v3, v2, v4

    const-string v3, "\u6cd5\u5c5e\u6ce2\u5229\u5c3c\u897f\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "688"

    aput-object v3, v2, v4

    const-string v3, "\u56fe\u74e6\u5362\uff0c\u57c3\u5229\u65af\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "687"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u5580\u91cc\u591a\u5c3c\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "686"

    aput-object v3, v2, v4

    const-string v3, "\u57fa\u91cc\u5df4\u65af\uff0c\u5409\u5c14\u4f2f\u7279\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "685"

    aput-object v3, v2, v4

    const-string v3, "\u897f\u8428\u6469\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "684"

    aput-object v3, v2, v4

    const-string v3, "\u4e1c\u8428\u6469\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "683"

    aput-object v3, v2, v4

    const-string v3, "\u7ebd\u57c3\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "682"

    aput-object v3, v2, v4

    const-string v3, "\u5e93\u514b\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "681"

    aput-object v3, v2, v4

    const-string v3, "\u74e6\u5229\u65af\u548c\u5bcc\u56fe\u7eb3\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "680"

    aput-object v3, v2, v4

    const-string v3, "\u5e15\u52b3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "679"

    aput-object v3, v2, v4

    const-string v3, "\u6590\u6d4e"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "678"

    aput-object v3, v2, v4

    const-string v3, "\u74e6\u52aa\u963f\u56fe"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "677"

    aput-object v3, v2, v4

    const-string v3, "\u6240\u7f57\u95e8\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "676"

    aput-object v3, v2, v4

    const-string v3, "\u6c64\u52a0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "675"

    aput-object v3, v2, v4

    const-string v3, "\u5df4\u5e03\u4e9a\u65b0\u51e0\u5185\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "674"

    aput-object v3, v2, v4

    const-string v3, "\u7459\u9c81"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "673"

    aput-object v3, v2, v4

    const-string v3, "\u6587\u83b1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "672"

    aput-object v3, v2, v4

    const-string v3, "\u6fb3\u5927\u5229\u4e9a\u6d77\u5916\u9886\u5730"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "670"

    aput-object v3, v2, v4

    const-string v3, "\u4e1c\u5e1d\u6c76"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "599"

    aput-object v3, v2, v4

    const-string v3, "\u8377\u5c5e\u5723\u9a6c\u4e01"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "598"

    aput-object v3, v2, v4

    const-string v3, "\u4e4c\u62c9\u572d"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "597"

    aput-object v3, v2, v4

    const-string v3, "\u82cf\u91cc\u5357"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "596"

    aput-object v3, v2, v4

    const-string v3, "\u9a6c\u63d0\u5c3c\u514b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "595"

    aput-object v3, v2, v4

    const-string v3, "\u5df4\u62c9\u572d"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "594"

    aput-object v3, v2, v4

    const-string v3, "\u6cd5\u5c5e\u572d\u4e9a\u90a3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "593"

    aput-object v3, v2, v4

    const-string v3, "\u5384\u74dc\u591a\u5c14"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "592"

    aput-object v3, v2, v4

    const-string v3, "\u572d\u4e9a\u90a3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "591"

    aput-object v3, v2, v4

    const-string v3, "\u73bb\u5229\u7ef4\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "590"

    aput-object v3, v2, v4

    const-string v3, "\u74dc\u5fb7\u7f57\u666e"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "509"

    aput-object v3, v2, v4

    const-string v3, "\u6d77\u5730"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "508"

    aput-object v3, v2, v4

    const-string v3, "\u5723\u76ae\u57c3\u5c14\u548c\u5bc6\u514b\u9686\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "507"

    aput-object v3, v2, v4

    const-string v3, "\u5df4\u62ff\u9a6c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "506"

    aput-object v3, v2, v4

    const-string v3, "\u54e5\u65af\u8fbe\u9ece\u52a0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "505"

    aput-object v3, v2, v4

    const-string v3, "\u5c3c\u52a0\u62c9\u74dc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "504"

    aput-object v3, v2, v4

    const-string v3, "\u6d2a\u90fd\u62c9\u65af"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "503"

    aput-object v3, v2, v4

    const-string v3, "\u8428\u5c14\u74e6\u591a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "502"

    aput-object v3, v2, v4

    const-string v3, "\u5371\u5730\u9a6c\u62c9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "501"

    aput-object v3, v2, v4

    const-string v3, "\u4f2f\u5229\u5179"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "500"

    aput-object v3, v2, v4

    const-string v3, "\u798f\u514b\u5170\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "423"

    aput-object v3, v2, v4

    const-string v3, "\u5217\u652f\u6566\u58eb\u767b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "421"

    aput-object v3, v2, v4

    const-string v3, "\u65af\u6d1b\u4f10\u514b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "420"

    aput-object v3, v2, v4

    const-string v3, "\u6377\u514b\u5171\u548c\u56fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "396"

    aput-object v3, v2, v4

    const-string v3, "\u68b5\u8482\u5188"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "389"

    aput-object v3, v2, v4

    const-string v3, "\u9a6c\u5176\u987f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "388"

    aput-object v3, v2, v4

    const-string v3, "\u6b27\u6d32\u7535\u8bdd\u53f7\u7801\u7a7a\u95f4\u2015\u2015\u73af\u6b27\u6d32\u670d\u52a1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "387"

    aput-object v3, v2, v4

    const-string v3, "\u6ce2\u9ed1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "386"

    aput-object v3, v2, v4

    const-string v3, "\u65af\u6d1b\u6587\u5c3c\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "385"

    aput-object v3, v2, v4

    const-string v3, "\u514b\u7f57\u5730\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "384"

    aput-object v3, v2, v4

    const-string v3, "\u62df\u5206\u914d\u79d1\u7d22\u6c83"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "382"

    aput-object v3, v2, v4

    const-string v3, "\u9ed1\u5c71(\u9ed1\u5c71)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "381"

    aput-object v3, v2, v4

    const-string v3, "\u585e\u5c14\u7ef4\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "380"

    aput-object v3, v2, v4

    const-string v3, "\u4e4c\u514b\u5170"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "378"

    aput-object v3, v2, v4

    const-string v3, "\u5723\u9a6c\u529b\u8bfa"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "377"

    aput-object v3, v2, v4

    const-string v3, "\u6469\u7eb3\u54e5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "376"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u9053\u5c14"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "375"

    aput-object v3, v2, v4

    const-string v3, "\u767d\u4fc4\u7f57\u65af"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "374"

    aput-object v3, v2, v4

    const-string v3, "\u4e9a\u7f8e\u5c3c\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "373"

    aput-object v3, v2, v4

    const-string v3, "\u6469\u5c14\u591a\u74e6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "372"

    aput-object v3, v2, v4

    const-string v3, "\u7231\u6c99\u5c3c\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "371"

    aput-object v3, v2, v4

    const-string v3, "\u62c9\u8131\u7ef4\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "370"

    aput-object v3, v2, v4

    const-string v3, "\u7acb\u9676\u5b9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "359"

    aput-object v3, v2, v4

    const-string v3, "\u4fdd\u52a0\u5229\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "358"

    aput-object v3, v2, v4

    const-string v3, "\u82ac\u5170"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "357"

    aput-object v3, v2, v4

    const-string v3, "\u585e\u6d66\u8def\u65af"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "356"

    aput-object v3, v2, v4

    const-string v3, "\u9a6c\u8033\u4ed6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "355"

    aput-object v3, v2, v4

    const-string v3, "\u963f\u5c14\u5df4\u5c3c\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "354"

    aput-object v3, v2, v4

    const-string v3, "\u51b0\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "353"

    aput-object v3, v2, v4

    const-string v3, "\u7231\u5c14\u5170"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "352"

    aput-object v3, v2, v4

    const-string v3, "\u5362\u68ee\u5821"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "351"

    aput-object v3, v2, v4

    const-string v3, "\u8461\u8404\u7259"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "350"

    aput-object v3, v2, v4

    const-string v3, "\u76f4\u5e03\u7f57\u9640"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "299"

    aput-object v3, v2, v4

    const-string v3, "\u683c\u9675\u5170\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "298"

    aput-object v3, v2, v4

    const-string v3, "\u6cd5\u7f57\u7fa4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "297"

    aput-object v3, v2, v4

    const-string v3, "\u963f\u9c81\u5df4\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "291"

    aput-object v3, v2, v4

    const-string v3, "\u5384\u7acb\u7279\u91cc\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "290"

    aput-object v3, v2, v4

    const-string v3, "\u5723\u8d6b\u52d2\u62ff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "269"

    aput-object v3, v2, v4

    const-string v3, "\u79d1\u6469\u7f57"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "268"

    aput-object v3, v2, v4

    const-string v3, "\u65af\u5a01\u58eb\u5170"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "267"

    aput-object v3, v2, v4

    const-string v3, "\u535a\u8328\u74e6\u7eb3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "266"

    aput-object v3, v2, v4

    const-string v3, "\u83b1\u7d22\u6258"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "265"

    aput-object v3, v2, v4

    const-string v3, "\u9a6c\u62c9\u7ef4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "264"

    aput-object v3, v2, v4

    const-string v3, "\u7eb3\u7c73\u6bd4\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "263"

    aput-object v3, v2, v4

    const-string v3, "\u6d25\u5df4\u5e03\u97e6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "262"

    aput-object v3, v2, v4

    const-string v3, "\u7559\u5c3c\u65fa\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "261"

    aput-object v3, v2, v4

    const-string v3, "\u9a6c\u8fbe\u52a0\u65af\u52a0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "260"

    aput-object v3, v2, v4

    const-string v3, "\u8d5e\u6bd4\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "259"

    aput-object v3, v2, v4

    const-string v3, "\u6851\u7ed9\u5df4\u5c14"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "258"

    aput-object v3, v2, v4

    const-string v3, "\u83ab\u6851\u6bd4\u514b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "257"

    aput-object v3, v2, v4

    const-string v3, "\u5e03\u9686\u8fea"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "256"

    aput-object v3, v2, v4

    const-string v3, "\u4e4c\u5e72\u8fbe"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "255"

    aput-object v3, v2, v4

    const-string v3, "\u5766\u6851\u5c3c\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "254"

    aput-object v3, v2, v4

    const-string v3, "\u80af\u5c3c\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "253"

    aput-object v3, v2, v4

    const-string v3, "\u5409\u5e03\u63d0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "252"

    aput-object v3, v2, v4

    const-string v3, "\u7d22\u9a6c\u91cc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "251"

    aput-object v3, v2, v4

    const-string v3, "\u57c3\u585e\u4fc4\u6bd4\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "250"

    aput-object v3, v2, v4

    const-string v3, "\u5362\u65fa\u8fbe"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "249"

    aput-object v3, v2, v4

    const-string v3, "\u82cf\u4e39"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "248"

    aput-object v3, v2, v4

    const-string v3, "\u585e\u820c\u5c14"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "247"

    aput-object v3, v2, v4

    const-string v3, "\u963f\u68ee\u677e\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "246"

    aput-object v3, v2, v4

    const-string v3, "\u8fea\u6208\u52a0\u897f\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "245"

    aput-object v3, v2, v4

    const-string v3, "\u51e0\u5185\u4e9a\u6bd4\u7ecd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "244"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u54e5\u62c9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "243"

    aput-object v3, v2, v4

    const-string v3, "\u521a\u679c\u6c11\u4e3b\u5171\u548c\u56fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "242"

    aput-object v3, v2, v4

    const-string v3, "\u521a\u679c\u5171\u548c\u56fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "241"

    aput-object v3, v2, v4

    const-string v3, "\u52a0\u84ec"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "240"

    aput-object v3, v2, v4

    const-string v3, "\u8d64\u9053\u51e0\u5185\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "239"

    aput-object v3, v2, v4

    const-string v3, "\u5723\u591a\u7f8e\u548c\u666e\u6797\u897f\u6bd4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "238"

    aput-object v3, v2, v4

    const-string v3, "\u4f5b\u5f97\u89d2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "237"

    aput-object v3, v2, v4

    const-string v3, "\u5580\u9ea6\u9686"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "236"

    aput-object v3, v2, v4

    const-string v3, "\u4e2d\u975e\u5171\u548c\u56fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "235"

    aput-object v3, v2, v4

    const-string v3, "\u4e4d\u5f97"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "234"

    aput-object v3, v2, v4

    const-string v3, "\u5c3c\u65e5\u5229\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "233"

    aput-object v3, v2, v4

    const-string v3, "\u52a0\u7eb3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "232"

    aput-object v3, v2, v4

    const-string v3, "\u585e\u62c9\u5229\u6602"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "231"

    aput-object v3, v2, v4

    const-string v3, "\u5229\u6bd4\u91cc\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "230"

    aput-object v3, v2, v4

    const-string v3, "\u6bdb\u91cc\u6c42\u65af"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "229"

    aput-object v3, v2, v4

    const-string v3, "\u8d1d\u5b81"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "228"

    aput-object v3, v2, v4

    const-string v3, "\u591a\u54e5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "227"

    aput-object v3, v2, v4

    const-string v3, "\u5c3c\u65e5\u5c14"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "226"

    aput-object v3, v2, v4

    const-string v3, "\u5e03\u57fa\u7eb3\u6cd5\u7d22"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "225"

    aput-object v3, v2, v4

    const-string v3, "\u79d1\u7279\u8fea\u74e6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "224"

    aput-object v3, v2, v4

    const-string v3, "\u51e0\u5185\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "223"

    aput-object v3, v2, v4

    const-string v3, "\u9a6c\u91cc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "222"

    aput-object v3, v2, v4

    const-string v3, "\u6bdb\u91cc\u5854\u5c3c\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "221"

    aput-object v3, v2, v4

    const-string v3, "\u585e\u5185\u52a0\u5c14"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "220"

    aput-object v3, v2, v4

    const-string v3, "\u5188\u6bd4\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "218"

    aput-object v3, v2, v4

    const-string v3, "\u5229\u6bd4\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "216"

    aput-object v3, v2, v4

    const-string v3, "\u7a81\u5c3c\u65af"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "213"

    aput-object v3, v2, v4

    const-string v3, "\u963f\u5c14\u53ca\u5229\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "212"

    aput-object v3, v2, v4

    const-string v3, "\u6469\u6d1b\u54e5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "211"

    aput-object v3, v2, v4

    const-string v3, "\u5357\u82cf\u4e39"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "98"

    aput-object v3, v2, v4

    const-string v3, "\u4f0a\u6717"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "95"

    aput-object v3, v2, v4

    const-string v3, "\u7f05\u7538"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "94"

    aput-object v3, v2, v4

    const-string v3, "\u65af\u91cc\u5170\u5361"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "93"

    aput-object v3, v2, v4

    const-string v3, "\u963f\u5bcc\u6c57"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "92"

    aput-object v3, v2, v4

    const-string v3, "\u5df4\u57fa\u65af\u5766"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "91"

    aput-object v3, v2, v4

    const-string v3, "\u5370\u5ea6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "90"

    aput-object v3, v2, v4

    const-string v3, "\u571f\u8033\u5176"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "84"

    aput-object v3, v2, v4

    const-string v3, "\u8d8a\u5357"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "82"

    aput-object v3, v2, v4

    const-string v3, "\u97e9\u56fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "81"

    aput-object v3, v2, v4

    const-string v3, "\u65e5\u672c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "66"

    aput-object v3, v2, v4

    const-string v3, "\u6cf0\u56fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "65"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u52a0\u5761"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "64"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u897f\u5170"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "63"

    aput-object v3, v2, v4

    const-string v3, "\u83f2\u5f8b\u5bbe"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "62"

    aput-object v3, v2, v4

    const-string v3, "\u5370\u5ea6\u5c3c\u897f\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "61"

    aput-object v3, v2, v4

    const-string v3, "\u6fb3\u5927\u5229\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "60"

    aput-object v3, v2, v4

    const-string v3, "\u9a6c\u6765\u897f\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "58"

    aput-object v3, v2, v4

    const-string v3, "\u59d4\u5185\u745e\u62c9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "57"

    aput-object v3, v2, v4

    const-string v3, "\u54e5\u4f26\u6bd4\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "56"

    aput-object v3, v2, v4

    const-string v3, "\u667a\u5229"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "55"

    aput-object v3, v2, v4

    const-string v3, "\u5df4\u897f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "54"

    aput-object v3, v2, v4

    const-string v3, "\u963f\u6839\u5ef7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "53"

    aput-object v3, v2, v4

    const-string v3, "\u53e4\u5df4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "52"

    aput-object v3, v2, v4

    const-string v3, "\u58a8\u897f\u54e5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "51"

    aput-object v3, v2, v4

    const-string v3, "\u79d8\u9c81"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "49"

    aput-object v3, v2, v4

    const-string v3, "\u5fb7\u56fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "48"

    aput-object v3, v2, v4

    const-string v3, "\u6ce2\u5170"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "47"

    aput-object v3, v2, v4

    const-string v3, "\u632a\u5a01"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "46"

    aput-object v3, v2, v4

    const-string v3, "\u745e\u5178"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "45"

    aput-object v3, v2, v4

    const-string v3, "\u4e39\u9ea6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "44"

    aput-object v3, v2, v4

    const-string v3, "\u82f1\u56fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "43"

    aput-object v3, v2, v4

    const-string v3, "\u5965\u5730\u5229"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "42"

    aput-object v3, v2, v4

    const-string v3, "\u6377\u514b\u65af\u6d1b\u4f10\u514b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "41"

    aput-object v3, v2, v4

    const-string v3, "\u745e\u58eb"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "40"

    aput-object v3, v2, v4

    const-string v3, "\u7f57\u9a6c\u5c3c\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "39"

    aput-object v3, v2, v4

    const-string v3, "\u610f\u5927\u5229"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "38"

    aput-object v3, v2, v4

    const-string v3, "\u5357\u65af\u62c9\u592b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "37"

    aput-object v3, v2, v4

    const-string v3, "\u4e1c\u5fb7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "36"

    aput-object v3, v2, v4

    const-string v3, "\u5308\u7259\u5229"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "34"

    aput-object v3, v2, v4

    const-string v3, "\u897f\u73ed\u7259"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "33"

    aput-object v3, v2, v4

    const-string v3, "\u6cd5\u56fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "32"

    aput-object v3, v2, v4

    const-string v3, "\u6bd4\u5229\u65f6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "31"

    aput-object v3, v2, v4

    const-string v3, "\u8377\u5170"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "30"

    aput-object v3, v2, v4

    const-string v3, "\u5e0c\u814a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "27"

    aput-object v3, v2, v4

    const-string v3, "\u5357\u975e"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "20"

    aput-object v3, v2, v4

    const-string v3, "\u57c3\u53ca"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "7"

    aput-object v3, v2, v4

    const-string v3, "\u4fc4\u7f57\u65af\u3001\u54c8\u8428\u514b\u65af\u5766"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v2, v4

    const-string v3, "\u7f8e\u56fd/\u52a0\u62ff\u5927"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->mInternationalNumberArray:[[Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->mContext:Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Lsmartisanos/app/contacts/phone/InternationalNumberList;->initData()V

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lsmartisanos/app/contacts/phone/InternationalNumberList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-class v1, Lsmartisanos/app/contacts/phone/InternationalNumberList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->sInternationalNumberList:Lsmartisanos/app/contacts/phone/InternationalNumberList;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lsmartisanos/app/contacts/phone/InternationalNumberList;

    invoke-direct {v0, p0}, Lsmartisanos/app/contacts/phone/InternationalNumberList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->sInternationalNumberList:Lsmartisanos/app/contacts/phone/InternationalNumberList;

    .line 51
    :cond_0
    sget-object v0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->sInternationalNumberList:Lsmartisanos/app/contacts/phone/InternationalNumberList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initData()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 27
    const/4 v5, -0x1

    .line 28
    .local v5, "preSection":I
    const/4 v0, 0x0

    .line 29
    .local v0, "countryMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->mInternationalNumberArray:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_1

    .line 30
    iget-object v6, p0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->mInternationalNumberArray:[[Ljava/lang/String;

    aget-object v6, v6, v4

    aget-object v2, v6, v8

    .line 31
    .local v2, "countryNumber":Ljava/lang/String;
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 32
    .local v3, "curSection":I
    iget-object v6, p0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->mInternationalNumberArray:[[Ljava/lang/String;

    aget-object v6, v6, v4

    aget-object v1, v6, v9

    .line 34
    .local v1, "countryName":Ljava/lang/String;
    if-eq v5, v3, :cond_0

    .line 35
    move v5, v3

    .line 36
    iget-object v6, p0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->mInternationalMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "countryMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v0, Ljava/util/TreeMap;

    .line 37
    .restart local v0    # "countryMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    .end local v0    # "countryMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lsmartisanos/app/contacts/phone/InternationalNumberList$NumberSortComparator;

    invoke-direct {v6, p0}, Lsmartisanos/app/contacts/phone/InternationalNumberList$NumberSortComparator;-><init>(Lsmartisanos/app/contacts/phone/InternationalNumberList;)V

    invoke-direct {v0, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 40
    .restart local v0    # "countryMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->mInternationalMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "countryName":Ljava/lang/String;
    .end local v2    # "countryNumber":Ljava/lang/String;
    .end local v3    # "curSection":I
    :cond_1
    return-void
.end method


.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v6

    .line 58
    :cond_1
    const-string v7, "+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "tmpNum":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 69
    .local v4, "numberSection":I
    iget-object v7, p0, Lsmartisanos/app/contacts/phone/InternationalNumberList;->mInternationalMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 71
    .local v0, "countryMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 73
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 74
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, "countryNumber":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 65
    .end local v0    # "countryMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "countryNumber":Ljava/lang/String;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "numberSection":I
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v7, "InternationalNumberList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NumberFormatException occurred when get location name. number = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "countryMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "numberSection":I
    :cond_3
    const-string v7, "InternationalNumberList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getName the map is null, number:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
