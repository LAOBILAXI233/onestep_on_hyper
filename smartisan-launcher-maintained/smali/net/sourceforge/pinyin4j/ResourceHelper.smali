.class Lnet/sourceforge/pinyin4j/ResourceHelper;
.super Ljava/lang/Object;


.field static class$net$sourceforge$pinyin4j$ResourceHelper:Ljava/lang/Class;


.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getResourceInputStream(Ljava/lang/String;)Ljava/io/BufferedInputStream;
    .locals 2

    new-instance v1, Ljava/io/BufferedInputStream;

    sget-object v0, Lnet/sourceforge/pinyin4j/ResourceHelper;->class$net$sourceforge$pinyin4j$ResourceHelper:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "net.sourceforge.pinyin4j.ResourceHelper"

    invoke-static {v0}, Lnet/sourceforge/pinyin4j/ResourceHelper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/pinyin4j/ResourceHelper;->class$net$sourceforge$pinyin4j$ResourceHelper:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1

    :cond_0
    sget-object v0, Lnet/sourceforge/pinyin4j/ResourceHelper;->class$net$sourceforge$pinyin4j$ResourceHelper:Ljava/lang/Class;

    goto :goto_0
.end method
