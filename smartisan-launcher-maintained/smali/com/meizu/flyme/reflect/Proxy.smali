.class public Lcom/meizu/flyme/reflect/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static varargs getMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 9
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 11
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    return-object p0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 20
    if-eqz p0, :cond_0

    .line 22
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 23
    const/4 v1, 0x1

    .line 32
    :goto_0
    return v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 32
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 26
    :catch_1
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 28
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method
