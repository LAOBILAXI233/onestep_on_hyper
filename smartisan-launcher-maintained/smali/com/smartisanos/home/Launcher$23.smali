.class synthetic Lcom/smartisanos/home/Launcher$23;
.super Ljava/lang/Object;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


.field static final synthetic $SwitchMap$com$smartisanos$home$Launcher$RUNNING_ENV:[I


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 215
    invoke-static {}, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->values()[Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/smartisanos/home/Launcher$23;->$SwitchMap$com$smartisanos$home$Launcher$RUNNING_ENV:[I

    :try_start_0
    sget-object v0, Lcom/smartisanos/home/Launcher$23;->$SwitchMap$com$smartisanos$home$Launcher$RUNNING_ENV:[I

    sget-object v1, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v1}, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/smartisanos/home/Launcher$23;->$SwitchMap$com$smartisanos$home$Launcher$RUNNING_ENV:[I

    sget-object v1, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->DB:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v1}, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/smartisanos/home/Launcher$23;->$SwitchMap$com$smartisanos$home$Launcher$RUNNING_ENV:[I

    sget-object v1, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->MAIN:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v1}, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
