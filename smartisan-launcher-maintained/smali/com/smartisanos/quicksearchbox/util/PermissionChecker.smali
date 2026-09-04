.class public Lcom/smartisanos/quicksearchbox/util/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


.field private static sPermissionChecker:Lcom/smartisanos/quicksearchbox/util/PermissionChecker;


.field private final mContext:Landroid/content/Context;


.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/util/PermissionChecker;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/smartisanos/quicksearchbox/util/PermissionChecker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    sget-object v0, Lcom/smartisanos/quicksearchbox/util/PermissionChecker;->sPermissionChecker:Lcom/smartisanos/quicksearchbox/util/PermissionChecker;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/smartisanos/quicksearchbox/util/PermissionChecker;

    invoke-direct {v0, p0}, Lcom/smartisanos/quicksearchbox/util/PermissionChecker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smartisanos/quicksearchbox/util/PermissionChecker;->sPermissionChecker:Lcom/smartisanos/quicksearchbox/util/PermissionChecker;

    .line 19
    :cond_0
    sget-object v0, Lcom/smartisanos/quicksearchbox/util/PermissionChecker;->sPermissionChecker:Lcom/smartisanos/quicksearchbox/util/PermissionChecker;

    return-object v0
.end method

.method private lacksPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/util/PermissionChecker;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


.method public varargs lacksPermissions([Ljava/lang/String;)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 32
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 33
    .local v0, "permission":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/smartisanos/quicksearchbox/util/PermissionChecker;->lacksPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 37
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    return v1

    .line 32
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
