.class public Lcom/tendcloud/tenddata/y;
.super Ljava/lang/Object;


.field private static final a:Ljava/lang/String; = "STATE_OFF"

.field private static final b:Ljava/lang/String; = "STATE_ON"

.field private static final c:Ljava/lang/String; = "STATE_TURNING_OFF"

.field private static final d:Ljava/lang/String; = "STATE_TURNING_ON"

.field private static final e:Ljava/lang/String; = "UNKNOWN"

.field private static final f:Ljava/lang/String; = "CLASSIC"

.field private static final g:Ljava/lang/String; = "LOW_ENERGY"

.field private static final h:Ljava/lang/String; = "DUAL_MODE"

.field private static final i:Ljava/lang/String; = "UNKNOWN"

.field private static final j:Ljava/lang/String; = "SCAN_MODE_CONNECTABLE"

.field private static final k:Ljava/lang/String; = "SCAN_MODE_CONNECTABLE_DISCOVERABLE"

.field private static final l:Ljava/lang/String; = "UNPAIRED"

.field private static final m:Ljava/lang/String; = "PAIRING"

.field private static final n:Ljava/lang/String; = "PAIRED"

.field private static o:Lorg/json/JSONArray;

.field private static p:Landroid/content/Context;

.field private static q:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/y;->o:Lorg/json/JSONArray;

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/y;->p:Landroid/content/Context;

    new-instance v0, Lcom/tendcloud/tenddata/o;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/o;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/y;->q:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/y;->p:Landroid/content/Context;

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "EXCEPTION_CODE"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "UNPAIRED"

    goto :goto_0

    :pswitch_2
    const-string v0, "PAIRED"

    goto :goto_0

    :pswitch_3
    const-string v0, "PAIRING"

    goto :goto_0

    :pswitch_4
    const-string v0, "CLASSIC"

    goto :goto_0

    :pswitch_5
    const-string v0, "DUAL_MODE"

    goto :goto_0

    :pswitch_6
    const-string v0, "LOW_ENERGY"

    goto :goto_0

    :pswitch_7
    const-string v0, "UNKNOWN"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "EXCEPTION_CODE"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "SCAN_MODE_CONNECTABLE"

    goto :goto_0

    :pswitch_2
    const-string v0, "SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    goto :goto_0

    :pswitch_3
    const-string v0, "UNKNOWN"

    goto :goto_0

    :pswitch_4
    const-string v0, "STATE_OFF"

    goto :goto_0

    :pswitch_5
    const-string v0, "STATE_ON"

    goto :goto_0

    :pswitch_6
    const-string v0, "STATE_TURNING_OFF"

    goto :goto_0

    :pswitch_7
    const-string v0, "STATE_TURNING_ON"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b()Lorg/json/JSONArray;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/y;->o:Lorg/json/JSONArray;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    const-string v1, "address"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/tendcloud/tenddata/an;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "type"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/y;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "bondState"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/y;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/tendcloud/tenddata/an;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_1

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "uuids"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    const-string v1, "error"

    const-string v2, "NO_PERMISSION"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sput-object p0, Lcom/tendcloud/tenddata/y;->p:Landroid/content/Context;

    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/y;->o:Lorg/json/JSONArray;

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/tendcloud/tenddata/an;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/tendcloud/tenddata/y;->q:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/h;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/h;-><init>()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.FOUND"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/tendcloud/tenddata/an;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tendcloud/tenddata/y;->q:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tendcloud/tenddata/y;->q:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/y;->o:Lorg/json/JSONArray;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    :cond_0
    const-string v1, "name"

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "state"

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/y;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "scanMode"

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/y;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "error"

    const-string v2, "DEVICE_INVALID"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v1, "error"

    const-string v2, "EXCEPTION"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v1, "error"

    const-string v2, "NOT_SUPPORT_BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    const-string v1, "error"

    const-string v2, "NO_PERMISSION"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 4

    :try_start_0
    const-string v0, "android.permission.BLUETOOTH"

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "uuids"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "uuids"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
