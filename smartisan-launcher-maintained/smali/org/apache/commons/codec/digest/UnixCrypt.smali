.class public Lorg/apache/commons/codec/digest/UnixCrypt;
.super Ljava/lang/Object;
.source "UnixCrypt.java"


.field private static final CON_SALT:[I

.field private static final COV2CHAR:[I

.field private static final SALT_CHARS:[C

.field private static final SHIFT2:[Z

.field private static final SKB:[[I

.field private static final SPTRANS:[[I


.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x40

    .line 42
    const/16 v0, 0x80

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/digest/UnixCrypt;->CON_SALT:[I

    .line 48
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/codec/digest/UnixCrypt;->COV2CHAR:[I

    .line 52
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789./"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/digest/UnixCrypt;->SALT_CHARS:[C

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/codec/digest/UnixCrypt;->SHIFT2:[Z

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/codec/digest/UnixCrypt;->SKB:[[I

    .line 117
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/codec/digest/UnixCrypt;->SPTRANS:[[I

    return-void

    .line 42
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 48
    :array_1
    .array-data 4
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
    .end array-data

    .line 55
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 58
    :array_3
    .array-data 4
        0x0
        0x10
        0x20000000
        0x20000010
        0x10000
        0x10010
        0x20010000
        0x20010010
        0x800
        0x810
        0x20000800
        0x20000810
        0x10800
        0x10810
        0x20010800
        0x20010810
        0x20
        0x30
        0x20000020
        0x20000030
        0x10020
        0x10030
        0x20010020
        0x20010030
        0x820
        0x830
        0x20000820
        0x20000830
        0x10820
        0x10830
        0x20010820
        0x20010830
        0x80000
        0x80010
        0x20080000
        0x20080010
        0x90000
        0x90010
        0x20090000
        0x20090010
        0x80800
        0x80810
        0x20080800
        0x20080810
        0x90800
        0x90810
        0x20090800
        0x20090810
        0x80020
        0x80030
        0x20080020
        0x20080030
        0x90020
        0x90030
        0x20090020
        0x20090030
        0x80820
        0x80830
        0x20080820
        0x20080830
        0x90820
        0x90830
        0x20090820
        0x20090830
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x2000000
        0x2000
        0x2002000
        0x200000
        0x2200000
        0x202000
        0x2202000
        0x4
        0x2000004
        0x2004
        0x2002004
        0x200004
        0x2200004
        0x202004
        0x2202004
        0x400
        0x2000400
        0x2400
        0x2002400
        0x200400
        0x2200400
        0x202400
        0x2202400
        0x404
        0x2000404
        0x2404
        0x2002404
        0x200404
        0x2200404
        0x202404
        0x2202404
        0x10000000
        0x12000000
        0x10002000
        0x12002000
        0x10200000
        0x12200000
        0x10202000
        0x12202000
        0x10000004
        0x12000004
        0x10002004
        0x12002004
        0x10200004
        0x12200004
        0x10202004
        0x12202004
        0x10000400
        0x12000400
        0x10002400
        0x12002400
        0x10200400
        0x12200400
        0x10202400
        0x12202400
        0x10000404
        0x12000404
        0x10002404
        0x12002404
        0x10200404
        0x12200404
        0x10202404
        0x12202404
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
        0x40000
        0x40001
        0x1000000
        0x1000001
        0x1040000
        0x1040001
        0x2
        0x3
        0x40002
        0x40003
        0x1000002
        0x1000003
        0x1040002
        0x1040003
        0x200
        0x201
        0x40200
        0x40201
        0x1000200
        0x1000201
        0x1040200
        0x1040201
        0x202
        0x203
        0x40202
        0x40203
        0x1000202
        0x1000203
        0x1040202
        0x1040203
        0x8000000
        0x8000001
        0x8040000
        0x8040001
        0x9000000
        0x9000001
        0x9040000
        0x9040001
        0x8000002
        0x8000003
        0x8040002
        0x8040003
        0x9000002
        0x9000003
        0x9040002
        0x9040003
        0x8000200
        0x8000201
        0x8040200
        0x8040201
        0x9000200
        0x9000201
        0x9040200
        0x9040201
        0x8000202
        0x8000203
        0x8040202
        0x8040203
        0x9000202
        0x9000203
        0x9040202
        0x9040203
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x100000
        0x100
        0x100100
        0x8
        0x100008
        0x108
        0x100108
        0x1000
        0x101000
        0x1100
        0x101100
        0x1008
        0x101008
        0x1108
        0x101108
        0x4000000
        0x4100000
        0x4000100
        0x4100100
        0x4000008
        0x4100008
        0x4000108
        0x4100108
        0x4001000
        0x4101000
        0x4001100
        0x4101100
        0x4001008
        0x4101008
        0x4001108
        0x4101108
        0x20000
        0x120000
        0x20100
        0x120100
        0x20008
        0x120008
        0x20108
        0x120108
        0x21000
        0x121000
        0x21100
        0x121100
        0x21008
        0x121008
        0x21108
        0x121108
        0x4020000
        0x4120000
        0x4020100
        0x4120100
        0x4020008
        0x4120008
        0x4020108
        0x4120108
        0x4021000
        0x4121000
        0x4021100
        0x4121100
        0x4021008
        0x4121008
        0x4021108
        0x4121108
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x10000000
        0x10000
        0x10010000
        0x4
        0x10000004
        0x10004
        0x10010004
        0x20000000
        0x30000000
        0x20010000
        0x30010000
        0x20000004
        0x30000004
        0x20010004
        0x30010004
        0x100000
        0x10100000
        0x110000
        0x10110000
        0x100004
        0x10100004
        0x110004
        0x10110004
        0x20100000
        0x30100000
        0x20110000
        0x30110000
        0x20100004
        0x30100004
        0x20110004
        0x30110004
        0x1000
        0x10001000
        0x11000
        0x10011000
        0x1004
        0x10001004
        0x11004
        0x10011004
        0x20001000
        0x30001000
        0x20011000
        0x30011000
        0x20001004
        0x30001004
        0x20011004
        0x30011004
        0x101000
        0x10101000
        0x111000
        0x10111000
        0x101004
        0x10101004
        0x111004
        0x10111004
        0x20101000
        0x30101000
        0x20111000
        0x30111000
        0x20101004
        0x30101004
        0x20111004
        0x30111004
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x8000000
        0x8
        0x8000008
        0x400
        0x8000400
        0x408
        0x8000408
        0x20000
        0x8020000
        0x20008
        0x8020008
        0x20400
        0x8020400
        0x20408
        0x8020408
        0x1
        0x8000001
        0x9
        0x8000009
        0x401
        0x8000401
        0x409
        0x8000409
        0x20001
        0x8020001
        0x20009
        0x8020009
        0x20401
        0x8020401
        0x20409
        0x8020409
        0x2000000
        0xa000000
        0x2000008
        0xa000008
        0x2000400
        0xa000400
        0x2000408
        0xa000408
        0x2020000
        0xa020000
        0x2020008
        0xa020008
        0x2020400
        0xa020400
        0x2020408
        0xa020408
        0x2000001
        0xa000001
        0x2000009
        0xa000009
        0x2000401
        0xa000401
        0x2000409
        0xa000409
        0x2020001
        0xa020001
        0x2020009
        0xa020009
        0x2020401
        0xa020401
        0x2020409
        0xa020409
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x100
        0x80000
        0x80100
        0x1000000
        0x1000100
        0x1080000
        0x1080100
        0x10
        0x110
        0x80010
        0x80110
        0x1000010
        0x1000110
        0x1080010
        0x1080110
        0x200000
        0x200100
        0x280000
        0x280100
        0x1200000
        0x1200100
        0x1280000
        0x1280100
        0x200010
        0x200110
        0x280010
        0x280110
        0x1200010
        0x1200110
        0x1280010
        0x1280110
        0x200
        0x300
        0x80200
        0x80300
        0x1000200
        0x1000300
        0x1080200
        0x1080300
        0x210
        0x310
        0x80210
        0x80310
        0x1000210
        0x1000310
        0x1080210
        0x1080310
        0x200200
        0x200300
        0x280200
        0x280300
        0x1200200
        0x1200300
        0x1280200
        0x1280300
        0x200210
        0x200310
        0x280210
        0x280310
        0x1200210
        0x1200310
        0x1280210
        0x1280310
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x4000000
        0x40000
        0x4040000
        0x2
        0x4000002
        0x40002
        0x4040002
        0x2000
        0x4002000
        0x42000
        0x4042000
        0x2002
        0x4002002
        0x42002
        0x4042002
        0x20
        0x4000020
        0x40020
        0x4040020
        0x22
        0x4000022
        0x40022
        0x4040022
        0x2020
        0x4002020
        0x42020
        0x4042020
        0x2022
        0x4002022
        0x42022
        0x4042022
        0x800
        0x4000800    # 1.5050001E-36f
        0x40800
        0x4040800
        0x802
        0x4000802    # 1.5050005E-36f
        0x40802
        0x4040802
        0x2800
        0x4002800
        0x42800
        0x4042800
        0x2802
        0x4002802
        0x42802
        0x4042802
        0x820
        0x4000820
        0x40820
        0x4040820
        0x822
        0x4000822
        0x40822
        0x4040822
        0x2820
        0x4002820
        0x42820
        0x4042820
        0x2822
        0x4002822
        0x42822
        0x4042822
    .end array-data

    .line 117
    :array_b
    .array-data 4
        0x820200
        0x20000
        -0x7f800000
        -0x7f7dfe00
        0x800000
        -0x7ffdfe00
        -0x7ffe0000
        -0x7f800000
        -0x7ffdfe00
        0x820200
        0x820000
        -0x7ffffe00
        -0x7f7ffe00
        0x800000
        0x0
        -0x7ffe0000
        0x20000
        -0x80000000
        0x800200
        0x20200
        -0x7f7dfe00
        0x820000
        -0x7ffffe00
        0x800200
        -0x80000000
        0x200
        0x20200
        -0x7f7e0000
        0x200
        -0x7f7ffe00
        -0x7f7e0000
        0x0
        0x0
        -0x7f7dfe00
        0x800200
        -0x7ffe0000
        0x820200
        0x20000
        -0x7ffffe00
        0x800200
        -0x7f7e0000
        0x200
        0x20200
        -0x7f800000
        -0x7ffdfe00
        -0x80000000
        -0x7f800000
        0x820000
        -0x7f7dfe00
        0x20200
        0x820000
        -0x7f7ffe00
        0x800000
        -0x7ffffe00
        -0x7ffe0000
        0x0
        0x20000
        0x800000
        -0x7f7ffe00
        0x820200
        -0x80000000
        -0x7f7e0000
        0x200
        -0x7ffdfe00
    .end array-data

    :array_c
    .array-data 4
        0x10042004
        0x0
        0x42000
        0x10040000
        0x10000004
        0x2004
        0x10002000
        0x42000
        0x2000
        0x10040004
        0x4
        0x10002000
        0x40004
        0x10042000
        0x10040000
        0x4
        0x40000
        0x10002004
        0x10040004
        0x2000
        0x42004
        0x10000000
        0x0
        0x40004
        0x10002004
        0x42004
        0x10042000
        0x10000004
        0x10000000
        0x40000
        0x2004
        0x10042004
        0x40004
        0x10042000
        0x10002000
        0x42004
        0x10042004
        0x40004
        0x10000004
        0x0
        0x10000000
        0x2004
        0x40000
        0x10040004
        0x2000
        0x10000000
        0x42004
        0x10002004
        0x10042000
        0x2000
        0x0
        0x10000004
        0x4
        0x10042004
        0x42000
        0x10040000
        0x10040004
        0x40000
        0x2004
        0x10002000
        0x10002004
        0x4
        0x10040000
        0x42000
    .end array-data

    :array_d
    .array-data 4
        0x41000000    # 8.0f
        0x1010040
        0x40
        0x41000040    # 8.000061f
        0x40010000    # 2.015625f
        0x1000000
        0x41000040    # 8.000061f
        0x10040
        0x1000040
        0x10000
        0x1010000
        0x40000000    # 2.0f
        0x41010040
        0x40000040    # 2.0000153f
        0x40000000    # 2.0f
        0x41010000    # 8.0625f
        0x0
        0x40010000    # 2.015625f
        0x1010040
        0x40
        0x40000040    # 2.0000153f
        0x41010040
        0x10000
        0x41000000    # 8.0f
        0x41010000    # 8.0625f
        0x1000040
        0x40010040
        0x1010000
        0x10040
        0x0
        0x1000000
        0x40010040
        0x1010040
        0x40
        0x40000000    # 2.0f
        0x10000
        0x40000040    # 2.0000153f
        0x40010000    # 2.015625f
        0x1010000
        0x41000040    # 8.000061f
        0x0
        0x1010040
        0x10040
        0x41010000    # 8.0625f
        0x40010000    # 2.015625f
        0x1000000
        0x41010040
        0x40000000    # 2.0f
        0x40010040
        0x41000000    # 8.0f
        0x1000000
        0x41010040
        0x10000
        0x1000040
        0x41000040    # 8.000061f
        0x10040
        0x1000040
        0x0
        0x41010000    # 8.0625f
        0x40000040    # 2.0000153f
        0x41000000    # 8.0f
        0x40010040
        0x40
        0x1010000
    .end array-data

    :array_e
    .array-data 4
        0x100402
        0x4000400
        0x2
        0x4100402
        0x0
        0x4100000
        0x4000402
        0x100002
        0x4100400
        0x4000002
        0x4000000
        0x402
        0x4000002
        0x100402
        0x100000
        0x4000000
        0x4100002
        0x100400
        0x400
        0x2
        0x100400
        0x4000402
        0x4100000
        0x400
        0x402
        0x0
        0x100002
        0x4100400
        0x4000400
        0x4100002
        0x4100402
        0x100000
        0x4100002
        0x402
        0x100000
        0x4000002
        0x100400
        0x4000400
        0x2
        0x4100000
        0x4000402
        0x0
        0x400
        0x100002
        0x0
        0x4100002
        0x4100400
        0x400
        0x4000000
        0x4100402
        0x100402
        0x100000
        0x4100402
        0x2
        0x4000400
        0x100402
        0x100002
        0x100400
        0x4100000
        0x4000402
        0x402
        0x4000000
        0x4000002
        0x4100400
    .end array-data

    :array_f
    .array-data 4
        0x2000000
        0x4000
        0x100
        0x2004108
        0x2004008
        0x2000100
        0x4108
        0x2004000
        0x4000
        0x8
        0x2000008
        0x4100
        0x2000108
        0x2004008
        0x2004100
        0x0
        0x4100
        0x2000000
        0x4008
        0x108
        0x2000100
        0x4108
        0x0
        0x2000008
        0x8
        0x2000108
        0x2004108
        0x4008
        0x2004000
        0x100
        0x108
        0x2004100
        0x2004100
        0x2000108
        0x4008
        0x2004000
        0x4000
        0x8
        0x2000008
        0x2000100
        0x2000000
        0x4100
        0x2004108
        0x0
        0x4108
        0x2000000
        0x100
        0x4008
        0x2000108
        0x100
        0x0
        0x2004108
        0x2004008
        0x2004100
        0x108
        0x4000
        0x4100
        0x2004008
        0x2000100
        0x108
        0x8
        0x4108
        0x2004000
        0x2000008
    .end array-data

    :array_10
    .array-data 4
        0x20000010
        0x80010
        0x0
        0x20080800
        0x80010
        0x800
        0x20000810
        0x80000
        0x810
        0x20080810
        0x80800
        0x20000000
        0x20000800
        0x20000010
        0x20080000
        0x80810
        0x80000
        0x20000810
        0x20080010
        0x0
        0x800
        0x10
        0x20080800
        0x20080010
        0x20080810
        0x20080000
        0x20000000
        0x810
        0x10
        0x80800
        0x80810
        0x20000800
        0x810
        0x20000000
        0x20000800
        0x80810
        0x20080800
        0x80010
        0x0
        0x20000800
        0x20000000
        0x800
        0x20080010
        0x80000
        0x80010
        0x20080810
        0x80800
        0x10
        0x20080810
        0x80800
        0x80000
        0x20000810
        0x20000010
        0x20080000
        0x80810
        0x0
        0x800
        0x20000010
        0x20000810
        0x20080800
        0x20080000
        0x810
        0x10
        0x20080010
    .end array-data

    :array_11
    .array-data 4
        0x1000
        0x80
        0x400080
        0x400001
        0x401081
        0x1001
        0x1080
        0x0
        0x400000
        0x400081
        0x81
        0x401000
        0x1
        0x401080
        0x401000
        0x81
        0x400081
        0x1000
        0x1001
        0x401081
        0x0
        0x400080
        0x400001
        0x1080
        0x401001
        0x1081
        0x401080
        0x1
        0x1081
        0x401001
        0x80
        0x400000
        0x1081
        0x401000
        0x401001
        0x81
        0x1000
        0x80
        0x400000
        0x401001
        0x400081
        0x1081
        0x1080
        0x0
        0x80
        0x400001
        0x1
        0x400080
        0x0
        0x400081
        0x400080
        0x1080
        0x81
        0x1000
        0x401081
        0x400000
        0x401080
        0x1
        0x1001
        0x401081
        0x400001
        0x401080
        0x401000
        0x1001
    .end array-data

    :array_12
    .array-data 4
        0x8200020
        0x8208000
        0x8020
        0x0
        0x8008000
        0x200020
        0x8200000
        0x8208020
        0x20
        0x8000000
        0x208000
        0x8020
        0x208020
        0x8008020
        0x8000020
        0x8200000
        0x8000
        0x208020
        0x200020
        0x8008000
        0x8208020
        0x8000020
        0x0
        0x208000
        0x8000000
        0x200000
        0x8008020
        0x8200020
        0x200000
        0x8000
        0x8208000
        0x20
        0x200000
        0x8000
        0x8000020
        0x8208020
        0x8020
        0x8000000
        0x0
        0x208000
        0x8200020
        0x8008020
        0x8008000
        0x200020
        0x8208000
        0x20
        0x200020
        0x8008000
        0x8208020
        0x200000
        0x8200000
        0x8000020
        0x208000
        0x8020
        0x8008020
        0x8200000
        0x20
        0x8208000
        0x208020
        0x0
        0x8000000
        0x8200020
        0x8000
        0x208020
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static body([III)[I
    .locals 13
    .param p0, "schedule"    # [I
    .param p1, "eSwap0"    # I
    .param p2, "eSwap1"    # I

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "left":I
    const/4 v1, 0x0

    .line 284
    .local v1, "right":I
    const/4 v12, 0x0

    .line 285
    .local v12, "t":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    const/16 v3, 0x19

    if-ge v9, v3, :cond_1

    .line 286
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    move v3, p1

    move v4, p2

    move-object v5, p0

    .line 287
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/digest/UnixCrypt;->dEncrypt(IIIII[I)I

    move-result v0

    .line 288
    add-int/lit8 v5, v2, 0x2

    move v3, v1

    move v4, v0

    move v6, p1

    move v7, p2

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/codec/digest/UnixCrypt;->dEncrypt(IIIII[I)I

    move-result v1

    .line 286
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 290
    :cond_0
    move v12, v0

    .line 291
    move v0, v1

    .line 292
    move v1, v12

    .line 285
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 295
    .end local v2    # "i":I
    :cond_1
    move v12, v1

    .line 296
    ushr-int/lit8 v3, v0, 0x1

    shl-int/lit8 v4, v0, 0x1f

    or-int v1, v3, v4

    .line 297
    ushr-int/lit8 v3, v12, 0x1

    shl-int/lit8 v4, v12, 0x1f

    or-int v0, v3, v4

    .line 298
    const/4 v3, 0x2

    new-array v11, v3, [I

    .line 299
    .local v11, "results":[I
    const/4 v3, 0x1

    const v4, 0x55555555

    invoke-static {v1, v0, v3, v4, v11}, Lorg/apache/commons/codec/digest/UnixCrypt;->permOp(IIII[I)V

    .line 300
    const/4 v3, 0x0

    aget v1, v11, v3

    .line 301
    const/4 v3, 0x1

    aget v0, v11, v3

    .line 302
    const/16 v3, 0x8

    const v4, 0xff00ff

    invoke-static {v0, v1, v3, v4, v11}, Lorg/apache/commons/codec/digest/UnixCrypt;->permOp(IIII[I)V

    .line 303
    const/4 v3, 0x0

    aget v0, v11, v3

    .line 304
    const/4 v3, 0x1

    aget v1, v11, v3

    .line 305
    const/4 v3, 0x2

    const v4, 0x33333333

    invoke-static {v1, v0, v3, v4, v11}, Lorg/apache/commons/codec/digest/UnixCrypt;->permOp(IIII[I)V

    .line 306
    const/4 v3, 0x0

    aget v1, v11, v3

    .line 307
    const/4 v3, 0x1

    aget v0, v11, v3

    .line 308
    const/16 v3, 0x10

    const v4, 0xffff

    invoke-static {v0, v1, v3, v4, v11}, Lorg/apache/commons/codec/digest/UnixCrypt;->permOp(IIII[I)V

    .line 309
    const/4 v3, 0x0

    aget v0, v11, v3

    .line 310
    const/4 v3, 0x1

    aget v1, v11, v3

    .line 311
    const/4 v3, 0x4

    const v4, 0xf0f0f0f

    invoke-static {v1, v0, v3, v4, v11}, Lorg/apache/commons/codec/digest/UnixCrypt;->permOp(IIII[I)V

    .line 312
    const/4 v3, 0x0

    aget v1, v11, v3

    .line 313
    const/4 v3, 0x1

    aget v0, v11, v3

    .line 314
    const/4 v3, 0x2

    new-array v10, v3, [I

    .line 315
    .local v10, "out":[I
    const/4 v3, 0x0

    aput v0, v10, v3

    .line 316
    const/4 v3, 0x1

    aput v1, v10, v3

    .line 317
    return-object v10
.end method

.method private static byteToUnsigned(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 321
    move v0, p0

    .line 322
    .local v0, "value":I
    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x100

    .end local v0    # "value":I
    :cond_0
    return v0
.end method

.method public static crypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "original"    # Ljava/lang/String;

    .prologue
    .line 263
    sget-object v0, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/digest/UnixCrypt;->crypt([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "salt"    # Ljava/lang/String;

    .prologue
    .line 278
    sget-object v0, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/digest/UnixCrypt;->crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static crypt([B)Ljava/lang/String;
    .locals 1
    .param p0, "original"    # [B

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/UnixCrypt;->crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p0, "original"    # [B
    .param p1, "salt"    # Ljava/lang/String;

    .prologue
    .line 199
    if-nez p1, :cond_1

    .line 200
    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    .line 201
    .local v15, "randomGenerator":Ljava/util/Random;
    sget-object v19, Lorg/apache/commons/codec/digest/UnixCrypt;->SALT_CHARS:[C

    move-object/from16 v0, v19

    array-length v13, v0

    .line 202
    .local v13, "numSaltChars":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lorg/apache/commons/codec/digest/UnixCrypt;->SALT_CHARS:[C

    invoke-virtual {v15, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    aget-char v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lorg/apache/commons/codec/digest/UnixCrypt;->SALT_CHARS:[C

    invoke-virtual {v15, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    aget-char v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    .end local v13    # "numSaltChars":I
    .end local v15    # "randomGenerator":Ljava/util/Random;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v19, "             "

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .local v3, "buffer":Ljava/lang/StringBuilder;
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 210
    .local v6, "charZero":C
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 211
    .local v5, "charOne":C
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 212
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 213
    sget-object v19, Lorg/apache/commons/codec/digest/UnixCrypt;->CON_SALT:[I

    aget v7, v19, v6

    .line 214
    .local v7, "eSwap0":I
    sget-object v19, Lorg/apache/commons/codec/digest/UnixCrypt;->CON_SALT:[I

    aget v19, v19, v5

    shl-int/lit8 v8, v19, 0x4

    .line 215
    .local v8, "eSwap1":I
    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v12, v0, [B

    .line 216
    .local v12, "key":[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_2

    .line 217
    const/16 v19, 0x0

    aput-byte v19, v12, v9

    .line 216
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 204
    .end local v3    # "buffer":Ljava/lang/StringBuilder;
    .end local v5    # "charOne":C
    .end local v6    # "charZero":C
    .end local v7    # "eSwap0":I
    .end local v8    # "eSwap1":I
    .end local v9    # "i":I
    .end local v12    # "key":[B
    :cond_1
    const-string v19, "^[./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz]{2,}$"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 205
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid salt value: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 220
    .restart local v3    # "buffer":Ljava/lang/StringBuilder;
    .restart local v5    # "charOne":C
    .restart local v6    # "charZero":C
    .restart local v7    # "eSwap0":I
    .restart local v8    # "eSwap1":I
    .restart local v9    # "i":I
    .restart local v12    # "key":[B
    :cond_2
    const/4 v9, 0x0

    :goto_1
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 221
    aget-byte v10, p0, v9

    .line 222
    .local v10, "iChar":I
    shl-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v12, v9

    .line 220
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 225
    .end local v10    # "iChar":I
    :cond_3
    invoke-static {v12}, Lorg/apache/commons/codec/digest/UnixCrypt;->desSetKey([B)[I

    move-result-object v16

    .line 226
    .local v16, "schedule":[I
    move-object/from16 v0, v16

    invoke-static {v0, v7, v8}, Lorg/apache/commons/codec/digest/UnixCrypt;->body([III)[I

    move-result-object v14

    .line 227
    .local v14, "out":[I
    const/16 v19, 0x9

    move/from16 v0, v19

    new-array v2, v0, [B

    .line 228
    .local v2, "b":[B
    const/16 v19, 0x0

    aget v19, v14, v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v2, v1}, Lorg/apache/commons/codec/digest/UnixCrypt;->intToFourBytes(I[BI)V

    .line 229
    const/16 v19, 0x1

    aget v19, v14, v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v2, v1}, Lorg/apache/commons/codec/digest/UnixCrypt;->intToFourBytes(I[BI)V

    .line 230
    const/16 v19, 0x8

    const/16 v20, 0x0

    aput-byte v20, v2, v19

    .line 231
    const/4 v9, 0x2

    .line 232
    const/16 v18, 0x0

    .line 233
    .local v18, "y":I
    const/16 v17, 0x80

    .line 234
    .local v17, "u":I
    :goto_2
    const/16 v19, 0xd

    move/from16 v0, v19

    if-ge v9, v0, :cond_7

    .line 235
    const/4 v11, 0x0

    .line 236
    .local v11, "j":I
    const/4 v4, 0x0

    .line 237
    .local v4, "c":I
    :goto_3
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v11, v0, :cond_6

    .line 238
    shl-int/lit8 v4, v4, 0x1

    .line 239
    aget-byte v19, v2, v18

    and-int v19, v19, v17

    if-eqz v19, :cond_4

    .line 240
    or-int/lit8 v4, v4, 0x1

    .line 242
    :cond_4
    ushr-int/lit8 v17, v17, 0x1

    .line 243
    if-nez v17, :cond_5

    .line 244
    add-int/lit8 v18, v18, 0x1

    .line 245
    const/16 v17, 0x80

    .line 247
    :cond_5
    sget-object v19, Lorg/apache/commons/codec/digest/UnixCrypt;->COV2CHAR:[I

    aget v19, v19, v4

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v9, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 237
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 234
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 250
    .end local v4    # "c":I
    .end local v11    # "j":I
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19
.end method

.method private static dEncrypt(IIIII[I)I
    .locals 6
    .param p0, "el"    # I
    .param p1, "r"    # I
    .param p2, "s"    # I
    .param p3, "e0"    # I
    .param p4, "e1"    # I
    .param p5, "sArr"    # [I

    .prologue
    .line 326
    ushr-int/lit8 v3, p1, 0x10

    xor-int v2, p1, v3

    .line 327
    .local v2, "v":I
    and-int v1, v2, p3

    .line 328
    .local v1, "u":I
    and-int/2addr v2, p4

    .line 329
    shl-int/lit8 v3, v1, 0x10

    xor-int/2addr v3, v1

    xor-int/2addr v3, p1

    aget v4, p5, p2

    xor-int v1, v3, v4

    .line 330
    shl-int/lit8 v3, v2, 0x10

    xor-int/2addr v3, v2

    xor-int/2addr v3, p1

    add-int/lit8 v4, p2, 0x1

    aget v4, p5, v4

    xor-int v0, v3, v4

    .line 331
    .local v0, "t":I
    ushr-int/lit8 v3, v0, 0x4

    shl-int/lit8 v4, v0, 0x1c

    or-int v0, v3, v4

    .line 332
    sget-object v3, Lorg/apache/commons/codec/digest/UnixCrypt;->SPTRANS:[[I

    const/4 v4, 0x1

    aget-object v3, v3, v4

    and-int/lit8 v4, v0, 0x3f

    aget v3, v3, v4

    sget-object v4, Lorg/apache/commons/codec/digest/UnixCrypt;->SPTRANS:[[I

    const/4 v5, 0x3

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v0, 0x8

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lorg/apache/commons/codec/digest/UnixCrypt;->SPTRANS:[[I

    const/4 v5, 0x5

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v0, 0x10

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lorg/apache/commons/codec/digest/UnixCrypt;->SPTRANS:[[I

    const/4 v5, 0x7

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v0, 0x18

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lorg/apache/commons/codec/digest/UnixCrypt;->SPTRANS:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    and-int/lit8 v5, v1, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lorg/apache/commons/codec/digest/UnixCrypt;->SPTRANS:[[I

    const/4 v5, 0x2

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v1, 0x8

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lorg/apache/commons/codec/digest/UnixCrypt;->SPTRANS:[[I

    const/4 v5, 0x4

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v1, 0x10

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    sget-object v4, Lorg/apache/commons/codec/digest/UnixCrypt;->SPTRANS:[[I

    const/4 v5, 0x6

    aget-object v4, v4, v5

    ushr-int/lit8 v5, v1, 0x18

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    or-int/2addr v3, v4

    xor-int/2addr p0, v3

    .line 335
    return p0
.end method

.method private static desSetKey([B)[I
    .locals 13
    .param p0, "key"    # [B

    .prologue
    .line 339
    const/16 v9, 0x20

    new-array v7, v9, [I

    .line 340
    .local v7, "schedule":[I
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lorg/apache/commons/codec/digest/UnixCrypt;->fourBytesToInt([BI)I

    move-result v0

    .line 341
    .local v0, "c":I
    const/4 v9, 0x4

    invoke-static {p0, v9}, Lorg/apache/commons/codec/digest/UnixCrypt;->fourBytesToInt([BI)I

    move-result v1

    .line 342
    .local v1, "d":I
    const/4 v9, 0x2

    new-array v5, v9, [I

    .line 343
    .local v5, "results":[I
    const/4 v9, 0x4

    const v10, 0xf0f0f0f

    invoke-static {v1, v0, v9, v10, v5}, Lorg/apache/commons/codec/digest/UnixCrypt;->permOp(IIII[I)V

    .line 344
    const/4 v9, 0x0

    aget v1, v5, v9

    .line 345
    const/4 v9, 0x1

    aget v0, v5, v9

    .line 346
    const/4 v9, -0x2

    const/high16 v10, -0x33340000

    invoke-static {v0, v9, v10}, Lorg/apache/commons/codec/digest/UnixCrypt;->hPermOp(III)I

    move-result v0

    .line 347
    const/4 v9, -0x2

    const/high16 v10, -0x33340000

    invoke-static {v1, v9, v10}, Lorg/apache/commons/codec/digest/UnixCrypt;->hPermOp(III)I

    move-result v1

    .line 348
    const/4 v9, 0x1

    const v10, 0x55555555

    invoke-static {v1, v0, v9, v10, v5}, Lorg/apache/commons/codec/digest/UnixCrypt;->permOp(IIII[I)V

    .line 349
    const/4 v9, 0x0

    aget v1, v5, v9

    .line 350
    const/4 v9, 0x1

    aget v0, v5, v9

    .line 351
    const/16 v9, 0x8

    const v10, 0xff00ff

    invoke-static {v0, v1, v9, v10, v5}, Lorg/apache/commons/codec/digest/UnixCrypt;->permOp(IIII[I)V

    .line 352
    const/4 v9, 0x0

    aget v0, v5, v9

    .line 353
    const/4 v9, 0x1

    aget v1, v5, v9

    .line 354
    const/4 v9, 0x1

    const v10, 0x55555555

    invoke-static {v1, v0, v9, v10, v5}, Lorg/apache/commons/codec/digest/UnixCrypt;->permOp(IIII[I)V

    .line 355
    const/4 v9, 0x0

    aget v1, v5, v9

    .line 356
    const/4 v9, 0x1

    aget v0, v5, v9

    .line 357
    and-int/lit16 v9, v1, 0xff

    shl-int/lit8 v9, v9, 0x10

    const v10, 0xff00

    and-int/2addr v10, v1

    or-int/2addr v9, v10

    const/high16 v10, 0xff0000

    and-int/2addr v10, v1

    ushr-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/high16 v10, -0x10000000

    and-int/2addr v10, v0

    ushr-int/lit8 v10, v10, 0x4

    or-int v1, v9, v10

    .line 358
    const v9, 0xfffffff

    and-int/2addr v0, v9

    .line 359
    const/4 v3, 0x0

    .line 360
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_0
    const/16 v9, 0x10

    if-ge v2, v9, :cond_1

    .line 361
    sget-object v9, Lorg/apache/commons/codec/digest/UnixCrypt;->SHIFT2:[Z

    aget-boolean v9, v9, v2

    if-eqz v9, :cond_0

    .line 362
    ushr-int/lit8 v9, v0, 0x2

    shl-int/lit8 v10, v0, 0x1a

    or-int v0, v9, v10

    .line 363
    ushr-int/lit8 v9, v1, 0x2

    shl-int/lit8 v10, v1, 0x1a

    or-int v1, v9, v10

    .line 368
    :goto_1
    const v9, 0xfffffff

    and-int/2addr v0, v9

    .line 369
    const v9, 0xfffffff

    and-int/2addr v1, v9

    .line 370
    sget-object v9, Lorg/apache/commons/codec/digest/UnixCrypt;->SKB:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    and-int/lit8 v10, v0, 0x3f

    aget v9, v9, v10

    sget-object v10, Lorg/apache/commons/codec/digest/UnixCrypt;->SKB:[[I

    const/4 v11, 0x1

    aget-object v10, v10, v11

    ushr-int/lit8 v11, v0, 0x6

    and-int/lit8 v11, v11, 0x3

    ushr-int/lit8 v12, v0, 0x7

    and-int/lit8 v12, v12, 0x3c

    or-int/2addr v11, v12

    aget v10, v10, v11

    or-int/2addr v9, v10

    sget-object v10, Lorg/apache/commons/codec/digest/UnixCrypt;->SKB:[[I

    const/4 v11, 0x2

    aget-object v10, v10, v11

    ushr-int/lit8 v11, v0, 0xd

    and-int/lit8 v11, v11, 0xf

    ushr-int/lit8 v12, v0, 0xe

    and-int/lit8 v12, v12, 0x30

    or-int/2addr v11, v12

    aget v10, v10, v11

    or-int/2addr v9, v10

    sget-object v10, Lorg/apache/commons/codec/digest/UnixCrypt;->SKB:[[I

    const/4 v11, 0x3

    aget-object v10, v10, v11

    ushr-int/lit8 v11, v0, 0x14

    and-int/lit8 v11, v11, 0x1

    ushr-int/lit8 v12, v0, 0x15

    and-int/lit8 v12, v12, 0x6

    or-int/2addr v11, v12

    ushr-int/lit8 v12, v0, 0x16

    and-int/lit8 v12, v12, 0x38

    or-int/2addr v11, v12

    aget v10, v10, v11

    or-int v6, v9, v10

    .line 373
    .local v6, "s":I
    sget-object v9, Lorg/apache/commons/codec/digest/UnixCrypt;->SKB:[[I

    const/4 v10, 0x4

    aget-object v9, v9, v10

    and-int/lit8 v10, v1, 0x3f

    aget v9, v9, v10

    sget-object v10, Lorg/apache/commons/codec/digest/UnixCrypt;->SKB:[[I

    const/4 v11, 0x5

    aget-object v10, v10, v11

    ushr-int/lit8 v11, v1, 0x7

    and-int/lit8 v11, v11, 0x3

    ushr-int/lit8 v12, v1, 0x8

    and-int/lit8 v12, v12, 0x3c

    or-int/2addr v11, v12

    aget v10, v10, v11

    or-int/2addr v9, v10

    sget-object v10, Lorg/apache/commons/codec/digest/UnixCrypt;->SKB:[[I

    const/4 v11, 0x6

    aget-object v10, v10, v11

    ushr-int/lit8 v11, v1, 0xf

    and-int/lit8 v11, v11, 0x3f

    aget v10, v10, v11

    or-int/2addr v9, v10

    sget-object v10, Lorg/apache/commons/codec/digest/UnixCrypt;->SKB:[[I

    const/4 v11, 0x7

    aget-object v10, v10, v11

    ushr-int/lit8 v11, v1, 0x15

    and-int/lit8 v11, v11, 0xf

    ushr-int/lit8 v12, v1, 0x16

    and-int/lit8 v12, v12, 0x30

    or-int/2addr v11, v12

    aget v10, v10, v11

    or-int v8, v9, v10

    .line 375
    .local v8, "t":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    shl-int/lit8 v9, v8, 0x10

    const v10, 0xffff

    and-int/2addr v10, v6

    or-int/2addr v9, v10

    aput v9, v7, v4

    .line 376
    ushr-int/lit8 v9, v6, 0x10

    const/high16 v10, -0x10000

    and-int/2addr v10, v8

    or-int v6, v9, v10

    .line 377
    shl-int/lit8 v9, v6, 0x4

    ushr-int/lit8 v10, v6, 0x1c

    or-int v6, v9, v10

    .line 378
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aput v6, v7, v3

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 365
    .end local v6    # "s":I
    .end local v8    # "t":I
    :cond_0
    ushr-int/lit8 v9, v0, 0x1

    shl-int/lit8 v10, v0, 0x1b

    or-int v0, v9, v10

    .line 366
    ushr-int/lit8 v9, v1, 0x1

    shl-int/lit8 v10, v1, 0x1b

    or-int v1, v9, v10

    goto/16 :goto_1

    .line 381
    :cond_1
    return-object v7
.end method

.method private static fourBytesToInt([BI)I
    .locals 3
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 385
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte v2, p0, p1

    invoke-static {v2}, Lorg/apache/commons/codec/digest/UnixCrypt;->byteToUnsigned(B)I

    move-result v1

    .line 386
    .local v1, "value":I
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/apache/commons/codec/digest/UnixCrypt;->byteToUnsigned(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 387
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p0, p1

    invoke-static {v2}, Lorg/apache/commons/codec/digest/UnixCrypt;->byteToUnsigned(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 388
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/apache/commons/codec/digest/UnixCrypt;->byteToUnsigned(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 389
    return v1
.end method

.method private static hPermOp(III)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "n"    # I
    .param p2, "m"    # I

    .prologue
    .line 393
    rsub-int/lit8 v1, p1, 0x10

    shl-int v1, p0, v1

    xor-int/2addr v1, p0

    and-int v0, v1, p2

    .line 394
    .local v0, "t":I
    xor-int v1, p0, v0

    rsub-int/lit8 v2, p1, 0x10

    ushr-int v2, v0, v2

    xor-int p0, v1, v2

    .line 395
    return p0
.end method

.method private static intToFourBytes(I[BI)V
    .locals 2
    .param p0, "iValue"    # I
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 399
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 400
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 401
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 402
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 403
    return-void
.end method

.method private static permOp(IIII[I)V
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "n"    # I
    .param p3, "m"    # I
    .param p4, "results"    # [I

    .prologue
    .line 406
    ushr-int v1, p0, p2

    xor-int/2addr v1, p1

    and-int v0, v1, p3

    .line 407
    .local v0, "t":I
    shl-int v1, v0, p2

    xor-int/2addr p0, v1

    .line 408
    xor-int/2addr p1, v0

    .line 409
    const/4 v1, 0x0

    aput p0, p4, v1

    .line 410
    const/4 v1, 0x1

    aput p1, p4, v1

    .line 411
    return-void
.end method
