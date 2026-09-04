.class public Lorg/apache/commons/codec/language/DoubleMetaphone;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"

.implements Lorg/apache/commons/codec/StringEncoder;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    }
.end annotation


.field private static final ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

.field private static final L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

.field private static final L_T_K_S_N_M_B_Z:[Ljava/lang/String;

.field private static final SILENT_START:[Ljava/lang/String;

.field private static final VOWELS:Ljava/lang/String; = "AEIOUY"


.field private maxCodeLen:I


.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GN"

    aput-object v1, v0, v3

    const-string v1, "KN"

    aput-object v1, v0, v4

    const-string v1, "PN"

    aput-object v1, v0, v5

    const-string v1, "WR"

    aput-object v1, v0, v6

    const-string v1, "PS"

    aput-object v1, v0, v7

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "L"

    aput-object v1, v0, v3

    const-string v1, "R"

    aput-object v1, v0, v4

    const-string v1, "N"

    aput-object v1, v0, v5

    const-string v1, "M"

    aput-object v1, v0, v6

    const-string v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "H"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " "

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 51
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ES"

    aput-object v1, v0, v3

    const-string v1, "EP"

    aput-object v1, v0, v4

    const-string v1, "EB"

    aput-object v1, v0, v5

    const-string v1, "EL"

    aput-object v1, v0, v6

    const-string v1, "EY"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "IB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EI"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ER"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "L"

    aput-object v1, v0, v3

    const-string v1, "T"

    aput-object v1, v0, v4

    const-string v1, "K"

    aput-object v1, v0, v5

    const-string v1, "S"

    aput-object v1, v0, v6

    const-string v1, "N"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "M"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    .line 66
    return-void
.end method

.method private cleanInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 888
    if-nez p1, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-object v0

    .line 891
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 892
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private conditionC0(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 781
    const/4 v3, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "CHIA"

    aput-object v5, v4, v1

    invoke-static {p1, p2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 791
    :cond_0
    :goto_0
    return v1

    .line 783
    :cond_1
    if-le p2, v2, :cond_0

    .line 785
    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 787
    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x3

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "ACH"

    aput-object v6, v5, v1

    invoke-static {p1, v3, v4, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 790
    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    .line 791
    .local v0, "c":C
    const/16 v3, 0x49

    if-eq v0, v3, :cond_2

    const/16 v3, 0x45

    if-ne v0, v3, :cond_3

    :cond_2
    add-int/lit8 v3, p2, -0x2

    const/4 v4, 0x6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "BACHER"

    aput-object v6, v5, v1

    const-string v6, "MACHER"

    aput-object v6, v5, v2

    invoke-static {p1, v3, v4, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private conditionCH0(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 800
    if-eqz p2, :cond_1

    .line 808
    :cond_0
    :goto_0
    return v0

    .line 802
    :cond_1
    add-int/lit8 v2, p2, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "HARAC"

    aput-object v4, v3, v0

    const-string v4, "HARIS"

    aput-object v4, v3, v1

    invoke-static {p1, v2, v7, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "HOR"

    aput-object v4, v3, v0

    const-string v4, "HYM"

    aput-object v4, v3, v1

    const-string v4, "HIA"

    aput-object v4, v3, v5

    const-string v4, "HEM"

    aput-object v4, v3, v6

    invoke-static {p1, v2, v6, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 805
    :cond_2
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "CHORE"

    aput-object v3, v2, v0

    invoke-static {p1, v0, v7, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 808
    goto :goto_0
.end method

.method private conditionCH1(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 816
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VAN "

    aput-object v3, v2, v0

    const-string v3, "VON "

    aput-object v3, v2, v1

    invoke-static {p1, v0, v8, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "SCH"

    aput-object v3, v2, v0

    invoke-static {p1, v0, v7, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p2, -0x2

    const/4 v3, 0x6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "ORCHES"

    aput-object v5, v4, v0

    const-string v5, "ARCHIT"

    aput-object v5, v4, v1

    const-string v5, "ORCHID"

    aput-object v5, v4, v6

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p2, 0x2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "T"

    aput-object v4, v3, v0

    const-string v4, "S"

    aput-object v4, v3, v1

    invoke-static {p1, v2, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p2, -0x1

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "A"

    aput-object v4, v3, v0

    const-string v4, "O"

    aput-object v4, v3, v1

    const-string v4, "U"

    aput-object v4, v3, v6

    const-string v4, "E"

    aput-object v4, v3, v7

    invoke-static {p1, v2, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_2

    :cond_0
    add-int/lit8 v2, p2, 0x2

    sget-object v3, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    invoke-static {p1, v2, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method private conditionL0(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 827
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    if-ne p2, v2, :cond_1

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ILLO"

    aput-object v4, v3, v1

    const-string v4, "ILLA"

    aput-object v4, v3, v0

    const-string v4, "ALLE"

    aput-object v4, v3, v5

    invoke-static {p1, v2, v6, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v0

    .line 830
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "AS"

    aput-object v4, v3, v1

    const-string v4, "OS"

    aput-object v4, v3, v0

    invoke-static {p1, v2, v5, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "A"

    aput-object v4, v3, v1

    const-string v4, "O"

    aput-object v4, v3, v0

    invoke-static {p1, v2, v0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    add-int/lit8 v2, p2, -0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "ALLE"

    aput-object v4, v3, v1

    invoke-static {p1, v2, v6, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 835
    goto :goto_0
.end method

.method private conditionM0(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 843
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "UMB"

    aput-object v5, v4, v1

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "ER"

    aput-object v5, v4, v1

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected static varargs contains(Ljava/lang/String;II[Ljava/lang/String;)Z
    .locals 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria"    # [Ljava/lang/String;

    .prologue
    .line 916
    const/4 v4, 0x0

    .line 917
    .local v4, "result":Z
    if-ltz p1, :cond_0

    add-int v6, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 918
    add-int v6, p1, p2

    invoke-virtual {p0, p1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 920
    .local v5, "target":Ljava/lang/String;
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 921
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 922
    const/4 v4, 0x1

    .line 927
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "target":Ljava/lang/String;
    :cond_0
    return v4

    .line 920
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "element":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "target":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private handleAEIOUY(Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .param p1, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p2, "index"    # I

    .prologue
    .line 269
    if-nez p2, :cond_0

    .line 270
    const/16 v0, 0x41

    invoke-virtual {p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 272
    :cond_0
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method private handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v8, 0x53

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 279
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionC0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 281
    add-int/lit8 p3, p3, 0x2

    :goto_0
    move v0, p3

    .line 324
    :goto_1
    return v0

    .line 282
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x6

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "CAESAR"

    aput-object v2, v1, v5

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {p2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 284
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 285
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "CH"

    aput-object v1, v0, v5

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p3

    goto :goto_0

    .line 287
    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "CZ"

    aput-object v1, v0, v5

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, -0x2

    const/4 v1, 0x4

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "WICZ"

    aput-object v3, v2, v5

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 290
    const/16 v0, 0x58

    invoke-virtual {p2, v8, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 291
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 292
    :cond_3
    add-int/lit8 v0, p3, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "CIA"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 295
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    .line 296
    :cond_4
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "CC"

    aput-object v1, v0, v5

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p3, v4, :cond_5

    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_6

    .line 299
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_1

    .line 300
    :cond_6
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "CK"

    aput-object v1, v0, v5

    const-string v1, "CG"

    aput-object v1, v0, v4

    const-string v1, "CQ"

    aput-object v1, v0, v6

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 301
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 302
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 303
    :cond_7
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "CI"

    aput-object v1, v0, v5

    const-string v1, "CE"

    aput-object v1, v0, v4

    const-string v1, "CY"

    aput-object v1, v0, v6

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 305
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "CIO"

    aput-object v1, v0, v5

    const-string v1, "CIE"

    aput-object v1, v0, v4

    const-string v1, "CIA"

    aput-object v1, v0, v6

    invoke-static {p1, p3, v7, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 306
    const/16 v0, 0x58

    invoke-virtual {p2, v8, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 310
    :goto_2
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 308
    :cond_8
    invoke-virtual {p2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 312
    :cond_9
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 313
    add-int/lit8 v0, p3, 0x1

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, " C"

    aput-object v2, v1, v5

    const-string v2, " Q"

    aput-object v2, v1, v4

    const-string v2, " G"

    aput-object v2, v1, v6

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 315
    add-int/lit8 p3, p3, 0x3

    goto/16 :goto_0

    .line 316
    :cond_a
    add-int/lit8 v0, p3, 0x1

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "C"

    aput-object v2, v1, v5

    const-string v2, "K"

    aput-object v2, v1, v4

    const-string v2, "Q"

    aput-object v2, v1, v6

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, p3, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "CE"

    aput-object v2, v1, v5

    const-string v2, "CI"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 318
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 320
    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0
.end method

.method private handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 331
    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "I"

    aput-object v2, v1, v5

    const-string v2, "E"

    aput-object v2, v1, v4

    const-string v2, "H"

    aput-object v2, v1, v3

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "HU"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 334
    if-ne p3, v4, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x5

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "UCCEE"

    aput-object v3, v2, v5

    const-string v3, "UCCES"

    aput-object v3, v2, v4

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    :cond_1
    const-string v0, "KS"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 342
    :goto_0
    add-int/lit8 p3, p3, 0x3

    .line 348
    :goto_1
    return p3

    .line 340
    :cond_2
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 344
    :cond_3
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 345
    add-int/lit8 p3, p3, 0x2

    goto :goto_1
.end method

.method private handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x58

    const/4 v4, 0x0

    const/16 v3, 0x4b

    .line 355
    if-lez p3, :cond_0

    const/4 v0, 0x4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "CHAE"

    aput-object v2, v1, v4

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p2, v3, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 357
    add-int/lit8 v0, p3, 0x2

    .line 376
    :goto_0
    return v0

    .line 358
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 361
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 362
    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH1(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 365
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 367
    :cond_2
    if-lez p3, :cond_4

    .line 368
    const/4 v0, 0x2

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "MC"

    aput-object v2, v1, v4

    invoke-static {p1, v4, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 376
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 371
    :cond_3
    invoke-virtual {p2, v5, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_1

    .line 374
    :cond_4
    invoke-virtual {p2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1
.end method

.method private handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v2, 0x54

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 384
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "DG"

    aput-object v1, v0, v5

    invoke-static {p1, p3, v4, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "I"

    aput-object v2, v1, v5

    const-string v2, "E"

    aput-object v2, v1, v3

    const-string v2, "Y"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 388
    add-int/lit8 p3, p3, 0x3

    .line 401
    :goto_0
    return p3

    .line 391
    :cond_0
    const-string v0, "TK"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 392
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 394
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "DT"

    aput-object v1, v0, v5

    const-string v1, "DD"

    aput-object v1, v0, v3

    invoke-static {p1, p3, v4, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 396
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 399
    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method private handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0x4b

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 409
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 410
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p3

    .line 459
    :goto_0
    return p3

    .line 411
    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_3

    .line 412
    if-ne p3, v5, :cond_1

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 413
    const-string v0, "KN"

    const-string v1, "N"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_1
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 414
    :cond_1
    add-int/lit8 v0, p3, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "EY"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-eq v0, v1, :cond_2

    if-nez p4, :cond_2

    .line 416
    const-string v0, "N"

    const-string v1, "KN"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 418
    :cond_2
    const-string v0, "KN"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 421
    :cond_3
    add-int/lit8 v0, p3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LI"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 422
    const-string v0, "KL"

    const-string v1, "L"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 424
    :cond_4
    if-nez p3, :cond_6

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-eq v0, v1, :cond_5

    add-int/lit8 v0, p3, 0x1

    sget-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 428
    :cond_5
    const/16 v0, 0x4a

    invoke-virtual {p2, v7, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 429
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 430
    :cond_6
    add-int/lit8 v0, p3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ER"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_8

    :cond_7
    const/4 v0, 0x6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "DANGER"

    aput-object v2, v1, v4

    const-string v2, "RANGER"

    aput-object v2, v1, v5

    const-string v2, "MANGER"

    aput-object v2, v1, v6

    invoke-static {p1, v4, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    add-int/lit8 v0, p3, -0x1

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "E"

    aput-object v2, v1, v4

    const-string v2, "I"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    add-int/lit8 v0, p3, -0x1

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "RGY"

    aput-object v2, v1, v4

    const-string v2, "OGY"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v8, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 436
    const/16 v0, 0x4a

    invoke-virtual {p2, v7, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 437
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 438
    :cond_8
    add-int/lit8 v0, p3, 0x1

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "E"

    aput-object v2, v1, v4

    const-string v2, "I"

    aput-object v2, v1, v5

    const-string v2, "Y"

    aput-object v2, v1, v6

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AGGI"

    aput-object v3, v2, v4

    const-string v3, "OGGI"

    aput-object v3, v2, v5

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 441
    :cond_9
    const/4 v0, 0x4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "VAN "

    aput-object v2, v1, v4

    const-string v2, "VON "

    aput-object v2, v1, v5

    invoke-static {p1, v4, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SCH"

    aput-object v1, v0, v4

    invoke-static {p1, v4, v8, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ET"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 445
    :cond_a
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 451
    :goto_2
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 446
    :cond_b
    add-int/lit8 v0, p3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "IER"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v8, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 447
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 449
    :cond_c
    const/16 v0, 0x4a

    invoke-virtual {p2, v0, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 452
    :cond_d
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_e

    .line 453
    add-int/lit8 p3, p3, 0x2

    .line 454
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_0

    .line 456
    :cond_e
    add-int/lit8 p3, p3, 0x1

    .line 457
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_0
.end method

.method private handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v7, 0x4b

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 466
    if-lez p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 468
    add-int/lit8 p3, p3, 0x2

    .line 491
    :goto_0
    return p3

    .line 469
    :cond_0
    if-nez p3, :cond_2

    .line 470
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    .line 471
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 475
    :goto_1
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 476
    :cond_2
    if-le p3, v4, :cond_3

    add-int/lit8 v0, p3, -0x2

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "B"

    aput-object v2, v1, v5

    const-string v2, "H"

    aput-object v2, v1, v4

    const-string v2, "D"

    aput-object v2, v1, v3

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    if-le p3, v3, :cond_4

    add-int/lit8 v0, p3, -0x3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "B"

    aput-object v2, v1, v5

    const-string v2, "H"

    aput-object v2, v1, v4

    const-string v2, "D"

    aput-object v2, v1, v3

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    if-le p3, v6, :cond_6

    add-int/lit8 v0, p3, -0x4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "B"

    aput-object v2, v1, v5

    const-string v2, "H"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 480
    :cond_5
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 482
    :cond_6
    if-le p3, v3, :cond_8

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_8

    add-int/lit8 v0, p3, -0x3

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "C"

    aput-object v2, v1, v5

    const-string v2, "G"

    aput-object v2, v1, v4

    const-string v2, "L"

    aput-object v2, v1, v3

    const-string v2, "R"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "T"

    aput-object v3, v1, v2

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 485
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 489
    :cond_7
    :goto_2
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 486
    :cond_8
    if-lez p3, :cond_7

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x49

    if-eq v0, v1, :cond_7

    .line 487
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2
.end method

.method private handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    .line 499
    if-eqz p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    const/16 v0, 0x48

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 502
    add-int/lit8 p3, p3, 0x2

    .line 507
    :goto_0
    return p3

    .line 505
    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method private handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    const/16 v6, 0x48

    const/4 v2, 0x4

    const/16 v5, 0x4a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 515
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "JOSE"

    aput-object v1, v0, v3

    invoke-static {p1, p3, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SAN "

    aput-object v1, v0, v3

    invoke-static {p1, v3, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 517
    :cond_0
    if-nez p3, :cond_1

    add-int/lit8 v0, p3, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_2

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SAN "

    aput-object v1, v0, v3

    invoke-static {p1, v3, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 519
    :cond_2
    invoke-virtual {p2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 523
    :goto_0
    add-int/lit8 p3, p3, 0x1

    .line 543
    :goto_1
    return p3

    .line 521
    :cond_3
    invoke-virtual {p2, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 525
    :cond_4
    if-nez p3, :cond_6

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "JOSE"

    aput-object v1, v0, v3

    invoke-static {p1, p3, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 526
    const/16 v0, 0x41

    invoke-virtual {p2, v5, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 537
    :cond_5
    :goto_2
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v5, :cond_a

    .line 538
    add-int/lit8 p3, p3, 0x2

    goto :goto_1

    .line 527
    :cond_6
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p4, :cond_8

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_7

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_8

    .line 529
    :cond_7
    invoke-virtual {p2, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 530
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_9

    .line 531
    const/16 v0, 0x20

    invoke-virtual {p2, v5, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 532
    :cond_9
    add-int/lit8 v0, p3, 0x1

    sget-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "S"

    aput-object v2, v1, v3

    const-string v2, "K"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "L"

    aput-object v3, v1, v2

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 534
    invoke-virtual {p2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 540
    :cond_a
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v1, 0x4c

    .line 550
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 551
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionL0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    .line 556
    :goto_0
    add-int/lit8 p3, p3, 0x2

    .line 561
    :goto_1
    return p3

    .line 554
    :cond_0
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 558
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 559
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1
.end method

.method private handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/4 v4, 0x1

    .line 568
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 569
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 570
    add-int/lit8 p3, p3, 0x2

    .line 575
    :goto_0
    return p3

    .line 572
    :cond_0
    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 573
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "P"

    aput-object v3, v1, v2

    const-string v2, "B"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p3, p3, 0x2

    :goto_1
    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x52

    const/4 v3, 0x2

    .line 583
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_0

    add-int/lit8 v0, p3, -0x2

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "IE"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p3, -0x4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "ME"

    aput-object v2, v1, v5

    const-string v2, "MA"

    aput-object v2, v1, v6

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 590
    :goto_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v4, :cond_1

    add-int/lit8 v0, p3, 0x2

    :goto_1
    return v0

    .line 588
    :cond_0
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 590
    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_1
.end method

.method private handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0x53

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 598
    add-int/lit8 v0, p3, -0x1

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ISL"

    aput-object v2, v1, v5

    const-string v2, "YSL"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v8, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    add-int/lit8 p3, p3, 0x1

    .line 640
    :goto_0
    return p3

    .line 601
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x5

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "SUGAR"

    aput-object v2, v1, v5

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    const/16 v0, 0x58

    invoke-virtual {p2, v0, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 604
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 605
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SH"

    aput-object v1, v0, v5

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 606
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "HEIM"

    aput-object v3, v2, v5

    const-string v3, "HOEK"

    aput-object v3, v2, v4

    const-string v3, "HOLM"

    aput-object v3, v2, v6

    const-string v3, "HOLZ"

    aput-object v3, v2, v8

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 612
    :goto_1
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 610
    :cond_2
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 613
    :cond_3
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "SIO"

    aput-object v1, v0, v5

    const-string v1, "SIA"

    aput-object v1, v0, v4

    invoke-static {p1, p3, v8, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "SIAN"

    aput-object v2, v1, v5

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 615
    :cond_4
    if-eqz p4, :cond_5

    .line 616
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 620
    :goto_2
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    .line 618
    :cond_5
    const/16 v0, 0x58

    invoke-virtual {p2, v7, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 621
    :cond_6
    if-nez p3, :cond_7

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "M"

    aput-object v2, v1, v5

    const-string v2, "N"

    aput-object v2, v1, v4

    const-string v2, "L"

    aput-object v2, v1, v6

    const-string v2, "W"

    aput-object v2, v1, v8

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    add-int/lit8 v0, p3, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Z"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 627
    :cond_8
    const/16 v0, 0x58

    invoke-virtual {p2, v7, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 628
    add-int/lit8 v0, p3, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Z"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 p3, p3, 0x2

    :goto_3
    goto/16 :goto_0

    :cond_9
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 629
    :cond_a
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SC"

    aput-object v1, v0, v5

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 630
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p3

    goto/16 :goto_0

    .line 632
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_c

    add-int/lit8 v0, p3, -0x2

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "AI"

    aput-object v2, v1, v5

    const-string v2, "OI"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 634
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 638
    :goto_4
    add-int/lit8 v0, p3, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "S"

    aput-object v2, v1, v5

    const-string v2, "Z"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    add-int/lit8 p3, p3, 0x2

    :goto_5
    goto/16 :goto_0

    .line 636
    :cond_c
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_4

    .line 638
    :cond_d
    add-int/lit8 p3, p3, 0x1

    goto :goto_5
.end method

.method private handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v8, 0x53

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 647
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_3

    .line 649
    add-int/lit8 v0, p3, 0x3

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "OO"

    aput-object v2, v1, v7

    const-string v2, "ER"

    aput-object v2, v1, v5

    const-string v2, "EN"

    aput-object v2, v1, v4

    const-string v2, "UY"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "ED"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "EM"

    aput-object v3, v1, v2

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    add-int/lit8 v0, p3, 0x3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ER"

    aput-object v2, v1, v7

    const-string v2, "EN"

    aput-object v2, v1, v5

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    const-string v0, "X"

    const-string v1, "SK"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :goto_0
    add-int/lit8 v0, p3, 0x3

    return v0

    .line 655
    :cond_0
    const-string v0, "SK"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x57

    if-eq v0, v1, :cond_2

    .line 659
    const/16 v0, 0x58

    invoke-virtual {p2, v0, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 661
    :cond_2
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 664
    :cond_3
    add-int/lit8 v0, p3, 0x2

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "I"

    aput-object v2, v1, v7

    const-string v2, "E"

    aput-object v2, v1, v5

    const-string v2, "Y"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 665
    invoke-virtual {p2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 667
    :cond_4
    const-string v0, "SK"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v7, 0x54

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 676
    const/4 v0, 0x4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "TION"

    aput-object v2, v1, v3

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 678
    add-int/lit8 p3, p3, 0x3

    .line 696
    :goto_0
    return p3

    .line 679
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "TIA"

    aput-object v1, v0, v3

    const-string v1, "TCH"

    aput-object v1, v0, v4

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 681
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    .line 682
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "TH"

    aput-object v1, v0, v3

    invoke-static {p1, p3, v5, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "TTH"

    aput-object v1, v0, v3

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 683
    :cond_2
    add-int/lit8 v0, p3, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "OM"

    aput-object v2, v1, v3

    const-string v2, "AM"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "VAN "

    aput-object v2, v1, v3

    const-string v2, "VON "

    aput-object v2, v1, v4

    invoke-static {p1, v3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SCH"

    aput-object v1, v0, v3

    invoke-static {p1, v3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 687
    :cond_3
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 691
    :goto_1
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 689
    :cond_4
    const/16 v0, 0x30

    invoke-virtual {p2, v0, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_1

    .line 693
    :cond_5
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 694
    add-int/lit8 v0, p3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "T"

    aput-object v2, v1, v3

    const-string v2, "D"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 p3, p3, 0x2

    :goto_2
    goto/16 :goto_0

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2
.end method

.method private handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 703
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "WR"

    aput-object v1, v0, v4

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    const/16 v0, 0x52

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 706
    add-int/lit8 p3, p3, 0x2

    .line 732
    :goto_0
    return p3

    .line 708
    :cond_0
    if-nez p3, :cond_3

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "WH"

    aput-object v1, v0, v4

    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 710
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 712
    const/16 v0, 0x41

    const/16 v1, 0x46

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 717
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 715
    :cond_2
    const/16 v0, 0x41

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 718
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_4

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EWSKI"

    aput-object v3, v2, v4

    const-string v3, "EWSKY"

    aput-object v3, v2, v5

    const-string v3, "OWSKI"

    aput-object v3, v2, v6

    const-string v3, "OWSKY"

    aput-object v3, v2, v7

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SCH"

    aput-object v1, v0, v4

    invoke-static {p1, v4, v7, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 722
    :cond_5
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 723
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 724
    :cond_6
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "WICZ"

    aput-object v1, v0, v4

    const-string v1, "WITZ"

    aput-object v1, v0, v5

    invoke-static {p1, p3, v8, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 726
    const-string v0, "TS"

    const-string v1, "FX"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    add-int/lit8 p3, p3, 0x4

    goto/16 :goto_0

    .line 729
    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0
.end method

.method private handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 739
    if-nez p3, :cond_0

    .line 740
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 741
    add-int/lit8 p3, p3, 0x1

    .line 751
    :goto_0
    return p3

    .line 743
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    add-int/lit8 v0, p3, -0x3

    const/4 v1, 0x3

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "IAU"

    aput-object v3, v2, v6

    const-string v3, "EAU"

    aput-object v3, v2, v4

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p3, -0x2

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "AU"

    aput-object v2, v1, v6

    const-string v2, "OU"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 747
    :cond_1
    const-string v0, "KS"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 749
    :cond_2
    add-int/lit8 v0, p3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "C"

    aput-object v2, v1, v6

    const-string v2, "X"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 p3, p3, 0x2

    :goto_1
    goto :goto_0

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    const/4 v4, 0x2

    .line 759
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 761
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 762
    add-int/lit8 p3, p3, 0x2

    .line 772
    :goto_0
    return p3

    .line 764
    :cond_0
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ZO"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ZI"

    aput-object v3, v1, v2

    const-string v2, "ZA"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_2

    if-lez p3, :cond_2

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_2

    .line 766
    :cond_1
    const-string v0, "S"

    const-string v1, "TS"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :goto_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    add-int/lit8 p3, p3, 0x2

    :goto_2
    goto :goto_0

    .line 768
    :cond_2
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 770
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2
.end method

.method private isSilentStart(Ljava/lang/String;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 874
    const/4 v4, 0x0

    .line 875
    .local v4, "result":Z
    sget-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 876
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 877
    const/4 v4, 0x1

    .line 881
    .end local v1    # "element":Ljava/lang/String;
    :cond_0
    return v4

    .line 875
    .restart local v1    # "element":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isSlavoGermanic(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 857
    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "CZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "WITZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVowel(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 865
    const-string v0, "AEIOUY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


.method protected charAt(Ljava/lang/String;I)C
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 904
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 905
    :cond_0
    const/4 v0, 0x0

    .line 907
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "alternate"    # Z

    .prologue
    const/16 v7, 0x4e

    const/16 v6, 0x4b

    const/16 v5, 0x46

    .line 86
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->cleanInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    if-nez p1, :cond_0

    .line 88
    const/4 v3, 0x0

    .line 189
    :goto_0
    return-object v3

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSlavoGermanic(Ljava/lang/String;)Z

    move-result v2

    .line 92
    .local v2, "slavoGermanic":Z
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSilentStart(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 94
    .local v0, "index":I
    :goto_1
    new-instance v1, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v3

    invoke-direct {v1, p0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;-><init>(Lorg/apache/commons/codec/language/DoubleMetaphone;I)V

    .line 96
    .local v1, "result":Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    :goto_2
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->isComplete()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v0, v3, :cond_9

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 184
    add-int/lit8 v0, v0, 0x1

    .line 185
    goto :goto_2

    .line 92
    .end local v0    # "index":I
    .end local v1    # "result":Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 104
    .restart local v0    # "index":I
    .restart local v1    # "result":Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    :sswitch_0
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleAEIOUY(Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 105
    goto :goto_2

    .line 107
    :sswitch_1
    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 108
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x2

    .line 109
    :goto_3
    goto :goto_2

    .line 108
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 112
    :sswitch_2
    const/16 v3, 0x53

    invoke-virtual {v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 114
    goto :goto_2

    .line 116
    :sswitch_3
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 117
    goto :goto_2

    .line 119
    :sswitch_4
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 120
    goto :goto_2

    .line 122
    :sswitch_5
    invoke-virtual {v1, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 123
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v5, :cond_3

    add-int/lit8 v0, v0, 0x2

    .line 124
    :goto_4
    goto :goto_2

    .line 123
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 126
    :sswitch_6
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 127
    goto :goto_2

    .line 129
    :sswitch_7
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 130
    goto :goto_2

    .line 132
    :sswitch_8
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 133
    goto :goto_2

    .line 135
    :sswitch_9
    invoke-virtual {v1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 136
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v6, :cond_4

    add-int/lit8 v0, v0, 0x2

    .line 137
    :goto_5
    goto :goto_2

    .line 136
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 139
    :sswitch_a
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 140
    goto :goto_2

    .line 142
    :sswitch_b
    const/16 v3, 0x4d

    invoke-virtual {v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 143
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionM0(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x2

    .line 144
    :goto_6
    goto/16 :goto_2

    .line 143
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 146
    :sswitch_c
    invoke-virtual {v1, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 147
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v7, :cond_6

    add-int/lit8 v0, v0, 0x2

    .line 148
    :goto_7
    goto/16 :goto_2

    .line 147
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 151
    :sswitch_d
    invoke-virtual {v1, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    .line 153
    goto/16 :goto_2

    .line 155
    :sswitch_e
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 156
    goto/16 :goto_2

    .line 158
    :sswitch_f
    invoke-virtual {v1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 159
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x51

    if-ne v3, v4, :cond_7

    add-int/lit8 v0, v0, 0x2

    .line 160
    :goto_8
    goto/16 :goto_2

    .line 159
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 162
    :sswitch_10
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 163
    goto/16 :goto_2

    .line 165
    :sswitch_11
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 166
    goto/16 :goto_2

    .line 168
    :sswitch_12
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 169
    goto/16 :goto_2

    .line 171
    :sswitch_13
    invoke-virtual {v1, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 172
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x56

    if-ne v3, v4, :cond_8

    add-int/lit8 v0, v0, 0x2

    .line 173
    :goto_9
    goto/16 :goto_2

    .line 172
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 175
    :sswitch_14
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 176
    goto/16 :goto_2

    .line 178
    :sswitch_15
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 179
    goto/16 :goto_2

    .line 181
    :sswitch_16
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 182
    goto/16 :goto_2

    .line 189
    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getAlternate()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getPrimary()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x42 -> :sswitch_1
        0x43 -> :sswitch_3
        0x44 -> :sswitch_4
        0x45 -> :sswitch_0
        0x46 -> :sswitch_5
        0x47 -> :sswitch_6
        0x48 -> :sswitch_7
        0x49 -> :sswitch_0
        0x4a -> :sswitch_8
        0x4b -> :sswitch_9
        0x4c -> :sswitch_a
        0x4d -> :sswitch_b
        0x4e -> :sswitch_c
        0x4f -> :sswitch_0
        0x50 -> :sswitch_e
        0x51 -> :sswitch_f
        0x52 -> :sswitch_10
        0x53 -> :sswitch_11
        0x54 -> :sswitch_12
        0x55 -> :sswitch_0
        0x56 -> :sswitch_13
        0x57 -> :sswitch_14
        0x58 -> :sswitch_15
        0x59 -> :sswitch_0
        0x5a -> :sswitch_16
        0xc7 -> :sswitch_2
        0xd1 -> :sswitch_d
    .end sparse-switch
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 202
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "DoubleMetaphone encode parameter is not of type String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;
    .param p3, "alternate"    # Z

    .prologue
    .line 244
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .param p1, "maxCodeLen"    # I

    .prologue
    .line 260
    iput p1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    .line 261
    return-void
.end method
