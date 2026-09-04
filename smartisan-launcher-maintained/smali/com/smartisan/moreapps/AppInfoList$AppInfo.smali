.class public Lcom/smartisan/moreapps/AppInfoList$AppInfo;
.super Ljava/lang/Object;
.source "AppInfoList.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/moreapps/AppInfoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


.field public mAppDes:Ljava/lang/String;

.field public mAppName:Ljava/lang/String;

.field public mImage:Landroid/graphics/Bitmap;

.field public mIsActive:Z

.field public mPackageName:Ljava/lang/String;

.field public mUpdateInfo:Ljava/lang/String;


.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "isActive"    # Z
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "appDes"    # Ljava/lang/String;
    .param p5, "updateInfo"    # Ljava/lang/String;
    .param p6, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mIsActive:Z

    .line 215
    iput-boolean p1, p0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mIsActive:Z

    .line 216
    iput-object p3, p0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mAppName:Ljava/lang/String;

    .line 217
    iput-object p2, p0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mPackageName:Ljava/lang/String;

    .line 218
    iput-object p4, p0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mAppDes:Ljava/lang/String;

    .line 219
    iput-object p5, p0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mUpdateInfo:Ljava/lang/String;

    .line 220
    iput-object p6, p0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mImage:Landroid/graphics/Bitmap;

    .line 221
    return-void
.end method
