.class Lcom/tendcloud/tenddata/bh;
.super Ljava/lang/Object;

.implements Ljava/lang/reflect/InvocationHandler;


.field final synthetic a:Lcom/tendcloud/tenddata/s;


.method constructor <init>(Lcom/tendcloud/tenddata/s;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/bh;->a:Lcom/tendcloud/tenddata/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceiveLocation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p3, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p3, v0

    sput-object v0, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const-string v0, "com.baidu.location.LocationClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "stop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/s;->j:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
