.class final Lsmartisanos/util/PinyinHelper$2;
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
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 529
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 531
    const/16 v0, 0x79cd

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHONG"

    aput-object v2, v1, v3

    const-string v2, "CHONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const v0, 0x8c0c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHEN"

    aput-object v2, v1, v3

    const-string v2, "SHEN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const/16 v0, 0x76d6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GE"

    aput-object v2, v1, v3

    const-string v2, "GAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const v0, 0x90c7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HUAN"

    aput-object v2, v1, v3

    const-string v2, "XUN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const v0, 0x8983

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIN"

    aput-object v2, v1, v3

    const-string v2, "TAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const/16 v0, 0x5355

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DAN"

    aput-object v2, v1, v3

    const-string v2, "SHAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const/16 v0, 0x53ec

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHAO"

    aput-object v2, v1, v3

    const-string v2, "SHAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const v0, 0x851a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YU"

    aput-object v2, v1, v3

    const-string v2, "WEI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const v0, 0x9697

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WEI"

    aput-object v2, v1, v3

    const-string v2, "KUI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const v0, 0x90d7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XI"

    aput-object v2, v1, v3

    const-string v2, "CHI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const v0, 0x89e3

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XIE"

    aput-object v2, v1, v3

    const-string v2, "JIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const/16 v0, 0x4e50

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YUE"

    aput-object v2, v1, v3

    const-string v2, "LE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const/16 v0, 0x7fdf

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHAI"

    aput-object v2, v1, v3

    const-string v2, "DI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const/16 v0, 0x67e5

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHA"

    aput-object v2, v1, v3

    const-string v2, "CHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const v0, 0x963f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "A"

    aput-object v2, v1, v3

    const-string v2, "E"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const v0, 0x827e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "AI"

    aput-object v2, v1, v3

    const-string v2, "YI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const/16 v0, 0x66b4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BAO"

    aput-object v2, v1, v3

    const-string v2, "PU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const/16 v0, 0x4fbf

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "BIAN"

    aput-object v2, v1, v3

    const-string v2, "PIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const v0, 0x85cf

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CANG"

    aput-object v2, v1, v3

    const-string v2, "ZANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const v0, 0x81e7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CANG"

    aput-object v2, v1, v3

    const-string v2, "ZANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const/16 v0, 0x66fe

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CENG"

    aput-object v2, v1, v3

    const-string v2, "ZENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const/16 v0, 0x671d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHAO"

    aput-object v2, v1, v3

    const-string v2, "ZHAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const v0, 0x8f66

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHE"

    aput-object v2, v1, v3

    const-string v2, "JU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const/16 v0, 0x76db

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHENG"

    aput-object v2, v1, v3

    const-string v2, "SHENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const/16 v0, 0x4ec7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHOU"

    aput-object v2, v1, v3

    const-string v2, "QIU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const/16 v0, 0x4f20

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHUAN"

    aput-object v2, v1, v3

    const-string v2, "ZHUAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const/16 v0, 0x63d0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DI"

    aput-object v2, v1, v3

    const-string v2, "TI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const/16 v0, 0x4e01

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "DING"

    aput-object v2, v1, v3

    const-string v2, "ZHENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const v0, 0x800f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ER"

    aput-object v2, v1, v3

    const-string v2, "NAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const/16 v0, 0x7e41

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FAN"

    aput-object v2, v1, v3

    const-string v2, "PO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const v0, 0x9022

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FENG"

    aput-object v2, v1, v3

    const-string v2, "PANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const/16 v0, 0x51af

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "FENG"

    aput-object v2, v1, v3

    const-string v2, "PING"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const/16 v0, 0x5408

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GE"

    aput-object v2, v1, v3

    const-string v2, "HE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const/16 v0, 0x5e7f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GUANG"

    aput-object v2, v1, v3

    const-string v2, "AN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const/16 v0, 0x7085

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "GUI"

    aput-object v2, v1, v3

    const-string v2, "JIONG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const/16 v0, 0x4f1a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "HUI"

    aput-object v2, v1, v3

    const-string v2, "KUAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const/16 v0, 0x5947

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JI"

    aput-object v2, v1, v3

    const-string v2, "QI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const v0, 0x8d3e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIA"

    aput-object v2, v1, v3

    const-string v2, "GU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const v0, 0x89c1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIAN"

    aput-object v2, v1, v3

    const-string v2, "XIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const/16 v0, 0x5c06

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIANG"

    aput-object v2, v1, v3

    const-string v2, "QIANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const v0, 0x964d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIANG"

    aput-object v2, v1, v3

    const-string v2, "XIANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const/16 v0, 0x7f34

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIAO"

    aput-object v2, v1, v3

    const-string v2, "ZHUO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const/16 v0, 0x6821

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JIAO"

    aput-object v2, v1, v3

    const-string v2, "XIAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const/16 v0, 0x53e5

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "JU"

    aput-object v2, v1, v3

    const-string v2, "GOU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const/16 v0, 0x5361

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "KA"

    aput-object v2, v1, v3

    const-string v2, "QIA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const v0, 0x961a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "KAN"

    aput-object v2, v1, v3

    const-string v2, "HAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const/16 v0, 0x7387

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LV"

    aput-object v2, v1, v3

    const-string v2, "SHUAI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const/16 v0, 0x79d8

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "MI"

    aput-object v2, v1, v3

    const-string v2, "BI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const v0, 0x9e1f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NIAO"

    aput-object v2, v1, v3

    const-string v2, "DIAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const/16 v0, 0x4e5c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NIE"

    aput-object v2, v1, v3

    const-string v2, "MIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const v0, 0x9f50

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QI"

    aput-object v2, v1, v3

    const-string v2, "JI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const/16 v0, 0x7a3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QI"

    aput-object v2, v1, v3

    const-string v2, "JI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const/16 v0, 0x4e7e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIAN"

    aput-object v2, v1, v3

    const-string v2, "GAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const/16 v0, 0x5f3a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIANG"

    aput-object v2, v1, v3

    const-string v2, "JIANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const v0, 0x90c4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QIE"

    aput-object v2, v1, v3

    const-string v2, "XI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const/16 v0, 0x533a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QU"

    aput-object v2, v1, v3

    const-string v2, "OU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const/16 v0, 0x5708

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "QUAN"

    aput-object v2, v1, v3

    const-string v2, "JUAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const/16 v0, 0x772d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SUI"

    aput-object v2, v1, v3

    const-string v2, "HUI"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const/16 v0, 0x5239

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHA"

    aput-object v2, v1, v3

    const-string v2, "CHA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const/16 v0, 0x6298

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHE"

    aput-object v2, v1, v3

    const-string v2, "ZHE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const v0, 0x8398

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHEN"

    aput-object v2, v1, v3

    const-string v2, "XIN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const/16 v0, 0x6c88

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHEN"

    aput-object v2, v1, v3

    const-string v2, "CHEN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const/16 v0, 0x77f3

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SHI"

    aput-object v2, v1, v3

    const-string v2, "DAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const v0, 0x9561

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TAN"

    aput-object v2, v1, v3

    const-string v2, "XIN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const v0, 0x9676

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TAO"

    aput-object v2, v1, v3

    const-string v2, "YAO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const/16 v0, 0x6c64

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TANG"

    aput-object v2, v1, v3

    const-string v2, "SHANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const/16 v0, 0x4e07

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WAN"

    aput-object v2, v1, v3

    const-string v2, "MO"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const/16 v0, 0x5c09

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WEI"

    aput-object v2, v1, v3

    const-string v2, "YU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const/16 v0, 0x6c76

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WEN"

    aput-object v2, v1, v3

    const-string v2, "MEN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const v0, 0x9889

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XIE"

    aput-object v2, v1, v3

    const-string v2, "JIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const v0, 0x884c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XING"

    aput-object v2, v1, v3

    const-string v2, "HANG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const/16 v0, 0x7701

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XING"

    aput-object v2, v1, v3

    const-string v2, "SHENG"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const/16 v0, 0x5bbf

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "XIU"

    aput-object v2, v1, v3

    const-string v2, "SU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const/16 v0, 0x53f6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YE"

    aput-object v2, v1, v3

    const-string v2, "XIE"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const/16 v0, 0x65bc

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YU"

    aput-object v2, v1, v3

    const-string v2, "WU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const/16 v0, 0x5401

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "YU"

    aput-object v2, v1, v3

    const-string v2, "XU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const v0, 0x8f67

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHA"

    aput-object v2, v1, v3

    const-string v2, "YA"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const/16 v0, 0x7c98

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHAN"

    aput-object v2, v1, v3

    const-string v2, "NIAN"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const v0, 0x891a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZHU"

    aput-object v2, v1, v3

    const-string v2, "CHU"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lsmartisanos/util/PinyinHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    return-void
.end method
