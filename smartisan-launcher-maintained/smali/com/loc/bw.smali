.class public Lcom/loc/bw;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bw$a;
    }
.end annotation


.field a:Lcom/loc/bw$a;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Lcom/loc/k;

.field private f:Landroid/content/ServiceConnection;

.field private g:Landroid/content/ServiceConnection;

.field private h:Landroid/content/Intent;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/loc/bw;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bw;->c:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bw;->d:Z

    iput-object v1, p0, Lcom/loc/bw;->e:Lcom/loc/k;

    iput-object v1, p0, Lcom/loc/bw;->f:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/loc/bw;->g:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/loc/bw;->h:Landroid/content/Intent;

    const-string v0, "com.autonavi.minimap"

    iput-object v0, p0, Lcom/loc/bw;->i:Ljava/lang/String;

    const-string v0, "com.amap.api.service.AMapService"

    iput-object v0, p0, Lcom/loc/bw;->j:Ljava/lang/String;

    const-string v0, "com.autonavi.minimap.LBSConnectionService"

    iput-object v0, p0, Lcom/loc/bw;->k:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/loc/bw;->l:Z

    iput-boolean v2, p0, Lcom/loc/bw;->m:Z

    iput-object v1, p0, Lcom/loc/bw;->a:Lcom/loc/bw$a;

    const-string v0, "invaid type"

    iput-object v0, p0, Lcom/loc/bw;->n:Ljava/lang/String;

    const-string v0, "empty appkey"

    iput-object v0, p0, Lcom/loc/bw;->o:Ljava/lang/String;

    const-string v0, "refused"

    iput-object v0, p0, Lcom/loc/bw;->p:Ljava/lang/String;

    const-string v0, "failed"

    iput-object v0, p0, Lcom/loc/bw;->q:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/bw;->c:Landroid/content/Context;

    :try_start_0
    invoke-static {p1}, Lcom/loc/m;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"

    invoke-static {v0, v1}, Lcom/loc/cg;->a([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/r;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bw;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ConnectionServiceManager"

    const-string v2, "ConnectionServiceManager"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/r;->b(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    const-string v2, "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"

    invoke-static {v0, v2}, Lcom/loc/cg;->b([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/r;->b(Ljava/lang/String;)[B

    move-result-object v2

    :try_start_1
    invoke-static {v0, v2}, Lcom/loc/cg;->a([B[B)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    if-eqz v2, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "error"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "error"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/bw;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loc/bw;->d:Z

    :cond_2
    iget-object v2, p0, Lcom/loc/bw;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loc/bw;->d:Z

    :cond_3
    iget-object v2, p0, Lcom/loc/bw;->p:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loc/bw;->d:Z

    :cond_4
    iget-object v2, p0, Lcom/loc/bw;->q:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ConnectionServiceManager"

    const-string v3, "parseData part"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    :try_start_2
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>(Lorg/json/JSONObject;)V

    const-string v2, "lbs"

    invoke-virtual {v0, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(Ljava/lang/String;)V

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    const-string v2, "WGS84"

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/loc/e;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/loc/bw;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Lcom/loc/j;->a(Landroid/content/Context;DD)Lcom/amap/api/location/DPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(D)V

    invoke-virtual {v2}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(D)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-class v2, Lcom/loc/bw;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parseData"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/loc/bw;Lcom/loc/k;)Lcom/loc/k;
    .locals 0

    iput-object p1, p0, Lcom/loc/bw;->e:Lcom/loc/k;

    return-object p1
.end method


.method public a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/loc/bw;->c()V

    iput-object v0, p0, Lcom/loc/bw;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/loc/bw;->e:Lcom/loc/k;

    iput-object v0, p0, Lcom/loc/bw;->f:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/loc/bw;->g:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/loc/bw;->a:Lcom/loc/bw$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bw;->a:Lcom/loc/bw$a;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/loc/bw$a;->a(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bw;->d:Z

    iput-boolean v2, p0, Lcom/loc/bw;->l:Z

    iput-boolean v2, p0, Lcom/loc/bw;->m:Z

    return-void
.end method

.method public a(Lcom/loc/bw$a;)V
    .locals 3

    :try_start_0
    iput-object p1, p0, Lcom/loc/bw;->a:Lcom/loc/bw$a;

    iget-object v0, p0, Lcom/loc/bw;->f:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/bw$1;

    invoke-direct {v0, p0, p1}, Lcom/loc/bw$1;-><init>(Lcom/loc/bw;Lcom/loc/bw$a;)V

    iput-object v0, p0, Lcom/loc/bw;->f:Landroid/content/ServiceConnection;

    :cond_0
    iget-object v0, p0, Lcom/loc/bw;->g:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    new-instance v0, Lcom/loc/bw$2;

    invoke-direct {v0, p0}, Lcom/loc/bw$2;-><init>(Lcom/loc/bw;)V

    iput-object v0, p0, Lcom/loc/bw;->g:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ConnectionServiceManager"

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/loc/ct;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/loc/bw;->h:Landroid/content/Intent;

    const-string v3, "appkey"

    iget-object v4, p0, Lcom/loc/bw;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/loc/bw;->h:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/loc/bw;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bw;->j:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/loc/bw;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/bw;->h:Landroid/content/Intent;

    iget-object v4, p0, Lcom/loc/bw;->f:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/loc/bw;->l:Z

    :cond_0
    invoke-static {}, Lcom/loc/ct;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "appkey"

    iget-object v4, p0, Lcom/loc/bw;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/loc/bw;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bw;->k:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/loc/bw;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/loc/bw;->g:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/loc/bw;->m:Z

    :cond_1
    iget-boolean v2, p0, Lcom/loc/bw;->l:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/loc/bw;->m:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ConnectionServiceManager"

    const-string v3, "bindService"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method c()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/bw;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bw;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bw;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-boolean v0, p0, Lcom/loc/bw;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bw;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bw;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bw;->e:Lcom/loc/k;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ConnectionServiceManager"

    const-string v2, "unbindService"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ConnectionServiceManager"

    const-string v2, "unbindService"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method d()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/loc/bw;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/loc/bw;->l:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    const-string v3, "corse"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appkey"

    iget-object v3, p0, Lcom/loc/bw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/bw;->e:Lcom/loc/k;

    invoke-interface {v2, v1}, Lcom/loc/k;->a(Landroid/os/Bundle;)I

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/loc/bw;->a(Landroid/os/Bundle;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ConnectionServiceManager"

    const-string v3, "sendCommand"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "ConnectionServiceManager"

    const-string v3, "sendCommand"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
