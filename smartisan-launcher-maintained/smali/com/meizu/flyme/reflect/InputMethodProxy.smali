.class public Lcom/meizu/flyme/reflect/InputMethodProxy;
.super Lcom/meizu/flyme/reflect/Proxy;
.source "InputMethodProxy.java"


.field private static final TAG:Ljava/lang/String; = "InputMethod"

.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sSetMzInputThemeLight:Ljava/lang/reflect/Method;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Lcom/meizu/flyme/reflect/InputMethodProxy;->sClass:Ljava/lang/Class;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/meizu/flyme/reflect/Proxy;-><init>()V

    return-void
.end method

.method public static setInputThemeLight(Landroid/content/Context;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "light"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 28
    sget-object v2, Lcom/meizu/flyme/reflect/InputMethodProxy;->sSetMzInputThemeLight:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/meizu/flyme/reflect/InputMethodProxy;->sClass:Ljava/lang/Class;

    .line 29
    const-string v4, "setMzInputThemeLight"

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    .line 28
    invoke-static {v2, v3, v4, v5}, Lcom/meizu/flyme/reflect/InputMethodProxy;->getMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/flyme/reflect/InputMethodProxy;->sSetMzInputThemeLight:Ljava/lang/reflect/Method;

    .line 31
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 32
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 33
    sget-object v2, Lcom/meizu/flyme/reflect/InputMethodProxy;->sSetMzInputThemeLight:Ljava/lang/reflect/Method;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v0, v3}, Lcom/meizu/flyme/reflect/InputMethodProxy;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 35
    :cond_0
    return v1
.end method
