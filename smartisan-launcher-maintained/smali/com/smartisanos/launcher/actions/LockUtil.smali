.class public Lcom/smartisanos/launcher/actions/LockUtil;
.super Ljava/lang/Object;
.source "LockUtil.java"


.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


.field private static final APP_LOCK_ENCRYPT_PREFIX:Ljava/lang/String; = "app_lock_encrypt_prefix"

.field public static final ASCII:Ljava/nio/charset/Charset;

.field private static final ENCODE_MD5:Ljava/lang/String; = "MD5"

.field private static final ENCODE_SHA:Ljava/lang/String; = "SHA-1"

.field private static final LAUNCHER_APP_LOCK_KEY:Ljava/lang/String; = "launcher_app_lock_key"

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static encryptedKey:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/LockUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 22
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/LockUtil;->ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2hex([B)Ljava/lang/String;
    .locals 4
    .param p0, "byteArray"    # [B

    .prologue
    .line 111
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v1, "md5StrBuff":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 113
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 114
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 120
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static checkPassword(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Lcom/smartisanos/launcher/actions/LockUtil;->encryptLauncherAppLockPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/smartisanos/launcher/actions/LockUtil;->getEncryptedPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B
    .locals 3
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 33
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 35
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 100
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 102
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 103
    .local v2, "res":[B
    invoke-static {v2}, Lcom/smartisanos/launcher/actions/LockUtil;->byte2hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 106
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "res":[B
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 104
    .restart local p0    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private static encryptAppLockKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/actions/LockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptLauncherAppLockPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, ""

    .line 93
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_lock_encrypt_prefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/actions/LockUtil;->getSmallHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MD5"

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/actions/LockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEncryptedPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {}, Lcom/smartisanos/launcher/actions/LockUtil;->getLauncherAppLockKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherAppLockKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/smartisanos/launcher/actions/LockUtil;->encryptedKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    const-string v0, "launcher_app_lock_key"

    invoke-static {v0}, Lcom/smartisanos/launcher/actions/LockUtil;->encryptAppLockKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/LockUtil;->encryptedKey:Ljava/lang/String;

    .line 82
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/actions/LockUtil;->encryptedKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getSmallHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 53
    .local v4, "sha":Ljava/security/MessageDigest;
    invoke-static {p0}, Lcom/smartisanos/launcher/actions/LockUtil;->toUtf8(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 54
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 55
    .local v2, "r":[B
    invoke-static {v2}, Lcom/smartisanos/launcher/actions/LockUtil;->getSmallHashFromSha1([B)I

    move-result v0

    .line 56
    .local v0, "hash":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 57
    .end local v0    # "hash":I
    .end local v2    # "r":[B
    .end local v4    # "sha":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "impossible":Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getSmallHashFromSha1([B)I
    .locals 3
    .param p0, "sha1"    # [B

    .prologue
    .line 128
    const/16 v1, 0x13

    aget-byte v1, p0, v1

    and-int/lit8 v0, v1, 0xf

    .line 129
    .local v0, "offset":I
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public static isLocked(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/smartisanos/launcher/actions/LockUtil;->getEncryptedPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toUtf8(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lcom/smartisanos/launcher/actions/LockUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/actions/LockUtil;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
