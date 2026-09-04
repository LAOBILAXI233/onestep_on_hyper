.class final Lcom/tendcloud/tenddata/o;
.super Ljava/lang/Object;

.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2

    invoke-static {}, Lcom/tendcloud/tenddata/y;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tendcloud/tenddata/y;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/y;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/y;->b()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    return-void
.end method
