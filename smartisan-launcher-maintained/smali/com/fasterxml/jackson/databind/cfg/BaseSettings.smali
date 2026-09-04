.class public final Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.super Ljava/lang/Object;
.source "BaseSettings.java"

.implements Ljava/io/Serializable;


.field private static final DEFAULT_TIMEZONE:Ljava/util/TimeZone;

.field private static final serialVersionUID:J = 0x1L


.field protected final _annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final _classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

.field protected final _dateFormat:Ljava/text/DateFormat;

.field protected final _defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

.field protected final _handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

.field protected final _locale:Ljava/util/Locale;

.field protected final _propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

.field protected final _timeZone:Ljava/util/TimeZone;

.field protected final _typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

.field protected final _typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V
    .locals 0
    .param p1, "ci"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
    .param p2, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p4, "pns"    # Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
    .param p5, "tf"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .param p7, "dateFormat"    # Ljava/text/DateFormat;
    .param p8, "hi"    # Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    .param p9, "locale"    # Ljava/util/Locale;
    .param p10, "tz"    # Ljava/util/TimeZone;
    .param p11, "defaultBase64"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;",
            "Ljava/text/DateFormat;",
            "Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;",
            "Ljava/util/Locale;",
            "Ljava/util/TimeZone;",
            "Lcom/fasterxml/jackson/core/Base64Variant;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p3, "vc":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .local p6, "typer":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    .line 153
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 154
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 155
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 156
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 157
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    .line 158
    iput-object p7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    .line 159
    iput-object p8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    .line 160
    iput-object p9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    .line 161
    iput-object p10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    .line 162
    iput-object p11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    .line 163
    return-void
.end method

.method private _force(Ljava/text/DateFormat;Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .locals 1
    .param p1, "df"    # Ljava/text/DateFormat;
    .param p2, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 377
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 378
    check-cast v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    .line 381
    :cond_0
    invoke-virtual {p1}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "df":Ljava/text/DateFormat;
    check-cast p1, Ljava/text/DateFormat;

    .line 382
    .restart local p1    # "df":Ljava/text/DateFormat;
    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move-object v0, p1

    .line 383
    goto :goto_0
.end method


.method public getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    return-object v0
.end method

.method public getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    return-object v0
.end method

.method public getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPropertyNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    .line 351
    .local v0, "tz":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .end local v0    # "tz":Ljava/util/TimeZone;
    :cond_0
    return-object v0
.end method

.method public getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    return-object v0
.end method

.method public getTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    return-object v0
.end method

.method public getVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    return-object v0
.end method

.method public hasExplicitTimeZone()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 12
    .param p1, "base64"    # Lcom/fasterxml/jackson/core/Base64Variant;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    if-ne p1, v0, :cond_0

    .line 301
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    move-object v11, p1

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 12
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    if-ne v0, p1, :cond_0

    .line 268
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    move-object v9, p1

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 12
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    if-ne p1, v0, :cond_1

    .line 288
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :goto_0
    return-object p0

    .line 287
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_force(Ljava/text/DateFormat;Ljava/util/TimeZone;)Ljava/text/DateFormat;

    move-result-object v7

    .line 288
    .local v7, "df":Ljava/text/DateFormat;
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 12
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-ne v0, p1, :cond_0

    .line 184
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    move-object v2, p1

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 1
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->create(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    return-object v0
.end method

.method public withClassIntrospector(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 12
    .param p1, "ci"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    if-ne v0, p1, :cond_0

    .line 175
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 12
    .param p1, "df"    # Ljava/text/DateFormat;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    if-ne v0, p1, :cond_0

    .line 250
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :goto_0
    return-object p0

    .line 247
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->hasExplicitTimeZone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_force(Ljava/text/DateFormat;Ljava/util/TimeZone;)Ljava/text/DateFormat;

    move-result-object p1

    .line 250
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    move-object v7, p1

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withHandlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 12
    .param p1, "hi"    # Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    if-ne v0, p1, :cond_0

    .line 259
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    move-object v8, p1

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 1
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->create(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v0

    return-object v0
.end method

.method public withPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 12
    .param p1, "pns"    # Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    if-ne v0, p1, :cond_0

    .line 218
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    move-object v4, p1

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 12
    .param p1, "tf"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    if-ne v0, p1, :cond_0

    .line 227
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    move-object v5, p1

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withTypeResolverBuilder(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/BaseSettings;"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "typer":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    if-ne v0, p1, :cond_0

    .line 236
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    move-object v6, p1

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 12
    .param p1, "forMethod"    # Lcom/fasterxml/jackson/annotation/PropertyAccessor;
    .param p2, "visibility"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 207
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    invoke-interface {v3, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V

    return-object v0
.end method

.method public withVisibilityChecker(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/BaseSettings;"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "vc":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    if-ne v0, p1, :cond_0

    .line 201
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_propertyNamingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeResolverBuilder:Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_handlerInstantiator:Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_timeZone:Ljava/util/TimeZone;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V

    move-object p0, v0

    goto :goto_0
.end method
