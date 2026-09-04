.class public Lcom/smartisanos/launcher/LOG;
.super Ljava/lang/Object;
.source "LOG.java"


.field public static final A140:Ljava/lang/String; = "A140"

.field public static final CGH:Ljava/lang/String; = "DEBUG"

.field public static final DEBUG:Ljava/lang/String; = "DEBUG"

.field public static DISABLE_INFO_LOG:Z = false

.field public static ENABLE_DEBUG:Z = false

.field private static ENABLE_DETAIL_INFO:Z = false

.field private static final ENABLE_TRACE:Z = false

.field public static final IS_USER:Z = true

.field public static final Jayce:Ljava/lang/String; = "DEBUG"

.field public static final SORT_DEBUG:Ljava/lang/String; = "SORT_DEBUG"

.field public static final TAG:Ljava/lang/String; = "NewLauncher"

.field public static final UPDATE_ICON:Ljava/lang/String; = "launcher_update_icon"


.field private ENABLE_DETAIL_INFO_BY_CLASS:Z

.field private className:Ljava/lang/String;

.field private close:Z

.field private logOwner:Ljava/lang/Class;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    sput-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DETAIL_INFO:Z

    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smartisanos/launcher/LOG;->DISABLE_INFO_LOG:Z

    .line 15
    sput-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/Class;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v1, p0, Lcom/smartisanos/launcher/LOG;->logOwner:Ljava/lang/Class;

    .line 10
    iput-object v1, p0, Lcom/smartisanos/launcher/LOG;->className:Ljava/lang/String;

    .line 12
    iput-boolean v0, p0, Lcom/smartisanos/launcher/LOG;->ENABLE_DETAIL_INFO_BY_CLASS:Z

    .line 29
    iput-boolean v0, p0, Lcom/smartisanos/launcher/LOG;->close:Z

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LOG must be init by class object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/launcher/LOG;->logOwner:Ljava/lang/Class;

    .line 74
    iget-object v0, p0, Lcom/smartisanos/launcher/LOG;->logOwner:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/LOG;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/LOG;->className:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private static _error(Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 228
    const-string v0, "NewLauncher"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method private static _info(Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->DISABLE_INFO_LOG:Z

    if-eqz v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string v0, "NewLauncher"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/smartisanos/launcher/LOG;->sgetLogString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->_error(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->sgetLogString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->_error(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static enableDetailGlobal(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 94
    sput-boolean p0, Lcom/smartisanos/launcher/LOG;->ENABLE_DETAIL_INFO:Z

    .line 95
    return-void
.end method

.method private getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "cName":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/smartisanos/launcher/LOG;->getLogTrace()Ljava/util/ArrayList;

    move-result-object v1

    .line 143
    .local v1, "details":Ljava/util/ArrayList;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 144
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 145
    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 147
    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 149
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;
    .locals 1
    .param p0, "owner"    # Ljava/lang/Class;

    .prologue
    .line 86
    new-instance v0, Lcom/smartisanos/launcher/LOG;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/LOG;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getLogDetail()Ljava/lang/String;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/smartisanos/launcher/LOG;->getLogTrace()Ljava/util/ArrayList;

    move-result-object v1

    .line 158
    .local v1, "details":Ljava/util/ArrayList;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 159
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 160
    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 162
    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 165
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getLogString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 169
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DETAIL_INFO:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/launcher/LOG;->ENABLE_DETAIL_INFO_BY_CLASS:Z

    if-eqz v0, :cond_2

    .line 170
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/LOG;->getDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    .end local p1    # "info":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 172
    .restart local p1    # "info":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/LOG;->className:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/launcher/LOG;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static getLogTrace()Ljava/util/ArrayList;
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, "list":Ljava/util/ArrayList;
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 126
    .local v4, "traceArr":[Ljava/lang/StackTraceElement;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v5, v6, :cond_0

    .line 127
    aget-object v5, v4, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "className":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    aget-object v5, v4, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "methodName":Ljava/lang/String;
    aget-object v5, v4, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 131
    .local v1, "lineNum":I
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .restart local v2    # "list":Ljava/util/ArrayList;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "lineNum":I
    .end local v3    # "methodName":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .line 137
    return-object v2
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/smartisanos/launcher/LOG;->sgetLogString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->_info(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->DISABLE_INFO_LOG:Z

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->sgetLogString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->_info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openLog()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    .line 27
    return-void
.end method

.method private static sgetLogString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DETAIL_INFO:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0}, Lcom/smartisanos/launcher/LOG;->getDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 65
    .end local p0    # "info":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static trace()V
    .locals 1

    .prologue
    .line 106
    const-string v0, ""

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->trace(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static trace(Ljava/lang/String;)V
    .locals 0
    .param p0, "traceName"    # Ljava/lang/String;

    .prologue
    .line 113
    return-void
.end method


.method public close()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/LOG;->close:Z

    .line 32
    return-void
.end method

.method public enableDetailByClass(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/smartisanos/launcher/LOG;->ENABLE_DETAIL_INFO_BY_CLASS:Z

    .line 103
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/LOG;->getLogString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->_error(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/smartisanos/launcher/LOG;->close:Z

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/LOG;->getLogString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->_error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 180
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->DISABLE_INFO_LOG:Z

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/LOG;->getLogString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->_info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 195
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->DISABLE_INFO_LOG:Z

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/LOG;->getLogString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->_info(Ljava/lang/String;)V

    goto :goto_0
.end method
