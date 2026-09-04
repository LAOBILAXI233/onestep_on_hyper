.class public interface abstract Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;
.super Ljava/lang/Object;
.source "IUserInfoListener.java"


.method public abstract onUserInfoListRetrieved(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/auth/sso/UserInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUserInfoRetrieved(Lcom/sina/weibo/sdk/auth/sso/UserInfo;)V
.end method

.method public abstract onUserInfoRetrievedFailed()V
.end method
