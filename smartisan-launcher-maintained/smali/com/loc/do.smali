.class final Lcom/loc/do;
.super Ljava/lang/Object;

.implements Landroid/location/GpsStatus$NmeaListener;


.field private synthetic a:Lcom/loc/dl;


.method private constructor <init>(Lcom/loc/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/do;->a:Lcom/loc/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/dl;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/do;-><init>(Lcom/loc/dl;)V

    return-void
.end method


.method public final onNmeaReceived(JLjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/loc/do;->a:Lcom/loc/dl;

    invoke-static {v0, p1, p2}, Lcom/loc/dl;->c(Lcom/loc/dl;J)J

    iget-object v0, p0, Lcom/loc/do;->a:Lcom/loc/dl;

    invoke-static {v0, p3}, Lcom/loc/dl;->a(Lcom/loc/dl;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
