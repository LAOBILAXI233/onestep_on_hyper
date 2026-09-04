.class public interface abstract Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;
.super Ljava/lang/Object;
.source "CustomHttpRequest.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadProgress"
.end annotation


.field public static final DEFAULT:Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress$1;

    invoke-direct {v0}, Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress$1;-><init>()V

    sput-object v0, Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;->DEFAULT:Lcom/smartisanos/home/net/CustomHttpRequest$UploadProgress;

    return-void
.end method


.method public abstract onUpload(JJ)V
.end method
