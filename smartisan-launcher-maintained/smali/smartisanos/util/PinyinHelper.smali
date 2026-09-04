.class public Lsmartisanos/util/PinyinHelper;
.super Ljava/lang/Object;
.source "PinyinHelper.java"


.field private static mFamilyNamePolyphonyMap:Ljava/util/HashMap;
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
.end field

.field private static mPolyphonyMap:Ljava/util/HashMap;
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
.end field


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lsmartisanos/util/PinyinHelper$1;

    invoke-direct {v0}, Lsmartisanos/util/PinyinHelper$1;-><init>()V

    sput-object v0, Lsmartisanos/util/PinyinHelper;->mPolyphonyMap:Ljava/util/HashMap;

    .line 529
    new-instance v0, Lsmartisanos/util/PinyinHelper$2;

    invoke-direct {v0}, Lsmartisanos/util/PinyinHelper$2;-><init>()V

    sput-object v0, Lsmartisanos/util/PinyinHelper;->mFamilyNamePolyphonyMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPolyphony(C)[Ljava/lang/String;
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 62
    sget-object v0, Lsmartisanos/util/PinyinHelper;->mPolyphonyMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lsmartisanos/util/PinyinHelper;->mPolyphonyMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPolyphonyFamilyName(C)[Ljava/lang/String;
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 41
    sget-object v0, Lsmartisanos/util/PinyinHelper;->mFamilyNamePolyphonyMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lsmartisanos/util/PinyinHelper;->mFamilyNamePolyphonyMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPolyphony(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 52
    sget-object v0, Lsmartisanos/util/PinyinHelper;->mPolyphonyMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPolyphonyFamilyName(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 31
    sget-object v0, Lsmartisanos/util/PinyinHelper;->mFamilyNamePolyphonyMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
