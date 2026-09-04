.class Lcom/android/volley/VolleyLog$MarkerLog$Marker;
.super Ljava/lang/Object;
.source "VolleyLog.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/VolleyLog$MarkerLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Marker"
.end annotation


.field public final name:Ljava/lang/String;

.field public final thread:J

.field public final time:J


.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "thread"    # J
    .param p4, "time"    # J

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->name:Ljava/lang/String;

    .line 116
    iput-wide p2, p0, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->thread:J

    .line 117
    iput-wide p4, p0, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 118
    return-void
.end method
