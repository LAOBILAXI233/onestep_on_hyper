.class public Lcom/meizu/flyme/reflect/WallpaperManagerProxy;
.super Lcom/meizu/flyme/reflect/Proxy;
.source "WallpaperManagerProxy.java"


.field private static final TAG:Ljava/lang/String; = "WallpaperManagerProxy"

.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sSetLockWallpaper:Ljava/lang/reflect/Method;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Landroid/app/WallpaperManager;

    sput-object v0, Lcom/meizu/flyme/reflect/WallpaperManagerProxy;->sClass:Ljava/lang/Class;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/meizu/flyme/reflect/Proxy;-><init>()V

    return-void
.end method

.method public static setHomeWallpaper(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "result":Z
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 60
    .local v3, "wm":Landroid/app/WallpaperManager;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v3, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    const/4 v2, 0x1

    .line 68
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return v2

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setLockWallpaper(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "result":Z
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 34
    .local v3, "wm":Landroid/app/WallpaperManager;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "is":Ljava/io/InputStream;
    sget-object v4, Lcom/meizu/flyme/reflect/WallpaperManagerProxy;->sSetLockWallpaper:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/meizu/flyme/reflect/WallpaperManagerProxy;->sClass:Ljava/lang/Class;

    .line 36
    const-string v6, "setStreamToLockWallpaper"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/io/InputStream;

    aput-object v9, v7, v8

    .line 35
    invoke-static {v4, v5, v6, v7}, Lcom/meizu/flyme/reflect/WallpaperManagerProxy;->getMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/flyme/reflect/WallpaperManagerProxy;->sSetLockWallpaper:Ljava/lang/reflect/Method;

    .line 37
    if-eqz v3, :cond_0

    .line 38
    sget-object v4, Lcom/meizu/flyme/reflect/WallpaperManagerProxy;->sSetLockWallpaper:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v3, v5}, Lcom/meizu/flyme/reflect/WallpaperManagerProxy;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 43
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v2

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
