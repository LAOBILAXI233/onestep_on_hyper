.class Lcom/loc/cq$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Parser.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


.field public a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field final synthetic b:Lcom/loc/cq;

.field private c:Ljava/lang/String;


.method private constructor <init>(Lcom/loc/cq;)V
    .locals 1

    iput-object p1, p0, Lcom/loc/cq$a;->b:Lcom/loc/cq;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    iput-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/cq;Lcom/loc/cr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/cq$a;-><init>(Lcom/loc/cq;)V

    return-void
.end method


.method public characters([CII)V
    .locals 1

    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    const-string v0, "retype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "rdesc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "adcode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "citycode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "radius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "parser"

    const-string v2, "endElement3"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const v1, 0x45733000    # 3891.0f

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(F)V

    goto :goto_0

    :cond_5
    const-string v0, "cenx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(D)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "parser"

    const-string v2, "endElement2"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(D)V

    goto :goto_0

    :cond_6
    const-string v0, "ceny"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_2
    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(D)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "parser"

    const-string v2, "endElement1"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(D)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "desc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "country"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "province"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "city"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "district"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "road"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "street"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "number"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "poiname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "BIZ"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(Lorg/json/JSONObject;)V

    :cond_11
    :try_start_3
    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "BIZ"

    iget-object v2, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v1, "parser"

    const-string v2, "endElement"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "cens"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v0, "pid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const-string v0, "flr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const-string v0, "coord"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/loc/e;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    sput-object v0, Lcom/loc/e;->g:Ljava/lang/String;

    :cond_16
    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const-string v0, "mcell"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const-string v0, "gkeyloc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gkeygeo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "apiTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(J)V

    goto/16 :goto_0

    :cond_19
    const-string v0, "aoiname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cq$a;->a:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cq$a;->c:Ljava/lang/String;

    return-void
.end method
