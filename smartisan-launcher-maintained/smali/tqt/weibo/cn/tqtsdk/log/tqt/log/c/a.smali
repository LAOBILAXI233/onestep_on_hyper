.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;
.super Ljava/lang/Object;
.source "LogUtils.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;
    }
.end annotation


.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Z


.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->a:Z

    .line 33
    sput-boolean v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->b:Z

    .line 35
    sput-boolean v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->c:Z

    .line 36
    sput-boolean v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->d:Z

    .line 39
    sput-boolean v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->e:Z

    .line 40
    sput-boolean v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->f:Z

    .line 43
    sput-boolean v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->g:Z

    .line 55
    sput-object v2, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->h:Ljava/lang/String;

    .line 56
    sput-object v2, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->i:Ljava/lang/String;

    .line 115
    const-string v0, "TQTTimingLogger"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->j:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 69
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltqt/weibo/cn/tqtsdk/kit/b/b;->a()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crash_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->i:Ljava/lang/String;

    .line 75
    :cond_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    const/16 v0, 0x10

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/q;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {p0, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v2, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;

    invoke-direct {v2, v1, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
