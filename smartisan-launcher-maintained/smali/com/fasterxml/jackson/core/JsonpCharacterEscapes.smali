.class public Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;
.super Lcom/fasterxml/jackson/core/io/CharacterEscapes;
.source "JsonpCharacterEscapes.java"


.field private static final asciiEscapes:[I

.field private static final escapeFor2028:Lcom/fasterxml/jackson/core/io/SerializedString;

.field private static final escapeFor2029:Lcom/fasterxml/jackson/core/io/SerializedString;

.field private static final sInstance:Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;

.field private static final serialVersionUID:J = 0x1L


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->standardAsciiEscapesForJSON()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->asciiEscapes:[I

    .line 20
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    const-string v1, "\\u2028"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->escapeFor2028:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 21
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    const-string v1, "\\u2029"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->escapeFor2029:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 23
    new-instance v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->sInstance:Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;-><init>()V

    return-void
.end method

.method public static instance()Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->sInstance:Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;

    return-object v0
.end method


.method public getEscapeCodesForAscii()[I
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->asciiEscapes:[I

    return-object v0
.end method

.method public getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 38
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->escapeFor2028:Lcom/fasterxml/jackson/core/io/SerializedString;

    goto :goto_0

    .line 36
    :pswitch_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->escapeFor2029:Lcom/fasterxml/jackson/core/io/SerializedString;

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x2028
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
