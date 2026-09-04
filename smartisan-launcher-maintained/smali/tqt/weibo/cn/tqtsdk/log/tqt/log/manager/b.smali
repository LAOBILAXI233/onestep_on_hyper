.class public final Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;
.super Ljava/lang/Object;
.source "CollectUserActionInfoManager.java"


.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Landroid/content/Context;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->a:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static final a()V
    .locals 6

    .prologue
    .line 203
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->e:Landroid/content/Context;

    .line 204
    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;)Ljava/util/HashMap;

    move-result-object v1

    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->e:Landroid/content/Context;

    invoke-static {v2, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->b(Ljava/util/List;Landroid/content/Context;)V

    .line 208
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 209
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 210
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 214
    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 215
    sget-object v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->e:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    .line 217
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->e:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    return-void
.end method

.method public static final a(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->e:Landroid/content/Context;

    .line 226
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->d()V

    .line 228
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->e:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 229
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 230
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 153
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    if-eqz v0, :cond_0

    .line 155
    const-string v1, ""

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    if-eqz v0, :cond_1

    .line 160
    invoke-interface {p0, p1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->a(Ljava/lang/String;)V

    .line 167
    :cond_1
    :goto_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    if-eqz v0, :cond_3

    .line 169
    const-string v3, ""

    const-string v2, ""

    const-string v1, ""

    .line 170
    const-string v4, "s1a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 171
    const-string v3, "first_play"

    .line 172
    const-string v2, "first_tts_repeat"

    .line 173
    const-string v1, "first_tts_time"

    .line 184
    :cond_2
    :goto_1
    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "t"

    .line 185
    :goto_2
    const-string v4, "_12345"

    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    const-string v4, "_1204"

    invoke-interface {p0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_3
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    if-eqz v0, :cond_4

    .line 195
    const-string v1, ""

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    const-string v2, "AUTOLOCATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->e:Landroid/content/Context;

    invoke-static {v4}, Ltqt/weibo/cn/tqtsdk/kit/b/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_4
    return-void

    .line 163
    :cond_5
    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_6
    const-string v4, "s2a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 175
    const-string v3, "second_play"

    .line 176
    const-string v2, "second_tts_repeat"

    .line 177
    const-string v1, "second_tts_time"

    goto/16 :goto_1

    .line 178
    :cond_7
    const-string v4, "s3a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    const-string v3, "third_play"

    .line 180
    const-string v2, "third_tts_repeat"

    .line 181
    const-string v1, "third_tts_time"

    goto/16 :goto_1

    .line 184
    :cond_8
    const-string v3, "f"

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 236
    const-string v0, "setTrue"

    invoke-static {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    .line 238
    throw v0

    .line 240
    :cond_0
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 242
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 243
    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 332
    const-class v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;

    monitor-enter v1

    :try_start_0
    const-string v0, "setString"

    invoke-static {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_0

    .line 334
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 336
    :cond_0
    :try_start_1
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 338
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 339
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    monitor-exit v1

    return-void
.end method

.method static b()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->e:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 4

    .prologue
    .line 344
    const-class v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 345
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument(s) of Manager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(int,String) should not be null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 263
    const-string v0, "setFalse"

    invoke-static {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_0

    .line 265
    throw v0

    .line 267
    :cond_0
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    return-void
.end method

.method static c()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 357
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->e:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 277
    const-string v0, "increaseOne"

    invoke-static {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    throw v0

    .line 281
    :cond_0
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 283
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 284
    add-int/lit8 v1, v1, 0x1

    .line 285
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 286
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    return-void
.end method

.method private static d()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 52
    const/16 v0, 0x9

    new-array v1, v0, [[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "s1a"

    aput-object v3, v0, v2

    const-string v3, "first_play"

    aput-object v3, v0, v8

    aput-object v0, v1, v2

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "s1a"

    aput-object v3, v0, v2

    const-string v3, "first_tts_repeat"

    aput-object v3, v0, v8

    aput-object v0, v1, v8

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "s1a"

    aput-object v3, v0, v2

    const-string v3, "first_tts_time"

    aput-object v3, v0, v8

    aput-object v0, v1, v6

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "s2a"

    aput-object v3, v0, v2

    const-string v3, "second_play"

    aput-object v3, v0, v8

    aput-object v0, v1, v9

    const/4 v0, 0x4

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "s2a"

    aput-object v4, v3, v2

    const-string v4, "second_tts_repeat"

    aput-object v4, v3, v8

    aput-object v3, v1, v0

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "s2a"

    aput-object v3, v0, v2

    const-string v3, "second_tts_time"

    aput-object v3, v0, v8

    aput-object v0, v1, v10

    const/4 v0, 0x6

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "s3a"

    aput-object v4, v3, v2

    const-string v4, "third_play"

    aput-object v4, v3, v8

    aput-object v3, v1, v0

    const/4 v0, 0x7

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "s3a"

    aput-object v4, v3, v2

    const-string v4, "third_tts_repeat"

    aput-object v4, v3, v8

    aput-object v3, v1, v0

    const/16 v0, 0x8

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "s3a"

    aput-object v4, v3, v2

    const-string v4, "third_tts_time"

    aput-object v4, v3, v8

    aput-object v3, v1, v0

    move v0, v2

    .line 62
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 63
    sget-object v3, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b:Ljava/util/HashMap;

    aget-object v4, v1, v0

    aget-object v4, v4, v8

    aget-object v5, v1, v0

    aget-object v5, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    new-array v1, v6, [[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "siocutp"

    aput-object v3, v0, v2

    const-string v3, "used_tts_id"

    aput-object v3, v0, v8

    aput-object v0, v1, v2

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "siocubp"

    aput-object v3, v0, v2

    const-string v3, "used_background_id"

    aput-object v3, v0, v8

    aput-object v0, v1, v8

    move v0, v2

    .line 72
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 73
    sget-object v3, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c:Ljava/util/HashMap;

    aget-object v4, v1, v0

    aget-object v4, v4, v8

    aget-object v5, v1, v0

    aget-object v5, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_1
    new-array v1, v9, [[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "biuaa"

    aput-object v3, v0, v2

    const-string v3, "weather_animation"

    aput-object v3, v0, v8

    aput-object v0, v1, v2

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "binwa"

    aput-object v3, v0, v2

    const-string v3, "sina.mobile.tianqitong.spkey_boolean_use_weather_notification_current_weather"

    aput-object v3, v0, v8

    aput-object v0, v1, v8

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "zdldbg"

    aput-object v3, v0, v2

    const-string v3, "phone_area"

    aput-object v3, v0, v8

    aput-object v0, v1, v6

    move v0, v2

    .line 85
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 86
    aget-object v3, v1, v0

    aget-object v3, v3, v8

    if-nez v3, :cond_2

    .line 85
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 89
    :cond_2
    sget-object v3, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->d:Ljava/util/HashMap;

    aget-object v4, v1, v0

    aget-object v4, v4, v8

    aget-object v5, v1, v0

    aget-object v5, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 95
    :cond_3
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    sget-object v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    if-eqz v1, :cond_4

    .line 98
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 102
    :cond_5
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    sget-object v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    if-eqz v1, :cond_6

    .line 105
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 108
    :cond_7
    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b(Ljava/lang/String;)V

    goto :goto_5

    .line 112
    :cond_8
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    sget-object v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    if-eqz v0, :cond_9

    .line 115
    const-string v4, ""

    const-string v3, ""

    const-string v1, ""

    .line 116
    const-string v6, "s1a"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 117
    const-string v4, "first_play"

    .line 118
    const-string v3, "first_tts_repeat"

    .line 119
    const-string v1, "first_tts_time"

    .line 130
    :cond_a
    :goto_7
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "t"

    .line 131
    :goto_8
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "_12345"

    invoke-interface {v6, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "_1204"

    invoke-interface {v6, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 120
    :cond_b
    const-string v6, "s2a"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 121
    const-string v4, "second_play"

    .line 122
    const-string v3, "second_tts_repeat"

    .line 123
    const-string v1, "second_tts_time"

    goto :goto_7

    .line 124
    :cond_c
    const-string v6, "s3a"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 125
    const-string v4, "third_play"

    .line 126
    const-string v3, "third_tts_repeat"

    .line 127
    const-string v1, "third_tts_time"

    goto :goto_7

    .line 130
    :cond_d
    const-string v4, "f"

    goto :goto_8

    .line 139
    :cond_e
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    sget-object v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    if-eqz v1, :cond_f

    .line 142
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v3, "AUTOLOCATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 144
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "locate_citycode"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v1, v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 148
    :cond_10
    return-void
.end method
