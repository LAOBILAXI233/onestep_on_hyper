.class public final Lcom/loc/ed;
.super Ljava/lang/Object;


.field a:Ljava/util/List;

.field b:Landroid/location/Location;


.method protected constructor <init>(Lcom/loc/dz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/ed;->a:Ljava/util/List;

    return-void
.end method
