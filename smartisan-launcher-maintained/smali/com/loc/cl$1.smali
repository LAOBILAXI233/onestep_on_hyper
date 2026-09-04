.class Lcom/loc/cl$1;
.super Ljava/lang/Object;
.source "HeatMap.java"

.implements Ljava/util/Comparator;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/cl;->b()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/loc/ck;",
        ">;"
    }
.end annotation


.field final synthetic a:Lcom/loc/cl;


.method constructor <init>(Lcom/loc/cl;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/cl$1;->a:Lcom/loc/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public a(Lcom/loc/ck;Lcom/loc/ck;)I
    .locals 2

    invoke-virtual {p2}, Lcom/loc/ck;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/loc/ck;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/loc/ck;

    check-cast p2, Lcom/loc/ck;

    invoke-virtual {p0, p1, p2}, Lcom/loc/cl$1;->a(Lcom/loc/ck;Lcom/loc/ck;)I

    move-result v0

    return v0
.end method
