.class public interface abstract Laurelienribon/tweenengine/TweenPaths;
.super Ljava/lang/Object;
.source "TweenPaths.java"


.field public static final catmullRom:Laurelienribon/tweenengine/paths/CatmullRom;

.field public static final linear:Laurelienribon/tweenengine/paths/Linear;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Laurelienribon/tweenengine/paths/Linear;

    invoke-direct {v0}, Laurelienribon/tweenengine/paths/Linear;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/TweenPaths;->linear:Laurelienribon/tweenengine/paths/Linear;

    .line 13
    new-instance v0, Laurelienribon/tweenengine/paths/CatmullRom;

    invoke-direct {v0}, Laurelienribon/tweenengine/paths/CatmullRom;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/TweenPaths;->catmullRom:Laurelienribon/tweenengine/paths/CatmullRom;

    return-void
.end method
