.class public final Lcom/smartisanos/launcher/view/Cell$SaveData;
.super Ljava/lang/Object;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SaveData"
.end annotation


.field public oldLocation:Lcom/smartisanos/smengine/math/Vector3f;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/Cell;


.method public constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$SaveData;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
