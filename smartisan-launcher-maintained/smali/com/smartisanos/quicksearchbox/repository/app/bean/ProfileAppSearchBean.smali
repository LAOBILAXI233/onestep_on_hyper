.class public Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;
.super Ljava/lang/Object;
.source "ProfileAppSearchBean.java"


.field private final componentName:Ljava/lang/String;

.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final packageName:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final user:Landroid/os/UserHandle;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->title:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->packageName:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->componentName:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->user:Landroid/os/UserHandle;

    .line 19
    iput-object p5, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->icon:Landroid/graphics/drawable/Drawable;

    .line 20
    return-void
.end method


.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->user:Landroid/os/UserHandle;

    return-object v0
.end method
