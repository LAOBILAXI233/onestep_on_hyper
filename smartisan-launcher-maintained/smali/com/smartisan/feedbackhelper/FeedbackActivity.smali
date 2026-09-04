.class public Lcom/smartisan/feedbackhelper/FeedbackActivity;
.super Landroid/app/Activity;
.source "FeedbackActivity.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/feedbackhelper/FeedbackActivity$TouchListenerImpl;
    }
.end annotation


.field public static final APP_NAME:Ljava/lang/String; = "app_name"

.field public static final BACK_TEXT:Ljava/lang/String; = "back_text"

.field public static final CONTENTTYPE:Ljava/lang/String; = "image/*"

.field public static final CUSTOM_THEME:Ljava/lang/String; = "custom"

.field public static final FILE_SELECT_CODE:I = 0x3e8

.field public static final LIGHT_THEME:Ljava/lang/String; = "light"

.field public static final LIST_REPORTS:Ljava/lang/String; = "list_reports"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PROP_RO_PRODUCT_MANUFACTURER:Ljava/lang/String; = "ro.product.manufacturer"

.field public static final PROP_RO_PROJECT_MODEL:Ljava/lang/String; = "ro.product.model"

.field public static final SDK:Ljava/lang/String; = "sdk"

.field public static final SETTING_PKG:Ljava/lang/String; = "com.android.settings"

.field public static final STEP_ONE:I = 0x0

.field public static final STEP_TWO:I = 0x1

.field public static final THEME:Ljava/lang/String; = "theme_style"

.field public static final TITLE_BACK_BTN_BG:Ljava/lang/String; = "title_back_btn_bg"

.field public static final TITLE_BG_RES:Ljava/lang/String; = "title_bg_res"

.field public static final TITLE_OK_BTN_BG:Ljava/lang/String; = "title_ok_btn_bg"

.field public static final TITLE_TEXT_COLOR:Ljava/lang/String; = "title_text_color"

.field public static mSelectIndex:I


.field public currentStep:I

.field protected logPath:Ljava/lang/String;

.field mAppName:Ljava/lang/String;

.field private mAsyncDialog:Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

.field public mDescriptionText:Ljava/lang/String;

.field mEmailString:Ljava/lang/String;

.field public mEmailText:Ljava/lang/String;

.field mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

.field private mFragmentTransaction:Landroid/app/FragmentTransaction;

.field mPackageName:Ljava/lang/String;

.field public mPhoneText:Ljava/lang/String;

.field private mReportSendStateReceiver:Landroid/content/BroadcastReceiver;

.field public mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

.field private mToast:Landroid/widget/Toast;

.field private mattaches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mattachsize:Ljava/lang/StringBuilder;

.field tag:Ljava/lang/String;

.field title:Lcom/smartisan/feedbackhelper/utils/Title;

.field private view_main:Landroid/widget/ScrollView;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    sput v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mSelectIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, "Bug2goMainActivity"

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->tag:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->currentStep:I

    .line 93
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mAppName:Ljava/lang/String;

    .line 94
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mPackageName:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/smartisan/feedbackhelper/FeedbackActivity$1;

    invoke-direct {v0, p0}, Lcom/smartisan/feedbackhelper/FeedbackActivity$1;-><init>(Lcom/smartisan/feedbackhelper/FeedbackActivity;)V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mReportSendStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/feedbackhelper/FeedbackActivity;)Lcom/smartisan/feedbackhelper/utils/AsyncDialog;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/FeedbackActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mAsyncDialog:Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisan/feedbackhelper/FeedbackActivity;)Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/FeedbackActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisan/feedbackhelper/FeedbackActivity;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/FeedbackActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mattachsize:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/smartisan/feedbackhelper/FeedbackActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/FeedbackActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mattaches:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "win"    # Landroid/view/Window;

    .prologue
    .line 631
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v9, v10, :cond_2

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 634
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    .line 636
    .local v8, "x":I
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    .line 637
    const-string v9, "FLAG_TRANSLUCENT_STATUS"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 638
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 642
    :goto_0
    if-eqz v8, :cond_0

    .line 643
    invoke-virtual {p1, v8}, Landroid/view/Window;->addFlags(I)V

    .line 645
    :cond_0
    const-string v9, "Meizu"

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 646
    const/4 v8, 0x0

    .line 648
    :try_start_1
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    .line 649
    const-string v9, "FLAG_TRANSLUCENT_NAVIGATION"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 650
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 654
    :goto_1
    if-eqz v8, :cond_1

    .line 655
    invoke-virtual {p1, v8}, Landroid/view/Window;->addFlags(I)V

    .line 685
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "x":I
    :cond_1
    :goto_2
    return-void

    .line 639
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "x":I
    :catch_0
    move-exception v2

    .line 640
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 651
    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 652
    .restart local v2    # "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 660
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e1":Ljava/lang/Exception;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "x":I
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v5

    .line 661
    .local v5, "libs":[Ljava/lang/String;
    const-string v6, "SYSTEM_UI_FLAG_TRANSPARENT_BACKGROUND"

    .line 662
    .local v6, "reflect":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 663
    array-length v10, v5

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_4

    aget-object v4, v5, v9

    .line 664
    .local v4, "lib":Ljava/lang/String;
    const-string v11, "touchwiz"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "com.htc."

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 665
    :cond_3
    const-string v6, "SYSTEM_UI_FLAG_TRANSPARENT_BACKGROUND"

    .line 673
    .end local v4    # "lib":Ljava/lang/String;
    :cond_4
    :goto_4
    :try_start_2
    const-class v9, Landroid/view/View;

    invoke-virtual {v9, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 674
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_1

    .line 675
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    .line 676
    .local v7, "result":I
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 679
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "result":I
    :catch_2
    move-exception v1

    .line 680
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 667
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "lib":Ljava/lang/String;
    :cond_5
    const-string v11, "com.sonyericsson.navigationbar"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 668
    const-string v6, "SYSTEM_UI_FLAG_TRANSPARENT"

    .line 669
    goto :goto_4

    .line 663
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 559
    const/4 v8, 0x0

    .line 560
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 561
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 564
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 566
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 568
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 571
    if-eqz v8, :cond_0

    .line 572
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 574
    .end local v7    # "column_index":I
    :cond_0
    :goto_0
    return-object v0

    .line 571
    :cond_1
    if-eqz v8, :cond_2

    .line 572
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 574
    goto :goto_0

    .line 571
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 572
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 462
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_1

    move v3, v9

    .line 464
    .local v3, "isKitKat":Z
    :goto_0
    if-eqz v3, :cond_7

    .line 465
    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 468
    invoke-static {p2}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 470
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "docId":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 472
    .local v6, "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 474
    .local v7, "type":Ljava/lang/String;
    const-string v10, "primary"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 475
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 523
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v8

    .end local v3    # "isKitKat":Z
    :cond_1
    move v3, v10

    .line 462
    goto :goto_0

    .line 482
    .restart local v3    # "isKitKat":Z
    :cond_2
    invoke-static {p2}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 485
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "id":Ljava/lang/String;
    const-string v9, "content://downloads/public_downloads"

    .line 487
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 488
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 486
    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 490
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p1, v0, v8, v8}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 493
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "id":Ljava/lang/String;
    :cond_3
    invoke-static {p2}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 495
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .restart local v1    # "docId":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 497
    .restart local v6    # "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 499
    .restart local v7    # "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 500
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const-string v8, "image"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 501
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 508
    :cond_4
    :goto_2
    const-string v4, "_id=?"

    .line 509
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    aget-object v8, v6, v9

    aput-object v8, v5, v10

    .line 511
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v8, "_id=?"

    invoke-static {p1, v0, v8, v5}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 502
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_5
    const-string v8, "video"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 503
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 504
    :cond_6
    const-string v8, "audio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 505
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 516
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_7
    const-string v9, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 517
    invoke-static {p1, p2, v8, v8}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 520
    :cond_8
    const-string v9, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 521
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1
.end method

.method public static getProductInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 592
    const-string v1, "ro.product.manufacturer"

    invoke-static {v1}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "info":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 594
    const-string v1, "ro.product.model"

    invoke-static {v1}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    const-string v0, ""

    .line 599
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 578
    const/4 v3, 0x0

    .line 580
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 581
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 582
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 583
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 542
    const-string v0, "com.android.providers.downloads.documents"

    .line 543
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 532
    const-string v0, "com.android.externalstorage.documents"

    .line 533
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 552
    const-string v0, "com.android.providers.media.documents"

    .line 553
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isXiaoMiDevice()Z
    .locals 2

    .prologue
    .line 603
    invoke-static {}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "info":Ljava/lang/String;
    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    :cond_0
    const/4 v1, 0x1

    .line 607
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static makeLogDir(Ljava/lang/String;J)Ljava/io/File;
    .locals 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smartisan/feedbackhelper/utils/BugReportException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-static {}, Lcom/smartisan/feedbackhelper/utils/Util;->getLogPath()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "logHome":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 382
    new-instance v5, Lcom/smartisan/feedbackhelper/utils/BugReportException;

    const-string v6, "No space left on device or storage path not writable"

    invoke-direct {v5, v6}, Lcom/smartisan/feedbackhelper/utils/BugReportException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 385
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd_HH-mm-ss.SSSZ"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 388
    .local v3, "mTimestampFormat":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 389
    .local v1, "logPath":Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "timestamp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    .local v2, "logPathFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 394
    new-instance v5, Lcom/smartisan/feedbackhelper/utils/BugReportException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create directory for report (tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/smartisan/feedbackhelper/utils/BugReportException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 398
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v5
.end method

.method private setCustomTheme(Landroid/content/Intent;)V
    .locals 10
    .param p1, "receiveIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, -0x1

    .line 194
    const-string v8, "title_bg_res"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 195
    .local v3, "resTitleBg":I
    if-eq v3, v9, :cond_0

    .line 196
    iget-object v8, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    invoke-virtual {v8, v3}, Lcom/smartisan/feedbackhelper/utils/Title;->setBackgroundResource(I)V

    .line 198
    :cond_0
    const-string v8, "title_ok_btn_bg"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 199
    .local v4, "resTitleOkBtnBg":I
    if-eq v4, v9, :cond_1

    .line 200
    iget-object v8, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    invoke-virtual {v8}, Lcom/smartisan/feedbackhelper/utils/Title;->getOkButton()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 202
    :cond_1
    const-string v8, "title_back_btn_bg"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 203
    .local v2, "resTitleBackBtnBg":I
    if-eq v2, v9, :cond_2

    .line 204
    iget-object v8, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    invoke-virtual {v8}, Lcom/smartisan/feedbackhelper/utils/Title;->getBackButton()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 206
    :cond_2
    const-string v8, "title_text_color"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 207
    .local v5, "resTitleTextColor":I
    if-eq v5, v9, :cond_5

    .line 208
    iget-object v8, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    invoke-virtual {v8}, Lcom/smartisan/feedbackhelper/utils/Title;->getOkButton()Landroid/widget/TextView;

    move-result-object v1

    .line 209
    .local v1, "okBtn":Landroid/view/View;
    iget-object v8, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    invoke-virtual {v8}, Lcom/smartisan/feedbackhelper/utils/Title;->getBackButton()Landroid/widget/TextView;

    move-result-object v0

    .line 210
    .local v0, "backBtn":Landroid/view/View;
    iget-object v8, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    invoke-virtual {v8}, Lcom/smartisan/feedbackhelper/utils/Title;->getTitleView()Landroid/widget/TextView;

    move-result-object v7

    .line 211
    .local v7, "titleView":Landroid/view/View;
    instance-of v8, v1, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 212
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "okBtn":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    :cond_3
    instance-of v8, v0, Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 215
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "backBtn":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    :cond_4
    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_5

    .line 218
    check-cast v7, Landroid/widget/TextView;

    .end local v7    # "titleView":Landroid/view/View;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    :cond_5
    sget v8, Lcom/smartisan/feedbackhelper/R$id;->feedback_title_bar_shadow:I

    invoke-virtual {p0, v8}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 222
    .local v6, "titleShadow":Landroid/widget/ImageView;
    sget v8, Lcom/smartisan/feedbackhelper/R$drawable;->title_light_shadow:I

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 223
    return-void
.end method

.method private setLightTheme()V
    .locals 6

    .prologue
    .line 172
    iget-object v4, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    sget v5, Lcom/smartisan/feedbackhelper/R$drawable;->titlebar_light:I

    invoke-virtual {v4, v5}, Lcom/smartisan/feedbackhelper/utils/Title;->setBackgroundResource(I)V

    .line 173
    iget-object v4, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    invoke-virtual {v4}, Lcom/smartisan/feedbackhelper/utils/Title;->getBackButton()Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lcom/smartisan/feedbackhelper/R$drawable;->feedback_title_button_back_light:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 175
    iget-object v4, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    invoke-virtual {v4}, Lcom/smartisan/feedbackhelper/utils/Title;->getOkButton()Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lcom/smartisan/feedbackhelper/R$drawable;->feedback_title_light_button_ok:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 177
    iget-object v4, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    invoke-virtual {v4}, Lcom/smartisan/feedbackhelper/utils/Title;->getOkButton()Landroid/widget/TextView;

    move-result-object v1

    .line 178
    .local v1, "okBtn":Landroid/view/View;
    iget-object v4, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    invoke-virtual {v4}, Lcom/smartisan/feedbackhelper/utils/Title;->getBackButton()Landroid/widget/TextView;

    move-result-object v0

    .line 179
    .local v0, "backBtn":Landroid/view/View;
    iget-object v4, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    invoke-virtual {v4}, Lcom/smartisan/feedbackhelper/utils/Title;->getTitleView()Landroid/widget/TextView;

    move-result-object v3

    .line 180
    .local v3, "titleView":Landroid/view/View;
    instance-of v4, v1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 181
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "okBtn":Landroid/view/View;
    sget v4, Lcom/smartisan/feedbackhelper/R$style;->Light_TitleButtonStyle:I

    invoke-virtual {v1, p0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 183
    :cond_0
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 184
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "backBtn":Landroid/view/View;
    sget v4, Lcom/smartisan/feedbackhelper/R$style;->Light_TitleButtonStyle:I

    invoke-virtual {v0, p0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 186
    :cond_1
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 187
    check-cast v3, Landroid/widget/TextView;

    .end local v3    # "titleView":Landroid/view/View;
    sget v4, Lcom/smartisan/feedbackhelper/R$style;->Light_TitleBarStyle:I

    invoke-virtual {v3, p0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 189
    :cond_2
    sget v4, Lcom/smartisan/feedbackhelper/R$id;->feedback_title_bar_shadow:I

    invoke-virtual {p0, v4}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 190
    .local v2, "titleShadow":Landroid/widget/ImageView;
    sget v4, Lcom/smartisan/feedbackhelper/R$drawable;->title_light_shadow:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 191
    return-void
.end method

.method public static setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "darkmode"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 612
    invoke-static {}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->isXiaoMiDevice()Z

    move-result v8

    if-nez v8, :cond_0

    .line 627
    :goto_0
    return v6

    .line 615
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 617
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/Window;>;"
    const/4 v1, 0x0

    .line 618
    .local v1, "darkModeFlag":I
    :try_start_0
    const-string v8, "android.view.MiuiWindowManager$LayoutParams"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 619
    .local v5, "layoutParams":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 620
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 621
    const-string v8, "setExtraFlags"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 622
    .local v3, "extraFlagField":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz p1, :cond_1

    move v8, v1

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v11

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v3, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 623
    goto :goto_0

    :cond_1
    move v8, v6

    .line 622
    goto :goto_1

    .line 624
    .end local v3    # "extraFlagField":Ljava/lang/reflect/Method;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "layoutParams":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 625
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setTranslateStatusBar()V
    .locals 2

    .prologue
    .line 689
    const-string v0, "com.smartisanos.home"

    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V

    .line 691
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z

    .line 693
    :cond_0
    return-void
.end method

.method private toast(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mToast:Landroid/widget/Toast;

    .line 300
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mToast:Landroid/widget/Toast;

    .line 302
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 303
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 304
    return-void
.end method


.method public finish()V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->view_main:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->hideKeyboard(Landroid/view/View;)Z

    .line 282
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 284
    sget v0, Lcom/smartisan/feedbackhelper/R$anim;->feedback_slide_in_from_left:I

    sget v1, Lcom/smartisan/feedbackhelper/R$anim;->feedback_slide_out_to_right:I

    invoke-virtual {p0, v0, v1}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->overridePendingTransition(II)V

    .line 286
    return-void
.end method

.method protected hideKeyboard(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 245
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 246
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v1

    .line 249
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 417
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    if-nez v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-virtual {v2}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->getmScreenShotsAdapter()Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    .line 420
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 458
    :cond_1
    :goto_0
    return-void

    .line 423
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 424
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 425
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, p0, v1}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->checkPicExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 427
    sget v2, Lcom/smartisan/feedbackhelper/R$string;->feedback_add_err_pic:I

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 428
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 431
    :cond_2
    invoke-static {v0}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->isPicture(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 432
    sget v2, Lcom/smartisan/feedbackhelper/R$string;->feedback_add_pic_err_type:I

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 434
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 437
    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-virtual {v2, v0}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 439
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    sget v3, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mSelectIndex:I

    .line 440
    invoke-virtual {v2, v3}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->getShotsFile(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 441
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    sget v3, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mSelectIndex:I

    invoke-virtual {v2, v3, v0}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->updateShotsFile(ILjava/lang/String;)V

    .line 446
    :goto_1
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-virtual {v2}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 444
    :cond_4
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-virtual {v2, v0}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->addShotsFile(Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_5
    sget v2, Lcom/smartisan/feedbackhelper/R$string;->problem_description_select_same_file:I

    .line 450
    invoke-virtual {p0, v2}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 451
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->checkDescription()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->showDialog()V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->requestWindowFeature(I)Z

    .line 114
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->setTranslateStatusBar()V

    .line 115
    sget v2, Lcom/smartisan/feedbackhelper/R$anim;->feedback_slide_in_from_right:I

    sget v3, Lcom/smartisan/feedbackhelper/R$anim;->feedback_slide_out_to_left:I

    invoke-virtual {p0, v2, v3}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->overridePendingTransition(II)V

    .line 117
    sget v2, Lcom/smartisan/feedbackhelper/R$layout;->feedback_activity:I

    invoke-virtual {p0, v2}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->setContentView(I)V

    .line 119
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    sget v2, Lcom/smartisan/feedbackhelper/R$id;->view_title:I

    invoke-virtual {p0, v2}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/smartisan/feedbackhelper/utils/Title;

    iput-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    .line 121
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, "receiveIntent":Landroid/content/Intent;
    const-string v2, "theme_style"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "theme_style"

    .line 123
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->setLightTheme()V

    .line 134
    :goto_0
    const-string v2, "back_text"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 135
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    const-string v3, "back_text"

    .line 136
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v2, v3}, Lcom/smartisan/feedbackhelper/utils/Title;->setBackButtonText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_1
    const-string v2, "app_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    const-string v2, "app_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mAppName:Ljava/lang/String;

    .line 145
    :cond_0
    const-string v2, "package_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 146
    const-string v2, "package_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mPackageName:Ljava/lang/String;

    .line 149
    :cond_1
    if-eqz p1, :cond_2

    .line 150
    const-string v2, "Description"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mDescriptionText:Ljava/lang/String;

    .line 151
    const-string v2, "Email"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mEmailText:Ljava/lang/String;

    .line 152
    const-string v2, "ImageList"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFileList:Ljava/util/ArrayList;

    .line 155
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mattaches:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 157
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->showFragmentByStep()V

    .line 158
    new-instance v2, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

    invoke-direct {v2, p0}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mAsyncDialog:Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

    .line 160
    sget v2, Lcom/smartisan/feedbackhelper/R$id;->view_main:I

    invoke-virtual {p0, v2}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->view_main:Landroid/widget/ScrollView;

    .line 161
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->view_main:Landroid/widget/ScrollView;

    new-instance v3, Lcom/smartisan/feedbackhelper/FeedbackActivity$TouchListenerImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/smartisan/feedbackhelper/FeedbackActivity$TouchListenerImpl;-><init>(Lcom/smartisan/feedbackhelper/FeedbackActivity;Lcom/smartisan/feedbackhelper/FeedbackActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v1, "updatefilter":Landroid/content/IntentFilter;
    const-string v2, "smartisan.intent.action.BUGREPORT.REPORT_UPLOAD_SUCCESS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v2, "smartisan.intent.action.BUGREPORT.REPORT_UPLOAD_FAILED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mReportSendStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    return-void

    .line 125
    .end local v1    # "updatefilter":Landroid/content/IntentFilter;
    :cond_3
    const-string v2, "theme_style"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "theme_style"

    .line 126
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "custom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    invoke-direct {p0, v0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->setCustomTheme(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    invoke-virtual {v2}, Lcom/smartisan/feedbackhelper/utils/Title;->getOkButton()Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/smartisan/feedbackhelper/R$drawable;->feedback_title_button_ok:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 138
    :cond_5
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    sget v3, Lcom/smartisan/feedbackhelper/R$string;->title_button_text_back:I

    invoke-virtual {v2, v3}, Lcom/smartisan/feedbackhelper/utils/Title;->setBackButtonText(I)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 290
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mReportSendStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    .line 292
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->finish()V

    .line 268
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 403
    const-string v0, "Description"

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-virtual {v1}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->getmEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 404
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v0, "Email"

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    iget-object v1, v1, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "ImageList"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    .line 408
    invoke-virtual {v2}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->getmScreenShotsAdapter()Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->getFileList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 407
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 409
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 410
    return-void
.end method

.method public sendReport()V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mAsyncDialog:Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

    new-instance v1, Lcom/smartisan/feedbackhelper/FeedbackActivity$2;

    invoke-direct {v1, p0}, Lcom/smartisan/feedbackhelper/FeedbackActivity$2;-><init>(Lcom/smartisan/feedbackhelper/FeedbackActivity;)V

    const/4 v2, 0x0

    sget v3, Lcom/smartisan/feedbackhelper/R$string;->feedback_uploading_report:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 317
    return-void
.end method

.method public showFragmentByStep()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    .line 259
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    const/16 v1, 0x1003

    .line 260
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 261
    new-instance v0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-direct {v0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;-><init>()V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    .line 262
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    sget v1, Lcom/smartisan/feedbackhelper/R$id;->launcher_container:I

    iget-object v2, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 263
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 264
    return-void
.end method

.method public uploadManualReport()V
    .locals 6

    .prologue
    .line 320
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-virtual {v3}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->getmEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mDescriptionText:Ljava/lang/String;

    .line 321
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    iget-object v3, v3, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mEmailString:Ljava/lang/String;

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mattachsize:Ljava/lang/StringBuilder;

    .line 323
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mattaches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 324
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFragmentOne:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-virtual {v3}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->getmScreenShotsAdapter()Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    .line 325
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-virtual {v3}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->getFileList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-virtual {v3}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->getFileList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 327
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 328
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-virtual {v3, v0}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->getShotsFile(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mattachsize:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mattaches:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "i":I
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "size":I
    :cond_0
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    invoke-virtual {v3}, Lcom/smartisan/feedbackhelper/utils/Title;->getOkButton()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 335
    new-instance v3, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;

    invoke-direct {v3, p0}, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;-><init>(Lcom/smartisan/feedbackhelper/FeedbackActivity;)V

    .line 375
    invoke-virtual {v3}, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->start()V

    .line 376
    return-void
.end method
