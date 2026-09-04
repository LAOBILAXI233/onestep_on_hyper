.class public Lcom/loc/ch$a;
.super Ljava/lang/Object;
.source "BinaryRandomAccessFile.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


.field public a:Z

.field public b:Z


.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/loc/ch$a;->a:Z

    iput-boolean v0, p0, Lcom/loc/ch$a;->b:Z

    return-void
.end method
