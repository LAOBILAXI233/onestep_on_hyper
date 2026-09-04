.class Lcom/tendcloud/tenddata/s$b;
.super Ljava/lang/Object;

.implements Ljava/lang/Thread$UncaughtExceptionHandler;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;


.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/s$b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    sget-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/tendcloud/tenddata/s;->a(Ljava/lang/Throwable;Z)V

    const-string v0, "TDLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UncaughtException in Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/s$b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/s$b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
