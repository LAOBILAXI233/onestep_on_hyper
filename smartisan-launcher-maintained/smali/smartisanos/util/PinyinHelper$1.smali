.class final Lsmartisanos/util/PinyinHelper$1;
.super Ljava/util/HashMap;
.source "PinyinHelper.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisanos/util/PinyinHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Character;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 70
    const v0, 0x963f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "A"

    aput-object v2, v1, v3

    const-string v2, "E"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const/16 v0, 0x55c4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "A"

    aput-object v2, v1, v3

    const-string v2, "SHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const v0, 0x827e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "AI"

    aput-object v2, v1, v3

    const-string v2, "YI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/16 v0, 0x62d7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "AO"

    aput-object v2, v1, v3

    const-string v2, "NIU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/16 v0, 0x6252

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BA"

    aput-object v2, v1, v3

    const-string v2, "PA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const v0, 0x94af

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BA"

    aput-object v2, v1, v3

    const-string v2, "PA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const v0, 0x8019

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BA"

    aput-object v2, v1, v3

    const-string v2, "PA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/16 v0, 0x67cf

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BAI"

    aput-object v2, v1, v3

    const-string v2, "BO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/16 v0, 0x767e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BAI"

    aput-object v2, v1, v3

    const-string v2, "BO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/16 v0, 0x6273

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BAN"

    aput-object v2, v1, v3

    const-string v2, "PAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const v0, 0x822c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "BAN"

    aput-object v2, v1, v3

    const-string v2, "BO"

    aput-object v2, v1, v4

    const-string v2, "PAN"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/16 v0, 0x5762

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BAN"

    aput-object v2, v1, v3

    const-string v2, "PAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const v0, 0x8180

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BANG"

    aput-object v2, v1, v3

    const-string v2, "PANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const v0, 0x868c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BANG"

    aput-object v2, v1, v3

    const-string v2, "BENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/16 v0, 0x78c5

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BANG"

    aput-object v2, v1, v3

    const-string v2, "PANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/16 v0, 0x508d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BANG"

    aput-object v2, v1, v3

    const-string v2, "PANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/16 v0, 0x6412

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BANG"

    aput-object v2, v1, v3

    const-string v2, "PENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const v0, 0x8584

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BAO"

    aput-object v2, v1, v3

    const-string v2, "BO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/16 v0, 0x5821

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "BAO"

    aput-object v2, v1, v3

    const-string v2, "BU"

    aput-object v2, v1, v4

    const-string v2, "PU"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/16 v0, 0x66b4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BAO"

    aput-object v2, v1, v3

    const-string v2, "PU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const v0, 0x9642

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "BEI"

    aput-object v2, v1, v3

    const-string v2, "PI"

    aput-object v2, v1, v4

    const-string v2, "PO"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/16 v0, 0x7b84

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "BEI"

    aput-object v2, v1, v3

    const-string v2, "BI"

    aput-object v2, v1, v4

    const-string v2, "PI"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/16 v0, 0x6911

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BEI"

    aput-object v2, v1, v3

    const-string v2, "PI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/16 v0, 0x5b5b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BEI"

    aput-object v2, v1, v3

    const-string v2, "BO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/16 v0, 0x5457

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BEI"

    aput-object v2, v1, v3

    const-string v2, "BAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/16 v0, 0x681f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BEN"

    aput-object v2, v1, v3

    const-string v2, "BING"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const v0, 0x8d32

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BEN"

    aput-object v2, v1, v3

    const-string v2, "BI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/16 v0, 0x580b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BENG"

    aput-object v2, v1, v3

    const-string v2, "PENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/16 v0, 0x5421

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BI"

    aput-object v2, v1, v3

    const-string v2, "PI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const v0, 0x81c2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BI"

    aput-object v2, v1, v3

    const-string v2, "BEI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const v0, 0x8f9f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BI"

    aput-object v2, v1, v3

    const-string v2, "PI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const v0, 0x88e8

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BI"

    aput-object v2, v1, v3

    const-string v2, "PI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const v0, 0x90b2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BI"

    aput-object v2, v1, v3

    const-string v2, "BIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/16 v0, 0x69df

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BIN"

    aput-object v2, v1, v3

    const-string v2, "BING"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/16 v0, 0x6241

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BIAN"

    aput-object v2, v1, v3

    const-string v2, "PIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const/16 v0, 0x4fbf

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BIAN"

    aput-object v2, v1, v3

    const-string v2, "PIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/16 v0, 0x7f0f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BIAN"

    aput-object v2, v1, v3

    const-string v2, "PIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const v0, 0x9aa0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BIAO"

    aput-object v2, v1, v3

    const-string v2, "PIAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/16 v0, 0x6753

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BIAO"

    aput-object v2, v1, v3

    const-string v2, "SHAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const/16 v0, 0x73a2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BIN"

    aput-object v2, v1, v3

    const-string v2, "FEN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/16 v0, 0x5c4f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BING"

    aput-object v2, v1, v3

    const-string v2, "PING"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/16 v0, 0x5265

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BO"

    aput-object v2, v1, v3

    const-string v2, "BAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/16 v0, 0x6cca

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BO"

    aput-object v2, v1, v3

    const-string v2, "PO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/16 v0, 0x4f2f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BO"

    aput-object v2, v1, v3

    const-string v2, "BAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/16 v0, 0x535c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BO"

    aput-object v2, v1, v3

    const-string v2, "BU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/16 v0, 0x57d4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BU"

    aput-object v2, v1, v3

    const-string v2, "PU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/16 v0, 0x5693

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CA"

    aput-object v2, v1, v3

    const-string v2, "CHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const/16 v0, 0x53c2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CAN"

    aput-object v2, v1, v3

    const-string v2, "SAN"

    aput-object v2, v1, v4

    const-string v2, "SHEN"

    aput-object v2, v1, v5

    const-string v2, "CEN"

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/16 v0, 0x5072

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CAI"

    aput-object v2, v1, v3

    const-string v2, "SI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/16 v0, 0x4fa7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CE"

    aput-object v2, v1, v3

    const-string v2, "ZHAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const/16 v0, 0x4f27

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHANG"

    aput-object v2, v1, v3

    const-string v2, "CHEN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const v0, 0x85cf

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CANG"

    aput-object v2, v1, v3

    const-string v2, "ZANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const v0, 0x81e7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CANG"

    aput-object v2, v1, v3

    const-string v2, "ZANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/16 v0, 0x564c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CENG"

    aput-object v2, v1, v3

    const-string v2, "CHENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const/16 v0, 0x66fe

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CENG"

    aput-object v2, v1, v3

    const-string v2, "ZENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const v0, 0x9987

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHA"

    aput-object v2, v1, v3

    const-string v2, "ZHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/16 v0, 0x5dee

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "CHA"

    aput-object v2, v1, v3

    const-string v2, "CI"

    aput-object v2, v1, v4

    const-string v2, "CHAI"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/16 v0, 0x55b3

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHA"

    aput-object v2, v1, v3

    const-string v2, "ZHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/16 v0, 0x67e5

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHA"

    aput-object v2, v1, v3

    const-string v2, "ZHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const v0, 0x8336

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHA"

    aput-object v2, v1, v3

    const-string v2, "ZHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const v0, 0x837c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHA"

    aput-object v2, v1, v3

    const-string v2, "TU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/16 v0, 0x6942

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHA"

    aput-object v2, v1, v3

    const-string v2, "ZHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/16 v0, 0x63ba

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "CHAN"

    aput-object v2, v1, v3

    const-string v2, "CAN"

    aput-object v2, v1, v4

    const-string v2, "SHAN"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/16 v0, 0x5b71

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHAN"

    aput-object v2, v1, v3

    const-string v2, "CAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/16 v0, 0x7985

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHAN"

    aput-object v2, v1, v3

    const-string v2, "SHAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/16 v0, 0x5574

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHAN"

    aput-object v2, v1, v3

    const-string v2, "TAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const v0, 0x98a4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHAN"

    aput-object v2, v1, v3

    const-string v2, "ZHAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const v0, 0x957f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHANG"

    aput-object v2, v1, v3

    const-string v2, "ZHANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/16 v0, 0x5382

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHANG"

    aput-object v2, v1, v3

    const-string v2, "AN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/16 v0, 0x739a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHANG"

    aput-object v2, v1, v3

    const-string v2, "YANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/16 v0, 0x7625

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHAI"

    aput-object v2, v1, v3

    const-string v2, "CUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/16 v0, 0x712f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHAO"

    aput-object v2, v1, v3

    const-string v2, "ZHUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/16 v0, 0x5632

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHAO"

    aput-object v2, v1, v3

    const-string v2, "ZHAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/16 v0, 0x671d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHAO"

    aput-object v2, v1, v3

    const-string v2, "ZHAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const v0, 0x8f66

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHE"

    aput-object v2, v1, v3

    const-string v2, "JU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const v0, 0x8c0c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHEN"

    aput-object v2, v1, v3

    const-string v2, "SHEN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/16 v0, 0x79f0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHEN"

    aput-object v2, v1, v3

    const-string v2, "CHENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const v0, 0x94db

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHENG"

    aput-object v2, v1, v3

    const-string v2, "DANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/16 v0, 0x4e58

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHENG"

    aput-object v2, v1, v3

    const-string v2, "SHENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/16 v0, 0x6f84    # 4.0004E-41f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHENG"

    aput-object v2, v1, v3

    const-string v2, "DENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const/16 v0, 0x76db

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHENG"

    aput-object v2, v1, v3

    const-string v2, "SHENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/16 v0, 0x5319

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHI"

    aput-object v2, v1, v3

    const-string v2, "SHI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/16 v0, 0x577b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHI"

    aput-object v2, v1, v3

    const-string v2, "DI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/16 v0, 0x5c3a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHI"

    aput-object v2, v1, v3

    const-string v2, "CHE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const v0, 0x91cd

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHONG"

    aput-object v2, v1, v3

    const-string v2, "ZHONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/16 v0, 0x4ec7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHOU"

    aput-object v2, v1, v3

    const-string v2, "QIU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/16 v0, 0x5e6c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHOU"

    aput-object v2, v1, v3

    const-string v2, "DAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/16 v0, 0x677b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHOU"

    aput-object v2, v1, v3

    const-string v2, "NIU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const v0, 0x81ed

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHOU"

    aput-object v2, v1, v3

    const-string v2, "XIU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/16 v0, 0x755c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHU"

    aput-object v2, v1, v3

    const-string v2, "XU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/16 v0, 0x6b58

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHUA"

    aput-object v2, v1, v3

    const-string v2, "XU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/16 v0, 0x555c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHUAI"

    aput-object v2, v1, v3

    const-string v2, "CHUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/16 v0, 0x4f20

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHUAN"

    aput-object v2, v1, v3

    const-string v2, "ZHUAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const v0, 0x931e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHUN"

    aput-object v2, v1, v3

    const-string v2, "DUI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/16 v0, 0x7ef0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHUO"

    aput-object v2, v1, v3

    const-string v2, "CHAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/16 v0, 0x7ca2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CI"

    aput-object v2, v1, v3

    const-string v2, "ZI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const v0, 0x8308

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CI"

    aput-object v2, v1, v3

    const-string v2, "ZI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/16 v0, 0x4f3a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CI"

    aput-object v2, v1, v3

    const-string v2, "SI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/16 v0, 0x679e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CONG"

    aput-object v2, v1, v3

    const-string v2, "ZONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const/16 v0, 0x6512

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CUAN"

    aput-object v2, v1, v3

    const-string v2, "ZAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/16 v0, 0x64ae

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CUO"

    aput-object v2, v1, v3

    const-string v2, "ZUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const v0, 0x9147

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CUO"

    aput-object v2, v1, v3

    const-string v2, "ZAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/16 v0, 0x55d2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DA"

    aput-object v2, v1, v3

    const-string v2, "TA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/16 v0, 0x5927

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DA"

    aput-object v2, v1, v3

    const-string v2, "DAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const/16 v0, 0x5454

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DAI"

    aput-object v2, v1, v3

    const-string v2, "TAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const v0, 0x8bd2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DAI"

    aput-object v2, v1, v3

    const-string v2, "YI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const v0, 0x9a80

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DAI"

    aput-object v2, v1, v3

    const-string v2, "TAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const/16 v0, 0x5355

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "DAN"

    aput-object v2, v1, v3

    const-string v2, "CHAN"

    aput-object v2, v1, v4

    const-string v2, "SHAN"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/16 v0, 0x63b8

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DAN"

    aput-object v2, v1, v3

    const-string v2, "SHAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/16 v0, 0x5f39

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DAN"

    aput-object v2, v1, v3

    const-string v2, "TAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const/16 v0, 0x6fb9

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DAN"

    aput-object v2, v1, v3

    const-string v2, "TAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const/16 v0, 0x53e8

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DAO"

    aput-object v2, v1, v3

    const-string v2, "TAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const/16 v0, 0x5f97

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DE"

    aput-object v2, v1, v3

    const-string v2, "DEI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/16 v0, 0x63d0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DI"

    aput-object v2, v1, v3

    const-string v2, "TI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/16 v0, 0x7684

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DI"

    aput-object v2, v1, v3

    const-string v2, "DE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const v0, 0x8e62

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DI"

    aput-object v2, v1, v3

    const-string v2, "ZHI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const/16 v0, 0x5e95

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DI"

    aput-object v2, v1, v3

    const-string v2, "DE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const/16 v0, 0x5730

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DI"

    aput-object v2, v1, v3

    const-string v2, "DE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/16 v0, 0x6755

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DI"

    aput-object v2, v1, v3

    const-string v2, "DUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const/16 v0, 0x4f43

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DIAN"

    aput-object v2, v1, v3

    const-string v2, "TIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const v0, 0x94bf

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DIAN"

    aput-object v2, v1, v3

    const-string v2, "TIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/16 v0, 0x54a5

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DIE"

    aput-object v2, v1, v3

    const-string v2, "XI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/16 v0, 0x558b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DIE"

    aput-object v2, v1, v3

    const-string v2, "ZHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const v0, 0x87b2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DIE"

    aput-object v2, v1, v3

    const-string v2, "ZHI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/16 v0, 0x4e01

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DING"

    aput-object v2, v1, v3

    const-string v2, "ZHENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/16 v0, 0x4f97

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DONG"

    aput-object v2, v1, v3

    const-string v2, "TONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/16 v0, 0x578c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DONG"

    aput-object v2, v1, v3

    const-string v2, "TONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const/16 v0, 0x5cd2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DONG"

    aput-object v2, v1, v3

    const-string v2, "TONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/16 v0, 0x6d1e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DONG"

    aput-object v2, v1, v3

    const-string v2, "TONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/16 v0, 0x606b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DONG"

    aput-object v2, v1, v3

    const-string v2, "TONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const v0, 0x90fd

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DOU"

    aput-object v2, v1, v3

    const-string v2, "DU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/16 v0, 0x6793

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DOU"

    aput-object v2, v1, v3

    const-string v2, "ZHU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const v0, 0x8bfb

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DU"

    aput-object v2, v1, v3

    const-string v2, "DOU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/16 v0, 0x5ea6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DUO"

    aput-object v2, v1, v3

    const-string v2, "DU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const v0, 0x9566

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DUN"

    aput-object v2, v1, v3

    const-string v2, "DUI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const/16 v0, 0x6566

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DUN"

    aput-object v2, v1, v3

    const-string v2, "DUI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const v0, 0x8e72

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DUN"

    aput-object v2, v1, v3

    const-string v2, "CUN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/16 v0, 0x56e4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DUN"

    aput-object v2, v1, v3

    const-string v2, "TUN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/16 v0, 0x6c8c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DUN"

    aput-object v2, v1, v3

    const-string v2, "ZHUAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const v0, 0x987f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DUN"

    aput-object v2, v1, v3

    const-string v2, "DU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/16 v0, 0x54c6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DUO"

    aput-object v2, v1, v3

    const-string v2, "CHI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const/16 v0, 0x67c1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DUO"

    aput-object v2, v1, v3

    const-string v2, "TUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const/16 v0, 0x6076

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "E"

    aput-object v2, v1, v3

    const-string v2, "WU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/16 v0, 0x54e6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "E"

    aput-object v2, v1, v3

    const-string v2, "O"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const v0, 0x86fe

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "E"

    aput-object v2, v1, v3

    const-string v2, "YI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const v0, 0x800f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ER"

    aput-object v2, v1, v3

    const-string v2, "NAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/16 v0, 0x756a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FAN"

    aput-object v2, v1, v3

    const-string v2, "PAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const v0, 0x8543

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FAN"

    aput-object v2, v1, v3

    const-string v2, "BO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const/16 v0, 0x7e41

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FAN"

    aput-object v2, v1, v3

    const-string v2, "PO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const v0, 0x82be

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FEI"

    aput-object v2, v1, v3

    const-string v2, "FU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const v0, 0x9022

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "FENG"

    aput-object v2, v1, v3

    const-string v2, "PANG"

    aput-object v2, v1, v4

    const-string v2, "PENG"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const/16 v0, 0x51af

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FENG"

    aput-object v2, v1, v3

    const-string v2, "PING"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const/16 v0, 0x4f5b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FO"

    aput-object v2, v1, v3

    const-string v2, "FU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const/16 v0, 0x5426

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FOU"

    aput-object v2, v1, v3

    const-string v2, "PI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const/16 v0, 0x62c2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FU"

    aput-object v2, v1, v3

    const-string v2, "BI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const v0, 0x80f3

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GA"

    aput-object v2, v1, v3

    const-string v2, "GE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const v0, 0x80f2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GAI"

    aput-object v2, v1, v3

    const-string v2, "HAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const/16 v0, 0x76d6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GAI"

    aput-object v2, v1, v3

    const-string v2, "GE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const v0, 0x9550

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GAO"

    aput-object v2, v1, v3

    const-string v2, "HAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const/16 v0, 0x4ee1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GE"

    aput-object v2, v1, v3

    const-string v2, "YI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const/16 v0, 0x7ea5

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GE"

    aput-object v2, v1, v3

    const-string v2, "HE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const v0, 0x9978

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GE"

    aput-object v2, v1, v3

    const-string v2, "LE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const/16 v0, 0x54af

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "GE"

    aput-object v2, v1, v3

    const-string v2, "KA"

    aput-object v2, v1, v4

    const-string v2, "LUO"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const v0, 0x9769

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GE"

    aput-object v2, v1, v3

    const-string v2, "JI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const v0, 0x86e4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GE"

    aput-object v2, v1, v3

    const-string v2, "HA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const/16 v0, 0x5408

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GE"

    aput-object v2, v1, v3

    const-string v2, "HE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const/16 v0, 0x784c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GE"

    aput-object v2, v1, v3

    const-string v2, "LUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const/16 v0, 0x7ed9

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GEI"

    aput-object v2, v1, v3

    const-string v2, "JI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const v0, 0x9888

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GENG"

    aput-object v2, v1, v3

    const-string v2, "JING"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const/16 v0, 0x67b8

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GOU"

    aput-object v2, v1, v3

    const-string v2, "JU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const v0, 0x8c37

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GU"

    aput-object v2, v1, v3

    const-string v2, "YU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const v0, 0x9e58

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GU"

    aput-object v2, v1, v3

    const-string v2, "HU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const/16 v0, 0x5471

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GUA"

    aput-object v2, v1, v3

    const-string v2, "GU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const/16 v0, 0x681d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GUA"

    aput-object v2, v1, v3

    const-string v2, "KUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const/16 v0, 0x5e7f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GUANG"

    aput-object v2, v1, v3

    const-string v2, "AN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const/16 v0, 0x5ec6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GUI"

    aput-object v2, v1, v3

    const-string v2, "WEI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const v0, 0x9c91

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GUI"

    aput-object v2, v1, v3

    const-string v2, "XIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const/16 v0, 0x6867

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GUI"

    aput-object v2, v1, v3

    const-string v2, "HUI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/16 v0, 0x67dc

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GUI"

    aput-object v2, v1, v3

    const-string v2, "JU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const/16 v0, 0x7085

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GUI"

    aput-object v2, v1, v3

    const-string v2, "JIONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const/16 v0, 0x55e8

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HAI"

    aput-object v2, v1, v3

    const-string v2, "HEI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const v0, 0x8fd8

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HAI"

    aput-object v2, v1, v3

    const-string v2, "HUAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const/16 v0, 0x592f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HANG"

    aput-object v2, v1, v3

    const-string v2, "HEN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const/16 v0, 0x5df7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HANG"

    aput-object v2, v1, v3

    const-string v2, "XIANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const/16 v0, 0x542d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HANG"

    aput-object v2, v1, v3

    const-string v2, "KENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/16 v0, 0x548c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "HE"

    aput-object v2, v1, v3

    const-string v2, "HU"

    aput-object v2, v1, v4

    const-string v2, "HUO"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const v0, 0x8c89

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "HE"

    aput-object v2, v1, v3

    const-string v2, "HAO"

    aput-object v2, v1, v4

    const-string v2, "MO"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const/16 v0, 0x6838

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HE"

    aput-object v2, v1, v3

    const-string v2, "HU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const v0, 0x8679

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HONG"

    aput-object v2, v1, v3

    const-string v2, "JIANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const/16 v0, 0x7ea2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HONG"

    aput-object v2, v1, v3

    const-string v2, "GONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const v0, 0x9e44

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HU"

    aput-object v2, v1, v3

    const-string v2, "GU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const/16 v0, 0x6d52

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HU"

    aput-object v2, v1, v3

    const-string v2, "XU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const/16 v0, 0x552c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HU"

    aput-object v2, v1, v3

    const-string v2, "XIA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const/16 v0, 0x54d7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HUA"

    aput-object v2, v1, v3

    const-string v2, "HUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const v0, 0x90c7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HUAN"

    aput-object v2, v1, v3

    const-string v2, "XUN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const/16 v0, 0x57b8

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HUAN"

    aput-object v2, v1, v3

    const-string v2, "YUAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const/16 v0, 0x571c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HUAN"

    aput-object v2, v1, v3

    const-string v2, "YUAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const/16 v0, 0x73f2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HUI"

    aput-object v2, v1, v3

    const-string v2, "HUN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const/16 v0, 0x4f1a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HUI"

    aput-object v2, v1, v3

    const-string v2, "KUAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const v0, 0x8364

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HUN"

    aput-object v2, v1, v3

    const-string v2, "XUN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const/16 v0, 0x5947

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JI"

    aput-object v2, v1, v3

    const-string v2, "QI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const/16 v0, 0x7f09

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JI"

    aput-object v2, v1, v3

    const-string v2, "QI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const/16 v0, 0x4e9f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JI"

    aput-object v2, v1, v3

    const-string v2, "QI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const/16 v0, 0x5048

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JI"

    aput-object v2, v1, v3

    const-string v2, "JIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const/16 v0, 0x7cfb

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JI"

    aput-object v2, v1, v3

    const-string v2, "XI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const v0, 0x8360

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JI"

    aput-object v2, v1, v3

    const-string v2, "QI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const/16 v0, 0x5bb6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIA"

    aput-object v2, v1, v3

    const-string v2, "JIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const/16 v0, 0x4f3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "JIA"

    aput-object v2, v1, v3

    const-string v2, "GA"

    aput-object v2, v1, v4

    const-string v2, "QIE"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const v0, 0x8304

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIA"

    aput-object v2, v1, v3

    const-string v2, "QIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const v0, 0x8d3e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIA"

    aput-object v2, v1, v3

    const-string v2, "GU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const v0, 0x89c1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIAN"

    aput-object v2, v1, v3

    const-string v2, "XIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const/16 v0, 0x5c06

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIANG"

    aput-object v2, v1, v3

    const-string v2, "QIANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const v0, 0x964d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIANG"

    aput-object v2, v1, v3

    const-string v2, "XIANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const/16 v0, 0x7f34

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIAO"

    aput-object v2, v1, v3

    const-string v2, "ZHUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const/16 v0, 0x6e6b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIAO"

    aput-object v2, v1, v3

    const-string v2, "QIU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const/16 v0, 0x56bc

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIAO"

    aput-object v2, v1, v3

    const-string v2, "JUE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const/16 v0, 0x4fa5

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIAO"

    aput-object v2, v1, v3

    const-string v2, "YAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const v0, 0x89d2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIAO"

    aput-object v2, v1, v3

    const-string v2, "JUE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const v0, 0x811a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIAO"

    aput-object v2, v1, v3

    const-string v2, "JUE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const/16 v0, 0x527f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIAO"

    aput-object v2, v1, v3

    const-string v2, "CHAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const/16 v0, 0x6821

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIAO"

    aput-object v2, v1, v3

    const-string v2, "XIAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const v0, 0x89c9

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIAO"

    aput-object v2, v1, v3

    const-string v2, "JUE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const v0, 0x89e3

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIE"

    aput-object v2, v1, v3

    const-string v2, "XIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const v0, 0x82a5

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIE"

    aput-object v2, v1, v3

    const-string v2, "GAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const v0, 0x85c9

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIE"

    aput-object v2, v1, v3

    const-string v2, "JI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const/16 v0, 0x77dc

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "JIN"

    aput-object v2, v1, v3

    const-string v2, "QIN"

    aput-object v2, v1, v4

    const-string v2, "GUAN"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const/16 v0, 0x52b2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIN"

    aput-object v2, v1, v3

    const-string v2, "JING"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const v0, 0x9753

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JING"

    aput-object v2, v1, v3

    const-string v2, "LIANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const v0, 0x9f9f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "JUN"

    aput-object v2, v1, v3

    const-string v2, "GUI"

    aput-object v2, v1, v4

    const-string v2, "QIU"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const/16 v0, 0x5480

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JU"

    aput-object v2, v1, v3

    const-string v2, "ZUI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const/16 v0, 0x53e5

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JU"

    aput-object v2, v1, v3

    const-string v2, "GOU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const v0, 0x96bd

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JUAN"

    aput-object v2, v1, v3

    const-string v2, "JUN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const/16 v0, 0x5671

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JUE"

    aput-object v2, v1, v3

    const-string v2, "XUE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const/16 v0, 0x6d5a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JUN"

    aput-object v2, v1, v3

    const-string v2, "XUN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const/16 v0, 0x5496

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "KA"

    aput-object v2, v1, v3

    const-string v2, "GA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const/16 v0, 0x5361

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "KA"

    aput-object v2, v1, v3

    const-string v2, "QIA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const/16 v0, 0x6977

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "KAI"

    aput-object v2, v1, v3

    const-string v2, "JIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const/16 v0, 0x69db

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "KAN"

    aput-object v2, v1, v3

    const-string v2, "JIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const/16 v0, 0x5d41

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "KAN"

    aput-object v2, v1, v3

    const-string v2, "ZHAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const v0, 0x961a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "KAN"

    aput-object v2, v1, v3

    const-string v2, "HAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const/16 v0, 0x625b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "KANG"

    aput-object v2, v1, v3

    const-string v2, "GANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const/16 v0, 0x58f3

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "KE"

    aput-object v2, v1, v3

    const-string v2, "QIAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const/16 v0, 0x54b3

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "KE"

    aput-object v2, v1, v3

    const-string v2, "HAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const/16 v0, 0x514b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "KE"

    aput-object v2, v1, v3

    const-string v2, "KEI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const/16 v0, 0x6d4d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "KUAI"

    aput-object v2, v1, v3

    const-string v2, "HUI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const/16 v0, 0x532e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "KUI"

    aput-object v2, v1, v3

    const-string v2, "GUI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const v0, 0x814a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LA"

    aput-object v2, v1, v3

    const-string v2, "XI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const v0, 0x8721

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LA"

    aput-object v2, v1, v3

    const-string v2, "ZHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const v0, 0x83a8

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LANG"

    aput-object v2, v1, v3

    const-string v2, "LIANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const/16 v0, 0x70d9

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LAO"

    aput-object v2, v1, v3

    const-string v2, "LUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const/16 v0, 0x52d2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LE"

    aput-object v2, v1, v3

    const-string v2, "LEI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const v0, 0x808b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LEI"

    aput-object v2, v1, v3

    const-string v2, "LE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const/16 v0, 0x68f1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LENG"

    aput-object v2, v1, v3

    const-string v2, "LING"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const/16 v0, 0x680e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LI"

    aput-object v2, v1, v3

    const-string v2, "YUE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const v0, 0x9b32

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LI"

    aput-object v2, v1, v3

    const-string v2, "GE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const v0, 0x8dde

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LI"

    aput-object v2, v1, v3

    const-string v2, "LUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const/16 v0, 0x4fe9

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LIA"

    aput-object v2, v1, v3

    const-string v2, "LIANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const/16 v0, 0x6f66

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LIAO"

    aput-object v2, v1, v3

    const-string v2, "LAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const/16 v0, 0x4e86

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LIAO"

    aput-object v2, v1, v3

    const-string v2, "LE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const v0, 0x84fc

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LIAO"

    aput-object v2, v1, v3

    const-string v2, "LU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const/16 v0, 0x65bf

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LIU"

    aput-object v2, v1, v3

    const-string v2, "YOU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const/16 v0, 0x788c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LIU"

    aput-object v2, v1, v3

    const-string v2, "LU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const/16 v0, 0x6cf7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LONG"

    aput-object v2, v1, v3

    const-string v2, "SHUANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const/16 v0, 0x507b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LOU"

    aput-object v2, v1, v3

    const-string v2, "LV"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const v0, 0x9732

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LU"

    aput-object v2, v1, v3

    const-string v2, "LOU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const v0, 0x9646

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LU"

    aput-object v2, v1, v3

    const-string v2, "LIU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const/16 v0, 0x634b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LV"

    aput-object v2, v1, v3

    const-string v2, "LUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const/16 v0, 0x7eff

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LV"

    aput-object v2, v1, v3

    const-string v2, "LU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const/16 v0, 0x7387

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LV"

    aput-object v2, v1, v3

    const-string v2, "SHUAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const/16 v0, 0x7eb6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LUN"

    aput-object v2, v1, v3

    const-string v2, "GUAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const/16 v0, 0x7edc

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LUO"

    aput-object v2, v1, v3

    const-string v2, "LAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const v0, 0x843d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "LUO"

    aput-object v2, v1, v3

    const-string v2, "LAO"

    aput-object v2, v1, v4

    const-string v2, "LA"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const/16 v0, 0x6f2f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LUO"

    aput-object v2, v1, v3

    const-string v2, "TA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const v0, 0x8109

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MO"

    aput-object v2, v1, v3

    const-string v2, "MAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const/16 v0, 0x57cb

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MAI"

    aput-object v2, v1, v3

    const-string v2, "MAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const v0, 0x8513

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MAN"

    aput-object v2, v1, v3

    const-string v2, "WAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const/16 v0, 0x6c13

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MANG"

    aput-object v2, v1, v3

    const-string v2, "MENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const/16 v0, 0x5192

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MAO"

    aput-object v2, v1, v3

    const-string v2, "MO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const/16 v0, 0x6ca1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MEI"

    aput-object v2, v1, v3

    const-string v2, "MO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const/16 v0, 0x4eb9

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MEN"

    aput-object v2, v1, v3

    const-string v2, "WEI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const v0, 0x9e8b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MI"

    aput-object v2, v1, v3

    const-string v2, "MEI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const/16 v0, 0x79d8

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MI"

    aput-object v2, v1, v3

    const-string v2, "BI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const/16 v0, 0x6ccc

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MI"

    aput-object v2, v1, v3

    const-string v2, "BI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const/16 v0, 0x5b93

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MI"

    aput-object v2, v1, v3

    const-string v2, "FU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const v0, 0x84c2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MI"

    aput-object v2, v1, v3

    const-string v2, "MING"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const/16 v0, 0x6e11

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MIAN"

    aput-object v2, v1, v3

    const-string v2, "SHENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const v0, 0x9efe

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MIN"

    aput-object v2, v1, v3

    const-string v2, "MIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const/16 v0, 0x6a21

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MO"

    aput-object v2, v1, v3

    const-string v2, "MU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const/16 v0, 0x6469

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MO"

    aput-object v2, v1, v3

    const-string v2, "MA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const/16 v0, 0x62b9

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MO"

    aput-object v2, v1, v3

    const-string v2, "MA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const/16 v0, 0x7f2a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "MOU"

    aput-object v2, v1, v3

    const-string v2, "MIU"

    aput-object v2, v1, v4

    const-string v2, "MIAO"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const/16 v0, 0x725f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MOU"

    aput-object v2, v1, v3

    const-string v2, "MU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const v0, 0x90a3

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "NA"

    aput-object v2, v1, v3

    const-string v2, "NEI"

    aput-object v2, v1, v4

    const-string v2, "NUO"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const/16 v0, 0x5357

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NAN"

    aput-object v2, v1, v3

    const-string v2, "NA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const/16 v0, 0x5462

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NE"

    aput-object v2, v1, v3

    const-string v2, "NI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const v0, 0x9e1f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NIAO"

    aput-object v2, v1, v3

    const-string v2, "DIAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const/16 v0, 0x5c3f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NIAO"

    aput-object v2, v1, v3

    const-string v2, "SUI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const/16 v0, 0x4e5c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NIE"

    aput-object v2, v1, v3

    const-string v2, "MIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const/16 v0, 0x5f04

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NONG"

    aput-object v2, v1, v3

    const-string v2, "LONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const/16 v0, 0x759f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NVE"

    aput-object v2, v1, v3

    const-string v2, "YAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const/16 v0, 0x5a1c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NUO"

    aput-object v2, v1, v3

    const-string v2, "NA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const/16 v0, 0x6eba

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NI"

    aput-object v2, v1, v3

    const-string v2, "NIAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const v0, 0x8feb

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "PAI"

    aput-object v2, v1, v3

    const-string v2, "PO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const v0, 0x80d6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "PAN"

    aput-object v2, v1, v3

    const-string v2, "PANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const/16 v0, 0x5228

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "PAO"

    aput-object v2, v1, v3

    const-string v2, "BAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const/16 v0, 0x70ae

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "PAO"

    aput-object v2, v1, v3

    const-string v2, "BAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const/16 v0, 0x6ddc

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "PENG"

    aput-object v2, v1, v3

    const-string v2, "PING"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const v0, 0x9b44

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "PO"

    aput-object v2, v1, v3

    const-string v2, "TUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const v0, 0x812f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "PU"

    aput-object v2, v1, v3

    const-string v2, "FU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const/16 v0, 0x6734

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "PU"

    aput-object v2, v1, v3

    const-string v2, "PO"

    aput-object v2, v1, v4

    const-string v2, "PIAO"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const/16 v0, 0x7011

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "PU"

    aput-object v2, v1, v3

    const-string v2, "BAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const/16 v0, 0x66dd

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "PU"

    aput-object v2, v1, v3

    const-string v2, "BAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const/16 v0, 0x6816

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QI"

    aput-object v2, v1, v3

    const-string v2, "XI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const/16 v0, 0x671f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QI"

    aput-object v2, v1, v3

    const-string v2, "JI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const v0, 0x8e4a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QI"

    aput-object v2, v1, v3

    const-string v2, "XI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const/16 v0, 0x5176

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QI"

    aput-object v2, v1, v3

    const-string v2, "JI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const v0, 0x9a91

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QI"

    aput-object v2, v1, v3

    const-string v2, "JI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const v0, 0x9f50

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QI"

    aput-object v2, v1, v3

    const-string v2, "JI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const/16 v0, 0x7a3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QI"

    aput-object v2, v1, v3

    const-string v2, "JI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const/16 v0, 0x7947

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QI"

    aput-object v2, v1, v3

    const-string v2, "ZHI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const/16 v0, 0x5951

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QI"

    aput-object v2, v1, v3

    const-string v2, "XIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const/16 v0, 0x780c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QI"

    aput-object v2, v1, v3

    const-string v2, "QIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const v0, 0x8368

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIAN"

    aput-object v2, v1, v3

    const-string v2, "XUN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const/16 v0, 0x6d45

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIAN"

    aput-object v2, v1, v3

    const-string v2, "JIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const v0, 0x831c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIAN"

    aput-object v2, v1, v3

    const-string v2, "XI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const/16 v0, 0x614a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIAN"

    aput-object v2, v1, v3

    const-string v2, "QIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const/16 v0, 0x4e7e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIAN"

    aput-object v2, v1, v3

    const-string v2, "GAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const/16 v0, 0x5f3a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIANG"

    aput-object v2, v1, v3

    const-string v2, "JIANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const/16 v0, 0x5ce4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIAO"

    aput-object v2, v1, v3

    const-string v2, "JIAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const v0, 0x9798

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIAO"

    aput-object v2, v1, v3

    const-string v2, "SHAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const v0, 0x8d84

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIE"

    aput-object v2, v1, v3

    const-string v2, "JU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const v0, 0x90c4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIE"

    aput-object v2, v1, v3

    const-string v2, "XI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const/16 v0, 0x4eb2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIN"

    aput-object v2, v1, v3

    const-string v2, "QING"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const/16 v0, 0x6eb1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIN"

    aput-object v2, v1, v3

    const-string v2, "ZHEN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const/16 v0, 0x7dae

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QING"

    aput-object v2, v1, v3

    const-string v2, "QI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const/16 v0, 0x533a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QU"

    aput-object v2, v1, v3

    const-string v2, "OU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const/16 v0, 0x5708

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QUAN"

    aput-object v2, v1, v3

    const-string v2, "JUAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const v0, 0x96c0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QUE"

    aput-object v2, v1, v3

    const-string v2, "QIAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const v0, 0x82e5

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "RUO"

    aput-object v2, v1, v3

    const-string v2, "RE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const v0, 0x8272

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SE"

    aput-object v2, v1, v3

    const-string v2, "SHAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const/16 v0, 0x585e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SE"

    aput-object v2, v1, v3

    const-string v2, "SAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const/16 v0, 0x6eb9

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SE"

    aput-object v2, v1, v3

    const-string v2, "SUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const/16 v0, 0x4fdf

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SI"

    aput-object v2, v1, v3

    const-string v2, "QI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const/16 v0, 0x772d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SUI"

    aput-object v2, v1, v3

    const-string v2, "HUI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const/16 v0, 0x5239

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHA"

    aput-object v2, v1, v3

    const-string v2, "CHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const/16 v0, 0x53a6    # 3.0007E-41f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHA"

    aput-object v2, v1, v3

    const-string v2, "XIA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const/16 v0, 0x6749

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHAN"

    aput-object v2, v1, v3

    const-string v2, "SHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const/16 v0, 0x5261

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHAN"

    aput-object v2, v1, v3

    const-string v2, "YAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const v0, 0x82d5

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHAO"

    aput-object v2, v1, v3

    const-string v2, "TIAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const/16 v0, 0x53ec

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHAO"

    aput-object v2, v1, v3

    const-string v2, "ZHAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const/16 v0, 0x6298

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHE"

    aput-object v2, v1, v3

    const-string v2, "ZHE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const/16 v0, 0x5c04

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SHE"

    aput-object v2, v1, v3

    const-string v2, "YE"

    aput-object v2, v1, v4

    const-string v2, "YI"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const v0, 0x8398

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHEN"

    aput-object v2, v1, v3

    const-string v2, "XIN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const/16 v0, 0x4ec0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHEN"

    aput-object v2, v1, v3

    const-string v2, "SHI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const/16 v0, 0x6c88

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHEN"

    aput-object v2, v1, v3

    const-string v2, "CHEN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const v0, 0x845a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHEN"

    aput-object v2, v1, v3

    const-string v2, "REN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const v0, 0x8bc6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHI"

    aput-object v2, v1, v3

    const-string v2, "ZHI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const/16 v0, 0x77f3

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHI"

    aput-object v2, v1, v3

    const-string v2, "DAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const/16 v0, 0x62fe

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHI"

    aput-object v2, v1, v3

    const-string v2, "SHE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const/16 v0, 0x4f3c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHI"

    aput-object v2, v1, v3

    const-string v2, "SI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const v0, 0x87ab

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHI"

    aput-object v2, v1, v3

    const-string v2, "ZHE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const v0, 0x9002

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHI"

    aput-object v2, v1, v3

    const-string v2, "KUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const/16 v0, 0x719f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHU"

    aput-object v2, v1, v3

    const-string v2, "SHOU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const/16 v0, 0x672f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHU"

    aput-object v2, v1, v3

    const-string v2, "ZHU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const/16 v0, 0x4fde

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHU"

    aput-object v2, v1, v3

    const-string v2, "YU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const v0, 0x8bf4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHUI"

    aput-object v2, v1, v3

    const-string v2, "SHUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const/16 v0, 0x6570

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHUO"

    aput-object v2, v1, v3

    const-string v2, "SHU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const v0, 0x838e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SUO"

    aput-object v2, v1, v3

    const-string v2, "SHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const/16 v0, 0x5fea

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SONG"

    aput-object v2, v1, v3

    const-string v2, "ZHONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const/16 v0, 0x7f29

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SUO"

    aput-object v2, v1, v3

    const-string v2, "SU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const/16 v0, 0x6c93

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TA"

    aput-object v2, v1, v3

    const-string v2, "DA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const/16 v0, 0x62d3

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TA"

    aput-object v2, v1, v3

    const-string v2, "TUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const v0, 0x8983

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TAN"

    aput-object v2, v1, v3

    const-string v2, "QIN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const v0, 0x9561

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TAN"

    aput-object v2, v1, v3

    const-string v2, "XIN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const/16 v0, 0x7118

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TAO"

    aput-object v2, v1, v3

    const-string v2, "DAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const v0, 0x9676

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TAO"

    aput-object v2, v1, v3

    const-string v2, "YAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const/16 v0, 0x6c64

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TANG"

    aput-object v2, v1, v3

    const-string v2, "SHANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const/16 v0, 0x5018

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TANG"

    aput-object v2, v1, v3

    const-string v2, "CHANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const/16 v0, 0x4ff6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TI"

    aput-object v2, v1, v3

    const-string v2, "CHU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const v0, 0x8351

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TI"

    aput-object v2, v1, v3

    const-string v2, "YI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const v0, 0x8c03

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TIAO"

    aput-object v2, v1, v3

    const-string v2, "DIAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const v0, 0x929a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "TIAO"

    aput-object v2, v1, v3

    const-string v2, "DIAO"

    aput-object v2, v1, v4

    const-string v2, "YAO"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const/16 v0, 0x753a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TING"

    aput-object v2, v1, v3

    const-string v2, "DING"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const/16 v0, 0x6883

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TING"

    aput-object v2, v1, v3

    const-string v2, "DING"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const/16 v0, 0x5c6f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TUN"

    aput-object v2, v1, v3

    const-string v2, "ZHUN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const v0, 0x9a6e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TUO"

    aput-object v2, v1, v3

    const-string v2, "DUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const/16 v0, 0x5d34

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WAI"

    aput-object v2, v1, v3

    const-string v2, "WEI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const v0, 0x839e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WAN"

    aput-object v2, v1, v3

    const-string v2, "GUAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const v0, 0x83c0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WAN"

    aput-object v2, v1, v3

    const-string v2, "YU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const/16 v0, 0x4e07

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WAN"

    aput-object v2, v1, v3

    const-string v2, "MO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const/16 v0, 0x5729

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WEI"

    aput-object v2, v1, v3

    const-string v2, "XU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const/16 v0, 0x5c3e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WEI"

    aput-object v2, v1, v3

    const-string v2, "YI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const v0, 0x9697

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WEI"

    aput-object v2, v1, v3

    const-string v2, "KUI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const/16 v0, 0x5c09

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WEI"

    aput-object v2, v1, v3

    const-string v2, "YU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const v0, 0x851a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WEI"

    aput-object v2, v1, v3

    const-string v2, "YU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const v0, 0x8f92

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WEN"

    aput-object v2, v1, v3

    const-string v2, "YUN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const/16 v0, 0x6c76

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WEN"

    aput-object v2, v1, v3

    const-string v2, "MEN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const/16 v0, 0x6da1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WO"

    aput-object v2, v1, v3

    const-string v2, "GUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const v0, 0x90d7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XI"

    aput-object v2, v1, v3

    const-string v2, "CHI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const v0, 0x94e3

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XI"

    aput-object v2, v1, v3

    const-string v2, "XIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const/16 v0, 0x620f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XI"

    aput-object v2, v1, v3

    const-string v2, "HU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const/16 v0, 0x5413

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XIA"

    aput-object v2, v1, v3

    const-string v2, "HE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const/16 v0, 0x7ea4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XIAN"

    aput-object v2, v1, v3

    const-string v2, "QIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const/16 v0, 0x6d17

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XIAN"

    aput-object v2, v1, v3

    const-string v2, "XI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const v0, 0x9889

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XIE"

    aput-object v2, v1, v3

    const-string v2, "JIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const v0, 0x884c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "XING"

    aput-object v2, v1, v3

    const-string v2, "HANG"

    aput-object v2, v1, v4

    const-string v2, "HENG"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const v0, 0x8365

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XING"

    aput-object v2, v1, v3

    const-string v2, "YING"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const/16 v0, 0x7701

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XING"

    aput-object v2, v1, v3

    const-string v2, "SHENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const/16 v0, 0x5bbf

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XIU"

    aput-object v2, v1, v3

    const-string v2, "SU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const/16 v0, 0x620c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XU"

    aput-object v2, v1, v3

    const-string v2, "GU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const/16 v0, 0x524a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XUE"

    aput-object v2, v1, v3

    const-string v2, "XIAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const v0, 0x8840

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XUE"

    aput-object v2, v1, v3

    const-string v2, "XIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const/16 v0, 0x6bb7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YAN"

    aput-object v2, v1, v3

    const-string v2, "YIN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const/16 v0, 0x54bd

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YAN"

    aput-object v2, v1, v3

    const-string v2, "YE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const/16 v0, 0x6e6e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YAN"

    aput-object v2, v1, v3

    const-string v2, "YIN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const v0, 0x82ab

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YAN"

    aput-object v2, v1, v3

    const-string v2, "YUAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const v0, 0x94a5

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YAO"

    aput-object v2, v1, v3

    const-string v2, "YUE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const/16 v0, 0x53f6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YE"

    aput-object v2, v1, v3

    const-string v2, "XIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const/16 v0, 0x7719

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YI"

    aput-object v2, v1, v3

    const-string v2, "CHI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const v0, 0x9057

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YI"

    aput-object v2, v1, v3

    const-string v2, "WEI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const/16 v0, 0x65bc

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YU"

    aput-object v2, v1, v3

    const-string v2, "WU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const/16 v0, 0x5581

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YU"

    aput-object v2, v1, v3

    const-string v2, "YONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const/16 v0, 0x71a8

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YU"

    aput-object v2, v1, v3

    const-string v2, "YUN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const v0, 0x80b2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YU"

    aput-object v2, v1, v3

    const-string v2, "YAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const/16 v0, 0x5401

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YU"

    aput-object v2, v1, v3

    const-string v2, "XU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const/16 v0, 0x5458

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YUAN"

    aput-object v2, v1, v3

    const-string v2, "YUN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const/16 v0, 0x4e50

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "YUE"

    aput-object v2, v1, v3

    const-string v2, "LE"

    aput-object v2, v1, v4

    const-string v2, "YAO"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const/16 v0, 0x7ea6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YUE"

    aput-object v2, v1, v3

    const-string v2, "YAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const/16 v0, 0x7b60

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YUN"

    aput-object v2, v1, v3

    const-string v2, "JUN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const/16 v0, 0x51ff

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZAO"

    aput-object v2, v1, v3

    const-string v2, "ZUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const/16 v0, 0x4ed4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZAI"

    aput-object v2, v1, v3

    const-string v2, "ZI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const/16 v0, 0x62e9

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZE"

    aput-object v2, v1, v3

    const-string v2, "ZHAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const/16 v0, 0x7b2e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZE"

    aput-object v2, v1, v3

    const-string v2, "ZUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const/16 v0, 0x5179

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZI"

    aput-object v2, v1, v3

    const-string v2, "CI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const/16 v0, 0x5958

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZANG"

    aput-object v2, v1, v3

    const-string v2, "ZHUANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const/16 v0, 0x624e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHA"

    aput-object v2, v1, v3

    const-string v2, "ZA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const v0, 0x8f67

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHA"

    aput-object v2, v1, v3

    const-string v2, "YA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const/16 v0, 0x781f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHA"

    aput-object v2, v1, v3

    const-string v2, "ZUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const/16 v0, 0x7fdf

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHAI"

    aput-object v2, v1, v3

    const-string v2, "DI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const/16 v0, 0x7c98

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHAN"

    aput-object v2, v1, v3

    const-string v2, "NIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const/16 v0, 0x5541

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHAO"

    aput-object v2, v1, v3

    const-string v2, "ZHOU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const/16 v0, 0x7740

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHAO"

    aput-object v2, v1, v3

    const-string v2, "ZHUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const/16 v0, 0x722a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHAO"

    aput-object v2, v1, v3

    const-string v2, "ZHUA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const/16 v0, 0x5431

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHI"

    aput-object v2, v1, v3

    const-string v2, "ZI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const/16 v0, 0x6b96

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHI"

    aput-object v2, v1, v3

    const-string v2, "SHI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const/16 v0, 0x5cd9

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHI"

    aput-object v2, v1, v3

    const-string v2, "SHI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const/16 v0, 0x79cd

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHONG"

    aput-object v2, v1, v3

    const-string v2, "CHONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const/16 v0, 0x5c5e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHU"

    aput-object v2, v1, v3

    const-string v2, "SHU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const v0, 0x891a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHU"

    aput-object v2, v1, v3

    const-string v2, "CHU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const v0, 0x8457

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ZHU"

    aput-object v2, v1, v3

    const-string v2, "ZHE"

    aput-object v2, v1, v4

    const-string v2, "ZHUO"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const v0, 0x8d5a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHUAN"

    aput-object v2, v1, v3

    const-string v2, "ZUAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const/16 v0, 0x5e62

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHUANG"

    aput-object v2, v1, v3

    const-string v2, "CHUANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const/16 v0, 0x690e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHUI"

    aput-object v2, v1, v3

    const-string v2, "CHUI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const/16 v0, 0x7efc

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZENG"

    aput-object v2, v1, v3

    const-string v2, "ZONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const/16 v0, 0x5352

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZU"

    aput-object v2, v1, v3

    const-string v2, "CU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const/16 v0, 0x67de

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZUO"

    aput-object v2, v1, v3

    const-string v2, "ZHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const v0, 0x9162

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZUO"

    aput-object v2, v1, v3

    const-string v2, "CU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    return-void
.end method
