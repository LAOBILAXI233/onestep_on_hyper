.class public Lsmartisanos/app/contacts/phone/FixedNumberList;
.super Ljava/lang/Object;
.source "FixedNumberList.java"


.field private static final FIXED_NUMBER_MIN_LENGTH:I = 0xb

.field private static sFixedNumberList:Lsmartisanos/app/contacts/phone/FixedNumberList;


.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFixedNumberListArray:[[Ljava/lang/String;

.field private mFixedNumberMap:Ljava/util/HashMap;
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

    sput-object v0, Lsmartisanos/app/contacts/phone/FixedNumberList;->sFixedNumberList:Lsmartisanos/app/contacts/phone/FixedNumberList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "FixedNumberList"

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/FixedNumberList;->TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/FixedNumberList;->mContext:Landroid/content/Context;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/FixedNumberList;->mFixedNumberMap:Ljava/util/HashMap;

    .line 66
    const/16 v0, 0x14d

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "010"

    aput-object v2, v1, v4

    const-string v2, "\u5317\u4eac"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "020"

    aput-object v2, v1, v4

    const-string v2, "\u5e7f\u4e1c\u5e7f\u5dde"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "021"

    aput-object v2, v1, v4

    const-string v2, "\u4e0a\u6d77"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "022"

    aput-object v3, v2, v4

    const-string v3, "\u5929\u6d25"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "023"

    aput-object v3, v2, v4

    const-string v3, "\u91cd\u5e86"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "024"

    aput-object v3, v2, v4

    const-string v3, "\u8fbd\u5b81\u6c88\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "025"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u82cf\u5357\u4eac"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "027"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5317\u6b66\u6c49"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "028"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u6210\u90fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "029"

    aput-object v3, v2, v4

    const-string v3, "\u9655\u897f\u897f\u5b89"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0310"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5317\u90af\u90f8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0311"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5317\u77f3\u5bb6\u5e84"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0312"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5317\u4fdd\u5b9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0313"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5317\u5f20\u5bb6\u53e3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0314"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5317\u627f\u5fb7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0315"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5317\u5510\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0316"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5317\u5eca\u574a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0317"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5317\u6ca7\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0318"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5317\u8861\u6c34"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0319"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5317\u90a2\u53f0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0335"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5317\u79e6\u7687\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0349"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u897f\u6714\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0350"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u897f\u5ffb\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0351"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u897f\u592a\u539f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0352"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u897f\u5927\u540c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0353"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u897f\u9633\u6cc9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0354"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u897f\u664b\u4e2d"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0355"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u897f\u957f\u6cbb"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0356"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u897f\u664b\u57ce"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0357"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u897f\u4e34\u6c7e"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0358"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u897f\u5415\u6881"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0359"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u897f\u8fd0\u57ce"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0370"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u5546\u4e18"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0371"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u90d1\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0372"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u5b89\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0373"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u65b0\u4e61"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0374"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u8bb8\u660c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0375"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u5e73\u9876\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0376"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u4fe1\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0377"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u5357\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0378"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u5f00\u5c01"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0379"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u6d1b\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0391"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u7126\u4f5c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0392"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u9e64\u58c1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0393"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u6fee\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0394"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u5468\u53e3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0395"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u6f2f\u6cb3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0396"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u9a7b\u9a6c\u5e97"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0397"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u6f62\u5ddd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0398"

    aput-object v3, v2, v4

    const-string v3, "\u6cb3\u5357\u4e09\u95e8\u5ce1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0410"

    aput-object v3, v2, v4

    const-string v3, "\u8fbd\u5b81\u94c1\u5cad"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0411"

    aput-object v3, v2, v4

    const-string v3, "\u8fbd\u5b81\u5927\u8fde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0412"

    aput-object v3, v2, v4

    const-string v3, "\u8fbd\u5b81\u978d\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0413"

    aput-object v3, v2, v4

    const-string v3, "\u8fbd\u5b81\u629a\u987a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0414"

    aput-object v3, v2, v4

    const-string v3, "\u8fbd\u5b81\u672c\u6eaa"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0415"

    aput-object v3, v2, v4

    const-string v3, "\u8fbd\u5b81\u4e39\u4e1c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0416"

    aput-object v3, v2, v4

    const-string v3, "\u8fbd\u5b81\u9526\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0417"

    aput-object v3, v2, v4

    const-string v3, "\u8fbd\u5b81\u8425\u53e3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0418"

    aput-object v3, v2, v4

    const-string v3, "\u8fbd\u5b81\u961c\u65b0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0419"

    aput-object v3, v2, v4

    const-string v3, "\u8fbd\u5b81\u8fbd\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0421"

    aput-object v3, v2, v4

    const-string v3, "\u8fbd\u5b81\u671d\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0427"

    aput-object v3, v2, v4

    const-string v3, "\u8fbd\u5b81\u76d8\u9526"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0429"

    aput-object v3, v2, v4

    const-string v3, "\u8fbd\u5b81\u846b\u82a6\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0431"

    aput-object v3, v2, v4

    const-string v3, "\u5409\u6797\u957f\u6625"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0432"

    aput-object v3, v2, v4

    const-string v3, "\u5409\u6797\u5409\u6797"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0433"

    aput-object v3, v2, v4

    const-string v3, "\u5409\u6797\u5ef6\u5409"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0434"

    aput-object v3, v2, v4

    const-string v3, "\u5409\u6797\u56db\u5e73"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0435"

    aput-object v3, v2, v4

    const-string v3, "\u5409\u6797\u6885\u6cb3\u53e3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0436"

    aput-object v3, v2, v4

    const-string v3, "\u5409\u6797\u767d\u57ce"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0437"

    aput-object v3, v2, v4

    const-string v3, "\u5409\u6797\u8fbd\u6e90"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0438"

    aput-object v3, v2, v4

    const-string v3, "\u5409\u6797\u677e\u539f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0439"

    aput-object v3, v2, v4

    const-string v3, "\u5409\u6797\u767d\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0451"

    aput-object v3, v2, v4

    const-string v3, "\u9ed1\u9f99\u6c5f\u54c8\u5c14\u6ee8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0452"

    aput-object v3, v2, v4

    const-string v3, "\u9ed1\u9f99\u6c5f\u9f50\u9f50\u54c8\u5c14"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0453"

    aput-object v3, v2, v4

    const-string v3, "\u9ed1\u9f99\u6c5f\u7261\u4e39\u6c5f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0454"

    aput-object v3, v2, v4

    const-string v3, "\u9ed1\u9f99\u6c5f\u4f73\u6728\u65af"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0455"

    aput-object v3, v2, v4

    const-string v3, "\u9ed1\u9f99\u6c5f\u7ee5\u5316"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0456"

    aput-object v3, v2, v4

    const-string v3, "\u9ed1\u9f99\u6c5f\u9ed1\u6cb3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0457"

    aput-object v3, v2, v4

    const-string v3, "\u9ed1\u9f99\u6c5f\u5927\u5174\u5b89\u5cad"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0458"

    aput-object v3, v2, v4

    const-string v3, "\u9ed1\u9f99\u6c5f\u4f0a\u6625"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0459"

    aput-object v3, v2, v4

    const-string v3, "\u9ed1\u9f99\u6c5f\u5927\u5e86"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0464"

    aput-object v3, v2, v4

    const-string v3, "\u9ed1\u9f99\u6c5f\u4e03\u53f0\u6cb3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0467"

    aput-object v3, v2, v4

    const-string v3, "\u9ed1\u9f99\u6c5f\u9e21\u897f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0468"

    aput-object v3, v2, v4

    const-string v3, "\u9ed1\u9f99\u6c5f\u9e64\u5c97"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0469"

    aput-object v3, v2, v4

    const-string v3, "\u9ed1\u9f99\u6c5f\u53cc\u9e2d\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0470"

    aput-object v3, v2, v4

    const-string v3, "\u5185\u8499\u53e4\u547c\u4f26\u8d1d\u5c14"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0471"

    aput-object v3, v2, v4

    const-string v3, "\u5185\u8499\u53e4\u547c\u548c\u6d69\u7279"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0472"

    aput-object v3, v2, v4

    const-string v3, "\u5185\u8499\u53e4\u5305\u5934"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0473"

    aput-object v3, v2, v4

    const-string v3, "\u5185\u8499\u53e4\u4e4c\u6d77"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0474"

    aput-object v3, v2, v4

    const-string v3, "\u5185\u8499\u53e4\u4e4c\u5170\u67e5\u5e03"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0475"

    aput-object v3, v2, v4

    const-string v3, "\u5185\u8499\u53e4\u901a\u8fbd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0476"

    aput-object v3, v2, v4

    const-string v3, "\u5185\u8499\u53e4\u8d64\u5cf0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0477"

    aput-object v3, v2, v4

    const-string v3, "\u5185\u8499\u53e4\u9102\u5c14\u591a\u65af"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0478"

    aput-object v3, v2, v4

    const-string v3, "\u5185\u8499\u53e4\u4e34\u6cb3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0479"

    aput-object v3, v2, v4

    const-string v3, "\u5185\u8499\u53e4\u9521\u6797\u6d69\u7279"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0482"

    aput-object v3, v2, v4

    const-string v3, "\u5185\u8499\u53e4\u4e4c\u5170\u6d69\u7279"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0483"

    aput-object v3, v2, v4

    const-string v3, "\u5185\u8499\u53e4\u5df4\u5f66\u6d69\u7279"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0510"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u82cf\u65e0\u9521"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0511"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u82cf\u9547\u6c5f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0512"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u82cf\u82cf\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0513"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u82cf\u5357\u901a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0514"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u82cf\u626c\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0515"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u82cf\u76d0\u57ce"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0516"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u82cf\u5f90\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0517"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u82cf\u6dee\u5b89"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0518"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u82cf\u8fde\u4e91\u6e2f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0519"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u82cf\u5e38\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0523"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u82cf\u6cf0\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0527"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u82cf\u5bbf\u8fc1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0530"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u83cf\u6cfd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0531"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u6d4e\u5357"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0532"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u9752\u5c9b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0533"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u6dc4\u535a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0534"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u5fb7\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0535"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u70df\u53f0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0536"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u6f4d\u574a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0537"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u6d4e\u5b81"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0538"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u6cf0\u5b89"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0539"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u4e34\u6c82"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0543"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u6ee8\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0546"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u4e1c\u8425"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0550"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u6ec1\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0551"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u5408\u80a5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0552"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u868c\u57e0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0553"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u829c\u6e56"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0554"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u6dee\u5357"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0555"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u9a6c\u978d\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0556"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u5b89\u5e86"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0557"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u5bbf\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0558"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u6beb\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0559"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u9ec4\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0561"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u6dee\u5317"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0562"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u94dc\u9675"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0563"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u5ba3\u57ce"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0564"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u516d\u5b89"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0565"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u5de2\u6e56"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0566"

    aput-object v3, v2, v4

    const-string v3, "\u5b89\u5fbd\u6c60\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0570"

    aput-object v3, v2, v4

    const-string v3, "\u6d59\u6c5f\u8862\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0571"

    aput-object v3, v2, v4

    const-string v3, "\u6d59\u6c5f\u676d\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0572"

    aput-object v3, v2, v4

    const-string v3, "\u6d59\u6c5f\u6e56\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0573"

    aput-object v3, v2, v4

    const-string v3, "\u6d59\u6c5f\u5609\u5174"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0574"

    aput-object v3, v2, v4

    const-string v3, "\u6d59\u6c5f\u5b81\u6ce2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0575"

    aput-object v3, v2, v4

    const-string v3, "\u6d59\u6c5f\u7ecd\u5174"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0576"

    aput-object v3, v2, v4

    const-string v3, "\u6d59\u6c5f\u53f0\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0577"

    aput-object v3, v2, v4

    const-string v3, "\u6d59\u6c5f\u6e29\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0578"

    aput-object v3, v2, v4

    const-string v3, "\u6d59\u6c5f\u4e3d\u6c34"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0579"

    aput-object v3, v2, v4

    const-string v3, "\u6d59\u6c5f\u91d1\u534e"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0580"

    aput-object v3, v2, v4

    const-string v3, "\u6d59\u6c5f\u821f\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0591"

    aput-object v3, v2, v4

    const-string v3, "\u798f\u5efa\u798f\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0592"

    aput-object v3, v2, v4

    const-string v3, "\u798f\u5efa\u53a6\u95e8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0593"

    aput-object v3, v2, v4

    const-string v3, "\u798f\u5efa\u5b81\u5fb7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0594"

    aput-object v3, v2, v4

    const-string v3, "\u798f\u5efa\u8386\u7530"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0595"

    aput-object v3, v2, v4

    const-string v3, "\u798f\u5efa\u6cc9\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0596"

    aput-object v3, v2, v4

    const-string v3, "\u798f\u5efa\u6f33\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0597"

    aput-object v3, v2, v4

    const-string v3, "\u798f\u5efa\u9f99\u5ca9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0598"

    aput-object v3, v2, v4

    const-string v3, "\u798f\u5efa\u4e09\u660e"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0599"

    aput-object v3, v2, v4

    const-string v3, "\u798f\u5efa\u5357\u5e73"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0631"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u5a01\u6d77"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0632"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u67a3\u5e84"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0633"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u65e5\u7167"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0634"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u83b1\u829c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0635"

    aput-object v3, v2, v4

    const-string v3, "\u5c71\u4e1c\u804a\u57ce"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0660"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u6c55\u5c3e"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0662"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u9633\u6c5f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0663"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u63ed\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0668"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u8302\u540d"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0691"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u897f\u53cc\u7248\u7eb3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0692"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u5fb7\u5b8f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0701"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u897f\u9e70\u6f6d"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0710"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5317\u8944\u6a0a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0711"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5317\u9102\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0712"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5317\u5b5d\u611f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0713"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5317\u9ec4\u5188"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0714"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5317\u9ec4\u77f3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0715"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5317\u54b8\u5b81"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0716"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5317\u8346\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0717"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5317\u5b9c\u660c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0718"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5317\u6069\u65bd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0719"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5317\u5341\u5830"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0722"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5317\u968f\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0724"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5317\u8346\u95e8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0728"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5317\u4ed9\u6843"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0730"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5357\u5cb3\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0731"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5357\u957f\u6c99"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0732"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5357\u6e58\u6f6d"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0733"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5357\u682a\u6d32"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0734"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5357\u8861\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0735"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5357\u90f4\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0736"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5357\u5e38\u5fb7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0737"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5357\u76ca\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0738"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5357\u5a04\u5e95"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0739"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5357\u90b5\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0743"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5357\u5409\u9996"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0744"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5357\u5f20\u5bb6\u754c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0745"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5357\u6000\u5316"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0746"

    aput-object v3, v2, v4

    const-string v3, "\u6e56\u5357\u6c38\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0750"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u6c5f\u95e8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0751"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u97f6\u5173"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0752"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u60e0\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0753"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u6885\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0754"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u6c55\u5934"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0755"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u6df1\u5733"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0756"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u73e0\u6d77"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0757"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u4f5b\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0758"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u8087\u5e86"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0759"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u6e5b\u6c5f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0760"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u4e2d\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0762"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u6cb3\u6e90"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0763"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u6e05\u8fdc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0766"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u4e91\u6d6e"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0768"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u6f6e\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0769"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u4e1c\u4e1c\u839e"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0770"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u897f\u9632\u57ce\u6e2f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0771"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u897f\u5357\u5b81"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0772"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u897f\u67f3\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0773"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u897f\u6842\u6797"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0774"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u897f\u68a7\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0775"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u897f\u7389\u6797"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0776"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u897f\u767e\u8272"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0777"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u897f\u94a6\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0778"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u897f\u6cb3\u6c60"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0779"

    aput-object v3, v2, v4

    const-string v3, "\u5e7f\u897f\u5317\u6d77"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0790"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u897f\u65b0\u4f59"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0791"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u897f\u5357\u660c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0792"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u897f\u4e5d\u6c5f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0793"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u897f\u4e0a\u9976"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0794"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u897f\u629a\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0795"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u897f\u5b9c\u6625"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0796"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u897f\u5409\u5b89"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0797"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u897f\u8d63\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0798"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u897f\u666f\u5fb7\u9547"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0799"

    aput-object v3, v2, v4

    const-string v3, "\u6c5f\u897f\u840d\u4e61"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0812"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u6500\u679d\u82b1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0813"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u81ea\u8d21"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0816"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u7ef5\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0817"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u5357\u5145"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0818"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u8fbe\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0825"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u9042\u5b81"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0826"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u5e7f\u5b89"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0827"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u5df4\u4e2d"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0830"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u6cf8\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0831"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u5b9c\u5bbe"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0832"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u5185\u6c5f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0833"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u4e50\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0834"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u51c9\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0835"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u96c5\u5b89"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0836"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u7518\u5b5c\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0837"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u963f\u575d\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0838"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u5fb7\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0839"

    aput-object v3, v2, v4

    const-string v3, "\u56db\u5ddd\u5e7f\u5143"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0851"

    aput-object v3, v2, v4

    const-string v3, "\u8d35\u5dde\u8d35\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0852"

    aput-object v3, v2, v4

    const-string v3, "\u8d35\u5dde\u9075\u4e49"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0853"

    aput-object v3, v2, v4

    const-string v3, "\u8d35\u5dde\u5b89\u987a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0854"

    aput-object v3, v2, v4

    const-string v3, "\u8d35\u5dde\u90fd\u5300"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0855"

    aput-object v3, v2, v4

    const-string v3, "\u8d35\u5dde\u51ef\u91cc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0856"

    aput-object v3, v2, v4

    const-string v3, "\u8d35\u5dde\u94dc\u4ec1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0857"

    aput-object v3, v2, v4

    const-string v3, "\u8d35\u5dde\u6bd5\u8282"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0858"

    aput-object v3, v2, v4

    const-string v3, "\u8d35\u5dde\u516d\u76d8\u6c34"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0859"

    aput-object v3, v2, v4

    const-string v3, "\u8d35\u5dde\u5174\u4e49"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0870"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u662d\u901a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0871"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u6606\u660e"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0872"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u5927\u7406"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0873"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u7ea2\u6cb3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0874"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u66f2\u9756"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0875"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u4fdd\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0876"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u6587\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0877"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u7389\u6eaa"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0878"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u695a\u96c4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0879"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u601d\u8305"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0883"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u4e34\u6ca7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0886"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u6012\u6c5f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0887"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u8fea\u5e86"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0888"

    aput-object v3, v2, v4

    const-string v3, "\u4e91\u5357\u4e3d\u6c5f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0891"

    aput-object v3, v2, v4

    const-string v3, "\u897f\u85cf\u62c9\u8428"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0892"

    aput-object v3, v2, v4

    const-string v3, "\u897f\u85cf\u65e5\u5580\u5219"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0893"

    aput-object v3, v2, v4

    const-string v3, "\u897f\u85cf\u5c71\u5357"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0894"

    aput-object v3, v2, v4

    const-string v3, "\u897f\u85cf\u6797\u829d"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0895"

    aput-object v3, v2, v4

    const-string v3, "\u897f\u85cf\u660c\u90fd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0896"

    aput-object v3, v2, v4

    const-string v3, "\u897f\u85cf\u90a3\u66f2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0897"

    aput-object v3, v2, v4

    const-string v3, "\u897f\u85cf\u963f\u91cc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0898"

    aput-object v3, v2, v4

    const-string v3, "\u6d77\u5357\u6d77\u53e3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0899"

    aput-object v3, v2, v4

    const-string v3, "\u6d77\u5357\u4e09\u4e9a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0901"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u5854\u57ce"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0902"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u54c8\u5bc6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0903"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u548c\u7530"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0906"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u963f\u52d2\u6cf0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0908"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u514b\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0909"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u535a\u4e50"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0910"

    aput-object v3, v2, v4

    const-string v3, "\u9655\u897f\u54b8\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0911"

    aput-object v3, v2, v4

    const-string v3, "\u9655\u897f\u5ef6\u5b89"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0912"

    aput-object v3, v2, v4

    const-string v3, "\u9655\u897f\u6986\u6797"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0913"

    aput-object v3, v2, v4

    const-string v3, "\u9655\u897f\u6e2d\u5357"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0914"

    aput-object v3, v2, v4

    const-string v3, "\u9655\u897f\u5546\u6d1b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0915"

    aput-object v3, v2, v4

    const-string v3, "\u9655\u897f\u5b89\u5eb7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0916"

    aput-object v3, v2, v4

    const-string v3, "\u9655\u897f\u6c49\u4e2d"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0917"

    aput-object v3, v2, v4

    const-string v3, "\u9655\u897f\u5b9d\u9e21"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0919"

    aput-object v3, v2, v4

    const-string v3, "\u9655\u897f\u94dc\u5ddd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0930"

    aput-object v3, v2, v4

    const-string v3, "\u7518\u8083\u4e34\u590f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0931"

    aput-object v3, v2, v4

    const-string v3, "\u7518\u8083\u5170\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0932"

    aput-object v3, v2, v4

    const-string v3, "\u7518\u8083\u5b9a\u897f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0933"

    aput-object v3, v2, v4

    const-string v3, "\u7518\u8083\u5e73\u51c9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0934"

    aput-object v3, v2, v4

    const-string v3, "\u7518\u8083\u5e86\u9633"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0935"

    aput-object v3, v2, v4

    const-string v3, "\u7518\u8083\u6b66\u5a01"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0936"

    aput-object v3, v2, v4

    const-string v3, "\u7518\u8083\u5f20\u6396"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0937"

    aput-object v3, v2, v4

    const-string v3, "\u7518\u8083\u5609\u5cea\u5173"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0938"

    aput-object v3, v2, v4

    const-string v3, "\u7518\u8083\u5929\u6c34"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0939"

    aput-object v3, v2, v4

    const-string v3, "\u7518\u8083\u9647\u5357"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0941"

    aput-object v3, v2, v4

    const-string v3, "\u7518\u8083\u7518\u5357"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0943"

    aput-object v3, v2, v4

    const-string v3, "\u7518\u8083\u767d\u94f6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0951"

    aput-object v3, v2, v4

    const-string v3, "\u5b81\u590f\u94f6\u5ddd"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0952"

    aput-object v3, v2, v4

    const-string v3, "\u5b81\u590f\u77f3\u5634\u5c71"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0953"

    aput-object v3, v2, v4

    const-string v3, "\u5b81\u590f\u5434\u5fe0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0954"

    aput-object v3, v2, v4

    const-string v3, "\u5b81\u590f\u56fa\u539f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x139

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0955"

    aput-object v3, v2, v4

    const-string v3, "\u5b81\u590f\u4e2d\u536b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0970"

    aput-object v3, v2, v4

    const-string v3, "\u9752\u6d77\u6d77\u5317\u5dde"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0971"

    aput-object v3, v2, v4

    const-string v3, "\u9752\u6d77\u897f\u5b81"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0972"

    aput-object v3, v2, v4

    const-string v3, "\u9752\u6d77\u6d77\u4e1c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0973"

    aput-object v3, v2, v4

    const-string v3, "\u9752\u6d77\u9ec4\u5357"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0974"

    aput-object v3, v2, v4

    const-string v3, "\u9752\u6d77\u5171\u548c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0975"

    aput-object v3, v2, v4

    const-string v3, "\u9752\u6d77\u679c\u6d1b"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x140

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0976"

    aput-object v3, v2, v4

    const-string v3, "\u9752\u6d77\u7389\u6811"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x141

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0977"

    aput-object v3, v2, v4

    const-string v3, "\u9752\u6d77\u5fb7\u4ee4\u54c8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x142

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0979"

    aput-object v3, v2, v4

    const-string v3, "\u9752\u6d77\u683c\u5c14\u6728"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x143

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0990"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u514b\u62c9\u739b\u4f9d"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x144

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0991"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u4e4c\u9c81\u6728\u9f50"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x145

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0992"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u594e\u5c6f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x146

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0993"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u77f3\u6cb3\u5b50"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x147

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0994"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u660c\u5409"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x148

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0995"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u5410\u9c81\u756a"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x149

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0996"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u5e93\u5c14\u52d2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0997"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u963f\u514b\u82cf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0998"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u5580\u4ec0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0999"

    aput-object v3, v2, v4

    const-string v3, "\u65b0\u7586\u4f0a\u7281"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/FixedNumberList;->mFixedNumberListArray:[[Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lsmartisanos/app/contacts/phone/FixedNumberList;->mContext:Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Lsmartisanos/app/contacts/phone/FixedNumberList;->initData()V

    .line 20
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lsmartisanos/app/contacts/phone/FixedNumberList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-class v1, Lsmartisanos/app/contacts/phone/FixedNumberList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsmartisanos/app/contacts/phone/FixedNumberList;->sFixedNumberList:Lsmartisanos/app/contacts/phone/FixedNumberList;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lsmartisanos/app/contacts/phone/FixedNumberList;

    invoke-direct {v0, p0}, Lsmartisanos/app/contacts/phone/FixedNumberList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsmartisanos/app/contacts/phone/FixedNumberList;->sFixedNumberList:Lsmartisanos/app/contacts/phone/FixedNumberList;

    .line 34
    :cond_0
    sget-object v0, Lsmartisanos/app/contacts/phone/FixedNumberList;->sFixedNumberList:Lsmartisanos/app/contacts/phone/FixedNumberList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 23
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsmartisanos/app/contacts/phone/FixedNumberList;->mFixedNumberListArray:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 24
    iget-object v2, p0, Lsmartisanos/app/contacts/phone/FixedNumberList;->mFixedNumberListArray:[[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 26
    .local v0, "countryNumber":[Ljava/lang/String;
    iget-object v2, p0, Lsmartisanos/app/contacts/phone/FixedNumberList;->mFixedNumberMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "countryNumber":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static isFixedNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v2

    .line 41
    :cond_1
    invoke-static {p1}, Lsmartisanos/app/contacts/phone/FixedNumberList;->isFixedNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const/4 v3, 0x3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "code":Ljava/lang/String;
    iget-object v3, p0, Lsmartisanos/app/contacts/phone/FixedNumberList;->mFixedNumberMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    const/4 v3, 0x4

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v3, p0, Lsmartisanos/app/contacts/phone/FixedNumberList;->mFixedNumberMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 52
    .restart local v1    # "name":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
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
