.class public Lcom/smartisanos/smengine/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/Shader$BSearchComparator;,
        Lcom/smartisanos/smengine/Shader$ShaderException;,
        Lcom/smartisanos/smengine/Shader$LocationEntry;
    }
.end annotation


.field private static final ATTRIB_SIZE:I = 0x14

.field private static final UNIFORM_SIZE:I = 0x1e

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mBsearch:Lcom/smartisanos/smengine/Shader$BSearchComparator;

.field private mFragmentProgramSrc:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mProgram:I

.field private mShaderAttribLocationMap:[Lcom/smartisanos/smengine/Shader$LocationEntry;

.field private mShaderAttribLocationMapOffset:I

.field private mShaderUniformLocationMap:[Lcom/smartisanos/smengine/Shader$LocationEntry;

.field private mShaderUniformLocationOffset:I

.field private mTmpLE:Lcom/smartisanos/smengine/Shader$LocationEntry;

.field private mVertexProgramSrc:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/smartisanos/smengine/Shader;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/Shader;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertexStr"    # Ljava/lang/String;
    .param p3, "fragmentStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/smartisanos/smengine/Shader$LocationEntry;

    iput-object v0, p0, Lcom/smartisanos/smengine/Shader;->mShaderUniformLocationMap:[Lcom/smartisanos/smengine/Shader$LocationEntry;

    .line 29
    iput v1, p0, Lcom/smartisanos/smengine/Shader;->mShaderUniformLocationOffset:I

    .line 30
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/smartisanos/smengine/Shader$LocationEntry;

    iput-object v0, p0, Lcom/smartisanos/smengine/Shader;->mShaderAttribLocationMap:[Lcom/smartisanos/smengine/Shader$LocationEntry;

    .line 31
    iput v1, p0, Lcom/smartisanos/smengine/Shader;->mShaderAttribLocationMapOffset:I

    .line 119
    new-instance v0, Lcom/smartisanos/smengine/Shader$LocationEntry;

    invoke-direct {v0, v2}, Lcom/smartisanos/smengine/Shader$LocationEntry;-><init>(Lcom/smartisanos/smengine/Shader$1;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/Shader;->mTmpLE:Lcom/smartisanos/smengine/Shader$LocationEntry;

    .line 120
    new-instance v0, Lcom/smartisanos/smengine/Shader$BSearchComparator;

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/smengine/Shader$BSearchComparator;-><init>(Lcom/smartisanos/smengine/Shader;Lcom/smartisanos/smengine/Shader$1;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/Shader;->mBsearch:Lcom/smartisanos/smengine/Shader$BSearchComparator;

    .line 40
    iput-object p1, p0, Lcom/smartisanos/smengine/Shader;->mName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/smartisanos/smengine/Shader;->mVertexProgramSrc:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/smartisanos/smengine/Shader;->mFragmentProgramSrc:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private createProgram()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 57
    iget-object v5, p0, Lcom/smartisanos/smengine/Shader;->mVertexProgramSrc:Ljava/lang/String;

    .line 58
    .local v5, "vertexSource":Ljava/lang/String;
    iget-object v0, p0, Lcom/smartisanos/smengine/Shader;->mFragmentProgramSrc:Ljava/lang/String;

    .line 59
    .local v0, "fragmentSource":Ljava/lang/String;
    const v7, 0x8b31

    invoke-direct {p0, v7, v5}, Lcom/smartisanos/smengine/Shader;->loadShader(ILjava/lang/String;)I

    move-result v4

    .line 60
    .local v4, "vertexShader":I
    if-nez v4, :cond_0

    move v3, v6

    .line 87
    :goto_0
    return v3

    .line 64
    :cond_0
    const v7, 0x8b30

    invoke-direct {p0, v7, v0}, Lcom/smartisanos/smengine/Shader;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 65
    .local v2, "pixelShader":I
    if-nez v2, :cond_1

    move v3, v6

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 70
    .local v3, "program":I
    if-eqz v3, :cond_2

    .line 71
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 72
    const-string v7, "glAttachShader"

    invoke-static {v7}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 73
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 74
    const-string v7, "glAttachShader"

    invoke-static {v7}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 75
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 76
    new-array v1, v8, [I

    .line 77
    .local v1, "linkStatus":[I
    const v7, 0x8b82

    invoke-static {v3, v7, v1, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 78
    aget v6, v1, v6

    if-eq v6, v8, :cond_2

    .line 79
    sget-object v6, Lcom/smartisanos/smengine/Shader;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "Could not link program: "

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 80
    sget-object v6, Lcom/smartisanos/smengine/Shader;->log:Lcom/smartisanos/launcher/LOG;

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 81
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 82
    const/4 v3, 0x0

    .line 85
    .end local v1    # "linkStatus":[I
    :cond_2
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 86
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    goto :goto_0
.end method

.method private getLocationEntry([Lcom/smartisanos/smengine/Shader$LocationEntry;ILjava/lang/String;)Lcom/smartisanos/smengine/Shader$LocationEntry;
    .locals 5
    .param p1, "arrays"    # [Lcom/smartisanos/smengine/Shader$LocationEntry;
    .param p2, "endIndex"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 122
    if-nez p2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-object v1

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/smengine/Shader;->mTmpLE:Lcom/smartisanos/smengine/Shader$LocationEntry;

    iput-object p3, v2, Lcom/smartisanos/smengine/Shader$LocationEntry;->mName:Ljava/lang/String;

    .line 126
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/smartisanos/smengine/Shader;->mTmpLE:Lcom/smartisanos/smengine/Shader$LocationEntry;

    iget-object v4, p0, Lcom/smartisanos/smengine/Shader;->mBsearch:Lcom/smartisanos/smengine/Shader$BSearchComparator;

    invoke-static {p1, v2, p2, v3, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 127
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 128
    aget-object v1, p1, v0

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 91
    .local v1, "shader":I
    if-eqz v1, :cond_0

    .line 92
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 93
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 94
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 95
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 96
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 97
    sget-object v2, Lcom/smartisanos/smengine/Shader;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 98
    sget-object v2, Lcom/smartisanos/smengine/Shader;->log:Lcom/smartisanos/launcher/LOG;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 99
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 100
    const/4 v1, 0x0

    .line 103
    .end local v0    # "compiled":[I
    :cond_0
    return v1
.end method

.method private putAttribLocationEntry(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "location"    # I

    .prologue
    .line 142
    new-instance v0, Lcom/smartisanos/smengine/Shader$LocationEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Shader$LocationEntry;-><init>(Lcom/smartisanos/smengine/Shader$1;)V

    .line 143
    .local v0, "le":Lcom/smartisanos/smengine/Shader$LocationEntry;
    iput-object p1, v0, Lcom/smartisanos/smengine/Shader$LocationEntry;->mName:Ljava/lang/String;

    .line 144
    iput p2, v0, Lcom/smartisanos/smengine/Shader$LocationEntry;->mLocation:I

    .line 145
    iget-object v1, p0, Lcom/smartisanos/smengine/Shader;->mShaderAttribLocationMap:[Lcom/smartisanos/smengine/Shader$LocationEntry;

    iget v2, p0, Lcom/smartisanos/smengine/Shader;->mShaderAttribLocationMapOffset:I

    aput-object v0, v1, v2

    .line 146
    iget v1, p0, Lcom/smartisanos/smengine/Shader;->mShaderAttribLocationMapOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smartisanos/smengine/Shader;->mShaderAttribLocationMapOffset:I

    .line 147
    iget-object v1, p0, Lcom/smartisanos/smengine/Shader;->mShaderAttribLocationMap:[Lcom/smartisanos/smengine/Shader$LocationEntry;

    iget v2, p0, Lcom/smartisanos/smengine/Shader;->mShaderAttribLocationMapOffset:I

    iget-object v3, p0, Lcom/smartisanos/smengine/Shader;->mBsearch:Lcom/smartisanos/smengine/Shader$BSearchComparator;

    invoke-static {v1, v2, v3}, Lcom/smartisanos/smengine/util/SortUtil;->qsort([Ljava/lang/Object;ILjava/util/Comparator;)V

    .line 148
    return-void
.end method

.method private putUniformLocationEntry(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "location"    # I

    .prologue
    .line 134
    new-instance v0, Lcom/smartisanos/smengine/Shader$LocationEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Shader$LocationEntry;-><init>(Lcom/smartisanos/smengine/Shader$1;)V

    .line 135
    .local v0, "le":Lcom/smartisanos/smengine/Shader$LocationEntry;
    iput-object p1, v0, Lcom/smartisanos/smengine/Shader$LocationEntry;->mName:Ljava/lang/String;

    .line 136
    iput p2, v0, Lcom/smartisanos/smengine/Shader$LocationEntry;->mLocation:I

    .line 137
    iget-object v1, p0, Lcom/smartisanos/smengine/Shader;->mShaderUniformLocationMap:[Lcom/smartisanos/smengine/Shader$LocationEntry;

    iget v2, p0, Lcom/smartisanos/smengine/Shader;->mShaderUniformLocationOffset:I

    aput-object v0, v1, v2

    .line 138
    iget v1, p0, Lcom/smartisanos/smengine/Shader;->mShaderUniformLocationOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smartisanos/smengine/Shader;->mShaderUniformLocationOffset:I

    .line 139
    iget-object v1, p0, Lcom/smartisanos/smengine/Shader;->mShaderUniformLocationMap:[Lcom/smartisanos/smengine/Shader$LocationEntry;

    iget v2, p0, Lcom/smartisanos/smengine/Shader;->mShaderUniformLocationOffset:I

    iget-object v3, p0, Lcom/smartisanos/smengine/Shader;->mBsearch:Lcom/smartisanos/smengine/Shader$BSearchComparator;

    invoke-static {v1, v2, v3}, Lcom/smartisanos/smengine/util/SortUtil;->qsort([Ljava/lang/Object;ILjava/util/Comparator;)V

    .line 140
    return-void
.end method


.method public create()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smartisanos/smengine/Shader;->mFragmentProgramSrc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/Shader;->mVertexProgramSrc:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 46
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/Shader$ShaderException;

    const-string v1, "shader source is null"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Shader$ShaderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/Shader;->mProgram:I

    if-lez v0, :cond_2

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/smengine/Shader;->createProgram()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/Shader;->mProgram:I

    goto :goto_0
.end method

.method public delete(Z)V
    .locals 4
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/smartisanos/smengine/Shader;->mShaderUniformLocationMap:[Lcom/smartisanos/smengine/Shader$LocationEntry;

    aput-object v3, v1, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/smartisanos/smengine/Shader;->mShaderAttribLocationMap:[Lcom/smartisanos/smengine/Shader$LocationEntry;

    aput-object v3, v1, v0

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    :cond_1
    iput v2, p0, Lcom/smartisanos/smengine/Shader;->mShaderAttribLocationMapOffset:I

    .line 294
    iput v2, p0, Lcom/smartisanos/smengine/Shader;->mShaderUniformLocationOffset:I

    .line 295
    iget v1, p0, Lcom/smartisanos/smengine/Shader;->mProgram:I

    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    .line 297
    iget v1, p0, Lcom/smartisanos/smengine/Shader;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 298
    const-string v1, " shader glDeleteProgram"

    invoke-static {v1}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 300
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/smartisanos/smengine/Shader;->mProgram:I

    .line 301
    return-void
.end method

.method public getAttribLocation(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v2, p0, Lcom/smartisanos/smengine/Shader;->mShaderAttribLocationMap:[Lcom/smartisanos/smengine/Shader$LocationEntry;

    iget v3, p0, Lcom/smartisanos/smengine/Shader;->mShaderAttribLocationMapOffset:I

    invoke-direct {p0, v2, v3, p1}, Lcom/smartisanos/smengine/Shader;->getLocationEntry([Lcom/smartisanos/smengine/Shader$LocationEntry;ILjava/lang/String;)Lcom/smartisanos/smengine/Shader$LocationEntry;

    move-result-object v1

    .line 194
    .local v1, "le":Lcom/smartisanos/smengine/Shader$LocationEntry;
    if-nez v1, :cond_2

    .line 195
    iget v2, p0, Lcom/smartisanos/smengine/Shader;->mProgram:I

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 196
    .local v0, "aL":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 197
    new-instance v2, Lcom/smartisanos/smengine/Shader$ShaderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attribute location -1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/Shader$ShaderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_0
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/smengine/Shader;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attrib = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 200
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/smengine/Shader;->putAttribLocationEntry(Ljava/lang/String;I)V

    .line 203
    .end local v0    # "aL":I
    :goto_0
    return v0

    :cond_2
    iget v0, v1, Lcom/smartisanos/smengine/Shader$LocationEntry;->mLocation:I

    goto :goto_0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v2, p0, Lcom/smartisanos/smengine/Shader;->mShaderUniformLocationMap:[Lcom/smartisanos/smengine/Shader$LocationEntry;

    iget v3, p0, Lcom/smartisanos/smengine/Shader;->mShaderUniformLocationOffset:I

    invoke-direct {p0, v2, v3, p1}, Lcom/smartisanos/smengine/Shader;->getLocationEntry([Lcom/smartisanos/smengine/Shader$LocationEntry;ILjava/lang/String;)Lcom/smartisanos/smengine/Shader$LocationEntry;

    move-result-object v1

    .line 166
    .local v1, "le":Lcom/smartisanos/smengine/Shader$LocationEntry;
    if-nez v1, :cond_1

    .line 167
    iget v2, p0, Lcom/smartisanos/smengine/Shader;->mProgram:I

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "aL":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 169
    new-instance v2, Lcom/smartisanos/smengine/Shader$ShaderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uniform location -1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/Shader$ShaderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/smengine/Shader;->putUniformLocationEntry(Ljava/lang/String;I)V

    .line 174
    .end local v0    # "aL":I
    :goto_0
    return v0

    :cond_1
    iget v0, v1, Lcom/smartisanos/smengine/Shader$LocationEntry;->mLocation:I

    goto :goto_0
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # F

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Shader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 208
    .local v0, "location":I
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 209
    return-void
.end method

.method public setFloatArray(IFF)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 244
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 245
    return-void
.end method

.method public setFloatArray(IFFF)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 252
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 253
    return-void
.end method

.method public setFloatArray(IFFFF)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "w"    # F

    .prologue
    .line 237
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 238
    return-void
.end method

.method public setFloatArray(Ljava/lang/String;FF)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Shader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, "location":I
    invoke-virtual {p0, v0, p2, p3}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFF)V

    .line 242
    return-void
.end method

.method public setFloatArray(Ljava/lang/String;FFF)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Shader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 248
    .local v0, "location":I
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFF)V

    .line 249
    return-void
.end method

.method public setFloatArray(Ljava/lang/String;FFFF)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "w"    # F

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Shader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    .local v1, "location":I
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 234
    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFFF)V

    .line 235
    return-void
.end method

.method public setFloatBuffer(ILjava/nio/FloatBuffer;IIIZ)V
    .locals 13
    .param p1, "location"    # I
    .param p2, "fb"    # Ljava/nio/FloatBuffer;
    .param p3, "size"    # I
    .param p4, "stride"    # I
    .param p5, "offset"    # I
    .param p6, "isUseVBO"    # Z

    .prologue
    .line 220
    if-eqz p6, :cond_0

    .line 221
    mul-int/lit8 v6, p5, 0x4

    .line 222
    .local v6, "offsetByte":I
    const/16 v3, 0x1406

    const/4 v4, 0x0

    move v1, p1

    move/from16 v2, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 224
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 231
    .end local v6    # "offsetByte":I
    :goto_0
    return-void

    .line 226
    :cond_0
    move/from16 v0, p5

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    const/16 v9, 0x1406

    const/4 v10, 0x0

    move v7, p1

    move/from16 v8, p3

    move/from16 v11, p4

    move-object v12, p2

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 229
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method

.method public setFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;IIIZ)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fb"    # Ljava/nio/FloatBuffer;
    .param p3, "size"    # I
    .param p4, "stride"    # I
    .param p5, "offset"    # I
    .param p6, "isUseVBO"    # Z

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Shader;->getAttribLocation(Ljava/lang/String;)I

    move-result v1

    .local v1, "location":I
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 217
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/Shader;->setFloatBuffer(ILjava/nio/FloatBuffer;IIIZ)V

    .line 218
    return-void
.end method

.method public setInt(II)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "v"    # I

    .prologue
    .line 259
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 260
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # I

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Shader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 256
    .local v0, "location":I
    invoke-virtual {p0, v0, p2}, Lcom/smartisanos/smengine/Shader;->setInt(II)V

    .line 257
    return-void
.end method

.method public setMatrix4f(I[F)V
    .locals 2
    .param p1, "location"    # I
    .param p2, "m"    # [F

    .prologue
    const/4 v1, 0x0

    .line 266
    const/4 v0, 0x1

    invoke-static {p1, v0, v1, p2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 267
    return-void
.end method

.method public setMatrix4f(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "m"    # [F

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Shader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 263
    .local v0, "location":I
    invoke-virtual {p0, v0, p2}, Lcom/smartisanos/smengine/Shader;->setMatrix4f(I[F)V

    .line 264
    return-void
.end method

.method public setMatrix4fArray(I[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "ma"    # [F
    .param p3, "num"    # I

    .prologue
    const/4 v0, 0x0

    .line 273
    invoke-static {p1, p3, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 274
    return-void
.end method

.method public setMatrix4fArray(Ljava/lang/String;[FI)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ma"    # [F
    .param p3, "num"    # I

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Shader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 270
    .local v0, "location":I
    invoke-virtual {p0, v0, p2, p3}, Lcom/smartisanos/smengine/Shader;->setMatrix4fArray(I[FI)V

    .line 271
    return-void
.end method

.method public setModularColor4fArray(I[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "mc"    # [F
    .param p3, "num"    # I

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 283
    return-void
.end method

.method public setModularColor4fArray(Ljava/lang/String;[FI)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mc"    # [F
    .param p3, "num"    # I

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Shader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 278
    .local v0, "location":I
    const/4 v1, 0x0

    invoke-static {v0, p3, p2, v1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 279
    return-void
.end method

.method public setUniformFloat(IF)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "v"    # F

    .prologue
    .line 211
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 212
    return-void
.end method

.method public use()V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/smartisanos/smengine/Shader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 55
    return-void
.end method
