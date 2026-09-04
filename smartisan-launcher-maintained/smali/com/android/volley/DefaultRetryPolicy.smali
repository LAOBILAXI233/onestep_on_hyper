.class public Lcom/android/volley/DefaultRetryPolicy;
.super Ljava/lang/Object;
.source "DefaultRetryPolicy.java"

.implements Lcom/android/volley/RetryPolicy;


.field public static final DEFAULT_BACKOFF_MULT:F = 1.0f

.field public static final DEFAULT_MAX_RETRIES:I = 0x1

.field public static final DEFAULT_TIMEOUT_MS:I = 0x9c4


.field private final mBackoffMultiplier:F

.field private mCurrentRetryCount:I

.field private mCurrentTimeoutMs:I

.field private final mMaxNumRetries:I


.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 49
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0
    .param p1, "initialTimeoutMs"    # I
    .param p2, "maxNumRetries"    # I
    .param p3, "backoffMultiplier"    # F

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    .line 59
    iput p2, p0, Lcom/android/volley/DefaultRetryPolicy;->mMaxNumRetries:I

    .line 60
    iput p3, p0, Lcom/android/volley/DefaultRetryPolicy;->mBackoffMultiplier:F

    .line 61
    return-void
.end method


.method public getCurrentRetryCount()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentRetryCount:I

    return v0
.end method

.method public getCurrentTimeout()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    return v0
.end method

.method protected hasAttemptRemaining()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentRetryCount:I

    iget v1, p0, Lcom/android/volley/DefaultRetryPolicy;->mMaxNumRetries:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retry(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .prologue
    .line 85
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentRetryCount:I

    .line 86
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/volley/DefaultRetryPolicy;->mBackoffMultiplier:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    .line 87
    invoke-virtual {p0}, Lcom/android/volley/DefaultRetryPolicy;->hasAttemptRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    throw p1

    .line 90
    :cond_0
    return-void
.end method
