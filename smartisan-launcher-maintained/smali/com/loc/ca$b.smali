.class public Lcom/loc/ca$b;
.super Ljava/lang/Object;
.source "Adjacent.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


.field protected static final a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/loc/ca$b;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "even"

    const-string v2, "bc01fg45238967deuvhjyznpkmstqrwx"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "odd"

    const-string v2, "p0r21436x8zb9dcf5h7kjnmqesgutwvy"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "even"

    const-string v3, "238967debc01fg45kmstqrwxuvhjyznp"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "odd"

    const-string v3, "14365h7k9dcfesgujnmqp0r2twvyx8zb"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const-string v3, "even"

    const-string v4, "p0r21436x8zb9dcf5h7kjnmqesgutwvy"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "odd"

    const-string v4, "bc01fg45238967deuvhjyznpkmstqrwx"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    const-string v4, "even"

    const-string v5, "14365h7k9dcfesgujnmqp0r2twvyx8zb"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "odd"

    const-string v5, "238967debc01fg45kmstqrwxuvhjyznp"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/loc/ca$b;->a:Ljava/util/Hashtable;

    const-string v5, "top"

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/ca$b;->a:Ljava/util/Hashtable;

    const-string v4, "btm"

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/ca$b;->a:Ljava/util/Hashtable;

    const-string v1, "right"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/loc/ca$b;->a:Ljava/util/Hashtable;

    const-string v1, "left"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
