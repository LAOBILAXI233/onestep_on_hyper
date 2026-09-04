.class public Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;
.super Ljava/lang/Object;
.source "PinyinUtils.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/register/mobile/PinyinUtils$MatchedResult;
    }
.end annotation


.field private static final DISTINGUISH_LEN:I = 0xa

.field private static final FIRST_CHINA:C = '\u4e00'

.field private static final LAST_CHINA:C = '\u9fa5'

.field private static final PINYIN:[Ljava/lang/String;

.field private static final SPECIAL_HANZI:C = '\u3007'

.field private static final SPECIAL_HANZI_PINYIN:Ljava/lang/String; = "LING"

.field private static volatile isLoad:Z

.field private static sInstance:Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;

.field private static sPinyinIndex:[S


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15
    const/16 v0, 0x197

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "ai"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "an"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 16
    const-string v2, "ang"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ao"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ba"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bai"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ban"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bang"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bao"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bei"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ben"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 17
    const-string v2, "beng"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "bi"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "bian"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "biao"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "bie"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bin"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bing"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "bo"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "bu"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 18
    const-string v2, "ca"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "cai"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "can"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "cang"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "cao"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ce"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "cen"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "ceng"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "cha"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 19
    const-string v2, "chai"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "chan"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "chang"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "chao"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "che"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "chen"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "cheng"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "chi"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 20
    const-string v2, "chong"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "chou"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "chu"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "chuai"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "chuan"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "chuang"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "chui"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "chun"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 21
    const-string v2, "chuo"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "ci"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "cong"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "cou"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "cu"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "cuan"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "cui"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "cun"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "cuo"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 22
    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "dai"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "dan"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "dang"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "dao"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "deng"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "di"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "dia"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 23
    const-string v2, "dian"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "diao"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "die"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "ding"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "diu"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "dong"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "dou"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "du"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "duan"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 24
    const-string v2, "dui"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "dun"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "duo"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "ei"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "er"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "fa"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "fan"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "fang"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 25
    const-string v2, "fei"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "fen"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "feng"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "fo"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "fou"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "fu"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "ga"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "gai"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "gan"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 26
    const-string v2, "gang"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "gao"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "ge"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "gei"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "gen"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "geng"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "gong"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "gou"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "gu"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    .line 27
    const-string v2, "gua"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "guai"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "guan"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "guang"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "gui"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "gun"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "guo"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "ha"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "hai"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    .line 28
    const-string v2, "han"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "hang"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "hao"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "he"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "hei"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "hen"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "heng"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "hong"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "hou"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    .line 29
    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "hua"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "huai"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "huan"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "huang"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "hui"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "hun"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "huo"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "ji"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    .line 30
    const-string v2, "jia"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "jian"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "jiang"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "jiao"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "jie"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "jin"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "jing"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "jiong"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    .line 31
    const-string v2, "jiu"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "ju"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "juan"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "jue"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "jun"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "ka"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "kai"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "kan"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "kang"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    .line 32
    const-string v2, "kao"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "ke"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "ken"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "keng"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "kong"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "kou"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "ku"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "kua"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "kuai"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    .line 33
    const-string v2, "kuan"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "kuang"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "kui"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "kun"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "kuo"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "lai"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "lan"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "lang"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    .line 34
    const-string v2, "lao"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "le"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "lei"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "leng"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "li"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "lia"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "lian"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "liang"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "liao"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    .line 35
    const-string v2, "lie"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "lin"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "ling"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "liu"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "long"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "lou"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "lu"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "luan"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "lun"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    .line 36
    const-string v2, "luo"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "lve"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "ma"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "mai"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "man"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "mang"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "mao"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "me"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    .line 37
    const-string v2, "mei"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "men"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "meng"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "mi"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "mian"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "miao"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "mie"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "min"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "ming"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    .line 38
    const-string v2, "miu"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "mo"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "mou"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "mu"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "na"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "nai"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "nan"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "nang"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "nao"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    .line 39
    const-string v2, "nei"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "nen"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "neng"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "ng"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "ni"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "nian"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "niang"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "niao"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "nie"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    .line 40
    const-string v2, "nin"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "ning"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "niu"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "none"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "nong"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "nou"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "nu"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "nuan"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "nuo"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    .line 41
    const-string v2, "nv"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "nve"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "ou"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "pa"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "pai"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "pan"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "pang"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "pao"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "pei"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    .line 42
    const-string v2, "pen"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "peng"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "pi"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "pian"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "piao"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "pie"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "pin"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "ping"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "po"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    .line 43
    const-string v2, "pou"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "pu"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "qi"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "qia"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "qian"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "qiang"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "qiao"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "qie"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "qin"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    .line 44
    const-string v2, "qing"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "qiong"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "qiu"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "qu"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "quan"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "que"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "qun"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "ran"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "rang"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    .line 45
    const-string v2, "rao"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "re"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "ren"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "reng"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "ri"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "rong"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "rou"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "ruan"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    .line 46
    const-string v2, "rui"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "run"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "ruo"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "sa"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "sai"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "san"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "sang"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "sao"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "se"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    .line 47
    const-string v2, "sen"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "seng"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "sha"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "shai"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "shan"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "shang"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "shao"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "she"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    .line 48
    const-string v2, "shei"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "shen"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "sheng"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "shi"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "shou"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "shu"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "shua"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "shuai"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    .line 49
    const-string v2, "shuan"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "shuang"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "shui"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "shun"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "shuo"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "si"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "song"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "sou"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    .line 50
    const-string v2, "su"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "suan"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "sui"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "sun"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "suo"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "ta"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "tai"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "tan"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "tang"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    .line 51
    const-string v2, "tao"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "te"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "teng"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "ti"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "tian"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "tiao"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "tie"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "ting"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "tong"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    .line 52
    const-string v2, "tou"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "tu"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "tuan"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "tui"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "tun"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "tuo"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "wa"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "wai"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "wan"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    .line 53
    const-string v2, "wang"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "wei"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "wen"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "weng"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "wo"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "wu"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "xi"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "xia"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "xian"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    .line 54
    const-string v2, "xiang"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "xiao"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "xie"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "xin"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "xing"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "xiong"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "xiu"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "xu"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    .line 55
    const-string v2, "xuan"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "xue"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "xun"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "ya"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "yan"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "yang"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "yao"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "ye"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "yi"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    .line 56
    const-string v2, "yiao"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "yin"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "ying"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "yo"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "yong"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "you"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "yu"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "yuan"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "yue"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    .line 57
    const-string v2, "yun"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "za"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string v2, "zai"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "zan"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "zang"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "zao"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "ze"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "zei"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "zen"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    .line 58
    const-string v2, "zeng"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "zha"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string v2, "zhai"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "zhan"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "zhang"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "zhao"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "zhe"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, "zhei"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    .line 59
    const-string v2, "zhen"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, "zheng"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "zhi"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, "zhong"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "zhou"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string v2, "zhu"

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const-string v2, "zhua"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v2, "zhuai"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    .line 60
    const-string v2, "zhuan"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v2, "zhuang"

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    const-string v2, "zhui"

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    const-string v2, "zhun"

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    const-string v2, "zhuo"

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    const-string v2, "zi"

    aput-object v2, v0, v1

    const/16 v1, 0x190

    const-string v2, "zong"

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const-string v2, "zou"

    aput-object v2, v0, v1

    const/16 v1, 0x192

    .line 61
    const-string v2, "zu"

    aput-object v2, v0, v1

    const/16 v1, 0x193

    const-string v2, "zuan"

    aput-object v2, v0, v1

    const/16 v1, 0x194

    const-string v2, "zui"

    aput-object v2, v0, v1

    const/16 v1, 0x195

    const-string v2, "zun"

    aput-object v2, v0, v1

    const/16 v1, 0x196

    const-string v2, "zuo"

    aput-object v2, v0, v1

    .line 15
    sput-object v0, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->PINYIN:[Ljava/lang/String;

    .line 63
    sput-boolean v3, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->isLoad:Z

    .line 70
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method private distinguish([C[C[Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 288
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    move v2, v0

    move v1, v0

    .line 291
    :goto_0
    if-lt v2, p4, :cond_1

    .line 301
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 292
    :cond_1
    aget-object v3, p3, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 293
    if-ne v1, v5, :cond_2

    .line 294
    aget-char v3, p2, v2

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 296
    :cond_2
    if-eq v1, v5, :cond_0

    .line 299
    add-int/lit8 v3, v1, 0x1

    .line 291
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;
    .locals 2

    .prologue
    .line 81
    const-class v1, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->sInstance:Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->sInstance:Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->loadData(Landroid/content/Context;)V

    .line 85
    sget-object v0, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->sInstance:Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getObject()Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->sInstance:Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;

    return-object v0
.end method

.method private getPinyin(C)Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    sget-boolean v0, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->isLoad:Z

    if-nez v0, :cond_1

    .line 123
    const-string v0, ""

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 126
    :cond_1
    const-string v0, ""

    .line 127
    const/16 v0, 0x3007

    if-ne p1, v0, :cond_2

    .line 128
    const-string v0, "LING"

    goto :goto_0

    .line 131
    :cond_2
    const/16 v0, 0x4e00

    if-lt p1, v0, :cond_3

    const v0, 0x9fa5

    if-le p1, v0, :cond_4

    .line 132
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_4
    add-int/lit16 v0, p1, -0x4e00

    .line 137
    sget-object v1, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->PINYIN:[Ljava/lang/String;

    sget-object v2, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->sPinyinIndex:[S

    aget-short v0, v2, v0

    aget-object v0, v1, v0

    .line 138
    if-nez v0, :cond_0

    .line 139
    const-string v0, ""

    goto :goto_0
.end method

.method private static loadData(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 89
    const/4 v0, 0x0

    .line 90
    const/4 v2, 0x0

    .line 92
    :try_start_0
    sget-boolean v4, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->isLoad:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 109
    if-eqz v1, :cond_0

    .line 110
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 112
    :cond_0
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "pinyinindex"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 96
    :try_start_3
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-long v4, v1

    .line 98
    long-to-int v1, v4

    new-array v1, v1, [S

    sput-object v1, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->sPinyinIndex:[S

    move v1, v3

    .line 99
    :goto_1
    sget-object v3, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->sPinyinIndex:[S

    array-length v3, v3

    if-lt v1, v3, :cond_4

    .line 102
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->isLoad:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 109
    if-eqz v0, :cond_3

    .line 110
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 112
    :cond_3
    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0

    .line 100
    :cond_4
    :try_start_6
    sget-object v3, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->sPinyinIndex:[S

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    aput-short v4, v3, v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 104
    :goto_2
    const/4 v2, 0x0

    :try_start_7
    sput-boolean v2, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->isLoad:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 109
    if-eqz v0, :cond_5

    .line 110
    :try_start_8
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 112
    :cond_5
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 115
    :catch_2
    move-exception v0

    goto :goto_0

    .line 105
    :catch_3
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 106
    :goto_3
    const/4 v1, 0x0

    :try_start_9
    sput-boolean v1, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->isLoad:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 109
    if-eqz v0, :cond_6

    .line 110
    :try_start_a
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 112
    :cond_6
    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_0

    .line 115
    :catch_4
    move-exception v0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 109
    :goto_4
    if-eqz v1, :cond_7

    .line 110
    :try_start_b
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 112
    :cond_7
    if-eqz v2, :cond_8

    .line 113
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 118
    :cond_8
    :goto_5
    throw v0

    .line 115
    :catch_5
    move-exception v1

    goto :goto_5

    .line 107
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catchall_3
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 105
    :catch_6
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_3

    .line 103
    :catch_8
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_9
    move-exception v1

    move-object v1, v2

    goto :goto_2

    .line 115
    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method

.method private subCharRangeArray([CII)[C
    .locals 3

    .prologue
    .line 305
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    .line 306
    new-array v1, v0, [C

    .line 307
    const/4 v0, 0x0

    :goto_0
    if-le p2, p3, :cond_0

    .line 310
    return-object v1

    .line 308
    :cond_0
    aget-char v2, p1, p2

    aput-char v2, v1, v0

    .line 307
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private subStringRangeArray([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 314
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    .line 315
    new-array v1, v0, [Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    :goto_0
    if-le p2, p3, :cond_0

    .line 319
    return-object v1

    .line 317
    :cond_0
    aget-object v2, p1, p2

    aput-object v2, v1, v0

    .line 316
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


.method public distinguish([CI[C[Ljava/lang/String;II)I
    .locals 8

    .prologue
    .line 237
    if-nez p2, :cond_3

    .line 238
    const/4 v0, 0x0

    aget-char v0, p1, v0

    const/4 v1, 0x0

    aget-char v1, p3, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    aget-char v0, p1, v0

    const/4 v1, 0x0

    aget-object v1, p4, v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_3

    .line 239
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 240
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->distinguish([CI[C[Ljava/lang/String;II)I

    move-result p5

    .line 284
    :cond_1
    :goto_0
    return p5

    .line 243
    :cond_2
    const/4 p5, 0x0

    goto :goto_0

    .line 247
    :cond_3
    aget-object v0, p4, p5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p6, :cond_6

    array-length v0, p1

    if-ge p2, v0, :cond_6

    .line 248
    aget-char v0, p1, p2

    aget-char v1, p3, p5

    if-eq v0, v1, :cond_4

    .line 249
    aget-char v0, p1, p2

    aget-object v1, p4, p5

    invoke-virtual {v1, p6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_6

    .line 250
    :cond_4
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_5

    .line 251
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->distinguish([C[C[Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const/4 p5, -0x1

    goto :goto_0

    .line 259
    :cond_5
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v6, p6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->distinguish([CI[C[Ljava/lang/String;II)I

    move-result p5

    goto :goto_0

    .line 262
    :cond_6
    array-length v0, p4

    add-int/lit8 v1, p5, 0x1

    if-le v0, v1, :cond_a

    array-length v0, p1

    if-ge p2, v0, :cond_a

    .line 263
    aget-char v0, p1, p2

    add-int/lit8 v1, p5, 0x1

    aget-char v1, p3, v1

    if-eq v0, v1, :cond_7

    .line 264
    aget-char v0, p1, p2

    add-int/lit8 v1, p5, 0x1

    aget-object v1, p4, v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_a

    .line 265
    :cond_7
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_9

    .line 266
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->distinguish([C[C[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 267
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 270
    :cond_8
    const/4 p5, -0x1

    goto :goto_0

    .line 274
    :cond_9
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v5, p5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->distinguish([CI[C[Ljava/lang/String;II)I

    move-result p5

    goto :goto_0

    .line 277
    :cond_a
    array-length v0, p4

    add-int/lit8 v1, p5, 0x1

    if-le v0, v1, :cond_b

    .line 278
    const/4 v0, 0x1

    move v7, v0

    :goto_1
    if-lt v7, p2, :cond_c

    .line 284
    :cond_b
    const/4 p5, -0x1

    goto :goto_0

    .line 279
    :cond_c
    sub-int v2, p2, v7

    add-int/lit8 v5, p5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->distinguish([CI[C[Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 280
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    .line 278
    :cond_d
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1
.end method

.method public getMatchedResult(Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/register/mobile/PinyinUtils$MatchedResult;
    .locals 13

    .prologue
    const/16 v5, 0xa

    const/4 v12, -0x1

    const/4 v2, 0x0

    .line 162
    new-instance v8, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils$MatchedResult;

    invoke-direct {v8}, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils$MatchedResult;-><init>()V

    .line 163
    iput v12, v8, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils$MatchedResult;->start:I

    .line 164
    iput v12, v8, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils$MatchedResult;->end:I

    .line 165
    sget-boolean v0, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->isLoad:Z

    if-nez v0, :cond_0

    move-object v0, v8

    .line 233
    :goto_0
    return-object v0

    .line 169
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, v8

    .line 170
    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 177
    if-le v3, v5, :cond_a

    .line 178
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 182
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 183
    if-ltz v1, :cond_3

    .line 184
    iput v1, v8, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils$MatchedResult;->start:I

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    iput v1, v8, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils$MatchedResult;->end:I

    .line 188
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    move v4, v2

    .line 189
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 193
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    new-array v9, v0, [C

    .line 194
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    .line 195
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v0, v2

    .line 197
    :goto_3
    if-lt v0, v4, :cond_5

    .line 212
    aget-char v11, v1, v2

    move v7, v2

    .line 213
    :goto_4
    array-length v0, v10

    if-lt v7, v0, :cond_7

    move-object v0, v8

    .line 233
    goto :goto_0

    .line 190
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v4

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 199
    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 200
    aput-char v5, v9, v0

    .line 202
    invoke-direct {p0, v5}, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->getPinyin(C)Ljava/lang/String;

    move-result-object v6

    .line 204
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 205
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v0

    .line 197
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 208
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v0

    goto :goto_5

    .line 214
    :cond_7
    aget-object v0, v10, v7

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 215
    aget-char v3, v9, v7

    .line 217
    if-eq v0, v11, :cond_8

    if-ne v3, v11, :cond_9

    .line 219
    :cond_8
    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v9, v7, v0}, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->subCharRangeArray([CII)[C

    move-result-object v3

    .line 220
    array-length v0, v10

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v10, v7, v0}, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->subStringRangeArray([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, v2

    move v6, v2

    .line 218
    invoke-virtual/range {v0 .. v6}, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->distinguish([CI[C[Ljava/lang/String;II)I

    move-result v0

    .line 222
    if-eq v0, v12, :cond_9

    .line 223
    iput v7, v8, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils$MatchedResult;->start:I

    .line 224
    add-int/2addr v0, v7

    iput v0, v8, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils$MatchedResult;->end:I

    move-object v0, v8

    .line 229
    goto/16 :goto_0

    .line 213
    :cond_9
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_4

    :cond_a
    move-object v3, v1

    goto/16 :goto_1
.end method

.method public getPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, ""

    .line 158
    :goto_0
    return-object v0

    .line 149
    :cond_0
    sget-boolean v0, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->isLoad:Z

    if-nez v0, :cond_1

    .line 150
    const-string v0, ""

    goto :goto_0

    .line 152
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 154
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_2

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 156
    invoke-direct {p0, v3}, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;->getPinyin(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
