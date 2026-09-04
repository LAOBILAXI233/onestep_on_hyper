.class final Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/a$1;
.super Ljava/lang/Object;
.source "ApiCollectInfo.java"

.implements Ltqt/weibo/cn/tqtsdk/b/b/e;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic a:[Ljava/lang/Object;


.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/a$1;->a:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V
    .locals 2

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/a$1;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
