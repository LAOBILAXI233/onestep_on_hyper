.class public final Lcom/loc/ea;
.super Ljava/lang/Object;


.field a:Lcom/loc/eb;

.field b:Landroid/location/Location;


.method protected constructor <init>(Lcom/loc/dz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/loc/eb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loc/eb;-><init>(Landroid/telephony/CellLocation;)V

    iput-object v0, p0, Lcom/loc/ea;->a:Lcom/loc/eb;

    return-void
.end method
