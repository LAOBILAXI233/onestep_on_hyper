.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;
.super Ljava/lang/Object;
.source "CrashCollectorManagerImpl.java"

.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.implements Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ICrashCollectorManager;


.field private static a:Ljava/lang/Thread$UncaughtExceptionHandler;


.field private b:Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 39
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->d:Ljava/util/ArrayList;

    .line 42
    iput-object p0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->b:Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;

    .line 43
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->c:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 149
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/kit/b/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    :try_start_0
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->c:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 155
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    if-nez v1, :cond_0

    .line 157
    const-string v1, "\n"

    .line 161
    :cond_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 163
    sget-boolean v3, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->b:Z

    if-eqz v3, :cond_1

    .line 165
    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->a(Ljava/lang/String;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 167
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 168
    invoke-virtual {v3}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 172
    :goto_0
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 174
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 175
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 180
    :goto_1
    return-object v0

    .line 170
    :cond_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 180
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 212
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 215
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_0
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->c:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0, p1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->b(Ljava/lang/String;)Z

    .line 185
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->c:Landroid/content/Context;

    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/kit/b/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, "md5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/b/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "#AndroidRuntime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, "#activity_stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, "#end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


.method public a()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public register(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 86
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startCollector()Z
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public stopCollector()Z
    .locals 1

    .prologue
    .line 68
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 120
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 121
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 122
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 123
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 124
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 127
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 128
    :goto_0
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 135
    sget-boolean v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->c:Z

    if-eqz v1, :cond_1

    .line 136
    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    :cond_1
    sget-boolean v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->d:Z

    if-eqz v1, :cond_2

    .line 140
    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_2
    :goto_1
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 146
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public unregister(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 106
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
