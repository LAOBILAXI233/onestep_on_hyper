.class public Lcom/android/volley/AuthFailureError;
.super Lcom/android/volley/VolleyError;
.source "AuthFailureError.java"


.field private mResolutionIntent:Landroid/content/Intent;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/NetworkResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Exception;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method


.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "User needs to (re)enter credentials."

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResolutionIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    return-object v0
.end method
