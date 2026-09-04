.class public Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;
.super Ljava/lang/Object;
.source "DataDumpReceiver.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/receiver/DataDumpReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;",
            ">;"
        }
    .end annotation
.end field

.field public info:Ljava/lang/String;

.field public prefix:Ljava/lang/String;


.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;->children:Ljava/util/List;

    .line 158
    iput-object v1, p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;->info:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;->prefix:Ljava/lang/String;

    .line 163
    return-void
.end method


.method public addNode(Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;)V
    .locals 1
    .param p1, "n"    # Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method
