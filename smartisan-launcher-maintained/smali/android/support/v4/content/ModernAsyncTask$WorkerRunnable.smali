.class abstract Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"

.implements Ljava/util/concurrent/Callable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "WorkerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


.field mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


.method constructor <init>()V
    .locals 0

    .prologue
    .line 505
    .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;, "Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    return-void
.end method
