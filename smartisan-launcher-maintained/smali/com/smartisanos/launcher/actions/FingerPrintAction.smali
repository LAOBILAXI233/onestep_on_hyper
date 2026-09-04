.class public Lcom/smartisanos/launcher/actions/FingerPrintAction;
.super Ljava/lang/Object;
.source "FingerPrintAction.java"


.field private static final COMPONENT_NAME:Ljava/lang/String; = "com.smartisan.authorizer.AuthorizerActivity"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "smartisan.authorizer"

.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/smartisanos/launcher/actions/FingerPrintAction;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/FingerPrintAction;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasEnrolledFingerprints(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 43
    .local v2, "has":Z
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    .line 44
    .local v1, "fpmc":Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    invoke-virtual {v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 48
    .end local v1    # "fpmc":Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    :goto_0
    return v2

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isHardwareDetected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, "detected":Z
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v2

    .line 33
    .local v2, "fpmc":Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    invoke-virtual {v2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 37
    .end local v2    # "fpmc":Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    :goto_0
    return v0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSdkVersionSupport()Z
    .locals 2

    .prologue
    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showFingerPrintVerifyUI(Landroid/app/Activity;I)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "actionCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 55
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->USE_FINGER_PRINT:Z

    if-nez v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/actions/FingerPrintAction;->isSdkVersionSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/smartisanos/launcher/actions/FingerPrintAction;->verifyWithFingerPrint(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    sget-object v1, Lcom/smartisanos/launcher/actions/FingerPrintAction;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "use finger print"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "smartisan.authorizer"

    const-string v2, "com.smartisan.authorizer.AuthorizerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static verifyWithFingerPrint(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/smartisanos/launcher/actions/FingerPrintAction;->isHardwareDetected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/smartisanos/launcher/actions/FingerPrintAction;->hasEnrolledFingerprints(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 21
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
