.class public Lcom/android/volley/toolbox/AndroidAuthenticator;
.super Ljava/lang/Object;
.source "AndroidAuthenticator.java"

.implements Lcom/android/volley/toolbox/Authenticator;


.field private final mAccount:Landroid/accounts/Account;

.field private final mAuthTokenType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mNotifyAuthFailure:Z


.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "notifyAuthFailure"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    .line 59
    iput-object p3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAuthTokenType:Ljava/lang/String;

    .line 60
    iput-boolean p4, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mNotifyAuthFailure:Z

    .line 61
    return-void
.end method


.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 72
    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 73
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    .line 74
    iget-object v2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAuthTokenType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mNotifyAuthFailure:Z

    move-object v5, v4

    .line 73
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    .line 77
    .local v8, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v10, "result":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 82
    .local v6, "authToken":Ljava/lang/String;
    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    const-string v1, "intent"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "intent"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 85
    .local v9, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/volley/AuthFailureError;

    invoke-direct {v1, v9}, Lcom/android/volley/AuthFailureError;-><init>(Landroid/content/Intent;)V

    throw v1

    .line 78
    .end local v6    # "authToken":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v7

    .line 79
    .local v7, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/volley/AuthFailureError;

    const-string v2, "Error while retrieving auth token"

    invoke-direct {v1, v2, v7}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 87
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "authToken":Ljava/lang/String;
    .restart local v10    # "result":Landroid/os/Bundle;
    :cond_0
    const-string v1, "authtoken"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    :cond_1
    if-nez v6, :cond_2

    .line 90
    new-instance v1, Lcom/android/volley/AuthFailureError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got null auth token for type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAuthTokenType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_2
    return-object v6
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method
