.class public final Lorg/apache/http/util/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


.annotation runtime Ljava/lang/Deprecated;
.end annotation


.field private static final INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lorg/apache/http/util/ExceptionUtils;->getInitCauseMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/http/util/ExceptionUtils;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method private static getInitCauseMethod()Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    .line 56
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v1, v2

    .line 57
    .local v1, "paramsClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "initCause"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 59
    :goto_0
    return-object v2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    sget-object v0, Lorg/apache/http/util/ExceptionUtils;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    sget-object v0, Lorg/apache/http/util/ExceptionUtils;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method
