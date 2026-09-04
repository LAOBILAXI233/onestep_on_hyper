.class public Lcom/smartisan/weather/lib/bean/SinaCity;
.super Ljava/lang/Object;
.source "SinaCity.java"


.field public cityChild:Ljava/lang/String;

.field public cityId:Ljava/lang/String;

.field public cityNameAB:Ljava/lang/String;

.field public cityParent:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public id:I

.field public isAdd:Z

.field public keyName:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public otherData:Ljava/lang/String;

.field public province:Ljava/lang/String;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cityId"    # Ljava/lang/String;
    .param p2, "cityChild"    # Ljava/lang/String;
    .param p3, "cityParent"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityId:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityChild:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityParent:Ljava/lang/String;

    .line 28
    return-void
.end method
