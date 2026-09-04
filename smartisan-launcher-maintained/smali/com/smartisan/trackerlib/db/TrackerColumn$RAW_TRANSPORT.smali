.class public final Lcom/smartisan/trackerlib/db/TrackerColumn$RAW_TRANSPORT;
.super Ljava/lang/Object;
.source "TrackerColumn.java"

.implements Landroid/provider/BaseColumns;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/trackerlib/db/TrackerColumn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RAW_TRANSPORT"
.end annotation


.field public static final EVENT_DATA:Ljava/lang/String; = "eventdata"

.field public static final EVENT_ID:Ljava/lang/String; = "eventid"

.field public static final RAW_TRANSPORT_TABLE:Ljava/lang/String; = "actual_raw_transport"

.field public static final TIME_STAMP:Ljava/lang/String; = "time_stamp"

.field public static final UPLOAD_TIME:Ljava/lang/String; = "upload_time"

.field public static final WIFI_ONLY:Ljava/lang/String; = "wifionly"

.field public static final _ID:Ljava/lang/String; = "_id"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
