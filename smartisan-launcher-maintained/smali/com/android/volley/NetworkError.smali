.class public Lcom/android/volley/NetworkError;
.super Lcom/android/volley/VolleyError;
.source "NetworkError.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/NetworkResponse;)V
    .locals 0
    .param p1, "networkResponse"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method
