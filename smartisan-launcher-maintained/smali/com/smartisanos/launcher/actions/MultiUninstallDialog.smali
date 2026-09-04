.class public Lcom/smartisanos/launcher/actions/MultiUninstallDialog;
.super Ljava/lang/Object;
.source "MultiUninstallDialog.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;,
        Lcom/smartisanos/launcher/actions/MultiUninstallDialog$AppAdapter;
    }
.end annotation


.field public static MULTI_UNINSTALL_PREVIEW_DIALOG:Landroid/app/Dialog;

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private clickCancel:Z

.field private clickOk:Z

.field private mContext:Landroid/content/Context;

.field private mUninstallApp:Lcom/smartisanos/launcher/actions/UninstallApp;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/launcher/actions/UninstallApp;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ua"    # Lcom/smartisanos/launcher/actions/UninstallApp;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->clickOk:Z

    .line 59
    iput-boolean v0, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->clickCancel:Z

    .line 38
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->mUninstallApp:Lcom/smartisanos/launcher/actions/UninstallApp;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Ljava/util/List;Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/MultiUninstallDialog;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->showUninstallPreviewDialogImpl(Ljava/util/List;Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->clickCancel:Z

    return v0
.end method

.method static synthetic access$102(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/MultiUninstallDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->clickCancel:Z

    return p1
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->clickOk:Z

    return v0
.end method

.method static synthetic access$202(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/MultiUninstallDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->clickOk:Z

    return p1
.end method

.method static synthetic access$300()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)Lcom/smartisanos/launcher/actions/UninstallApp;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->mUninstallApp:Lcom/smartisanos/launcher/actions/UninstallApp;

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showUninstallPreviewDialogImpl(Ljava/util/List;Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V
    .locals 15
    .param p2, "uninstallDialogThread"    # Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-nez p2, :cond_0

    .line 63
    sget-object v12, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "lose uninstallDialogThread !"

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v12, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->MULTI_UNINSTALL_PREVIEW_DIALOG:Landroid/app/Dialog;

    if-eqz v12, :cond_1

    .line 67
    sget-object v12, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "MULTI_UNINSTALL_PREVIEW_DIALOG is not null"

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->clickOk:Z

    .line 71
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->clickCancel:Z

    .line 72
    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->mContext:Landroid/content/Context;

    const v13, 0x103012b

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 73
    .local v11, "wrapper":Landroid/view/ContextThemeWrapper;
    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 74
    .local v6, "inflater":Landroid/view/LayoutInflater;
    sget v12, Lcom/smartisanos/launcher/ResIds$layout;->multi_uninstall_dialog:I

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    .line 75
    .local v3, "gridView":Landroid/widget/GridView;
    new-instance v1, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$AppAdapter;

    move-object/from16 v0, p1

    invoke-direct {v1, p0, v0}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$AppAdapter;-><init>(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Ljava/util/List;)V

    .line 76
    .local v1, "adapter":Lcom/smartisanos/launcher/actions/MultiUninstallDialog$AppAdapter;
    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 79
    .local v2, "count":I
    div-int/lit8 v7, v2, 0x3

    .line 80
    .local v7, "rowCount":I
    rem-int/lit8 v12, v2, 0x3

    if-eqz v12, :cond_2

    .line 81
    add-int/lit8 v7, v7, 0x1

    .line 83
    :cond_2
    const/4 v5, -0x2

    .line 84
    .local v5, "height":I
    const/4 v12, 0x3

    if-le v7, v12, :cond_3

    .line 85
    sget-object v12, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "rowCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 86
    const/4 v7, 0x3

    .line 87
    mul-int/lit8 v10, v7, 0x40

    .line 89
    .local v10, "viewHeight":I
    add-int/lit8 v10, v10, 0x30

    .line 91
    add-int/lit8 v10, v10, 0x30

    .line 92
    iget-object v12, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v8, v12, Landroid/util/DisplayMetrics;->density:F

    .line 93
    .local v8, "scale":F
    int-to-float v12, v10

    mul-float/2addr v12, v8

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v5, v12

    .line 96
    .end local v8    # "scale":F
    .end local v10    # "viewHeight":I
    :cond_3
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 97
    .local v9, "view":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v4, v12, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v4, "gridViewParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v9, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v13, Lcom/smartisanos/launcher/ResIds$string;->uninstall_multi_app_preview_dialog_title:I

    .line 100
    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 101
    invoke-virtual {v12, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    sget v13, Lcom/smartisanos/launcher/ResIds$string;->ok:I

    new-instance v14, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$5;

    move-object/from16 v0, p2

    invoke-direct {v14, p0, v0}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$5;-><init>(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V

    .line 102
    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    sget v13, Lcom/smartisanos/launcher/ResIds$string;->cancel:I

    new-instance v14, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$4;

    invoke-direct {v14, p0}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$4;-><init>(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)V

    .line 113
    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$3;

    invoke-direct {v13, p0}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$3;-><init>(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)V

    .line 119
    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$2;

    invoke-direct {v13, p0}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$2;-><init>(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)V

    .line 125
    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 138
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    sput-object v12, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->MULTI_UNINSTALL_PREVIEW_DIALOG:Landroid/app/Dialog;

    .line 139
    sget-object v12, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->MULTI_UNINSTALL_PREVIEW_DIALOG:Landroid/app/Dialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method


.method public showUninstallPreviewDialog(Ljava/util/List;Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V
    .locals 2
    .param p2, "uninstallDialogThread"    # Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    .line 47
    .local v0, "launcher":Lcom/smartisanos/home/Launcher;
    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v1, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$1;-><init>(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Ljava/util/List;Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
