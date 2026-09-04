.class public final Lsmartisanos/app/contacts/phone/PhoneLocation;
.super Ljava/lang/Object;
.source "PhoneLocation.java"


.field private static final EFFECTIVE_NUM_MIN_LENGTH:I = 0x5

.field private static final MOBILE_NUMBER_MIX_LENGTH:I = 0xb

.field private static _location:Ljava/lang/String;

.field private static _phone:Ljava/lang/String;

.field private static mFixedNumberInstance:Lsmartisanos/app/contacts/phone/FixedNumberList;

.field private static mInternationalNumberList:Lsmartisanos/app/contacts/phone/InternationalNumberList;

.field private static mSpecialServiceNumberInstance:Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const-string v0, "phoneloc-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    sput-object v1, Lsmartisanos/app/contacts/phone/PhoneLocation;->mInternationalNumberList:Lsmartisanos/app/contacts/phone/InternationalNumberList;

    .line 36
    sput-object v1, Lsmartisanos/app/contacts/phone/PhoneLocation;->mFixedNumberInstance:Lsmartisanos/app/contacts/phone/FixedNumberList;

    .line 37
    sput-object v1, Lsmartisanos/app/contacts/phone/PhoneLocation;->mSpecialServiceNumberInstance:Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _getPosFromNumber(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 113
    invoke-static {p0, p1}, Lsmartisanos/app/contacts/phone/PhoneLocation;->getLocationFromNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "loc":[Ljava/lang/String;
    :goto_0
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 116
    aget-object v2, v0, p2

    .line 118
    :goto_1
    return-object v2

    .line 114
    .end local v0    # "loc":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    goto :goto_0

    .line 118
    .restart local v0    # "loc":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getCityNameByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lsmartisanos/app/contacts/phone/PhoneLocation;->_getPosFromNumber(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "city":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v0, ""

    .line 126
    .end local v0    # "city":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static declared-synchronized getLocationFromNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 40
    const-class v1, Lsmartisanos/app/contacts/phone/PhoneLocation;

    monitor-enter v1

    if-eqz p1, :cond_0

    .line 41
    :try_start_0
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 43
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    :cond_1
    :goto_0
    monitor-exit v1

    return-object v0

    .line 45
    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Lsmartisanos/app/contacts/phone/PhoneLocation;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lsmartisanos/widget/R$string;->emergency_call_dialog_number_for_display:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 52
    :cond_4
    sget-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->_phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53
    sget-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->_location:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_5
    sput-object p1, Lsmartisanos/app/contacts/phone/PhoneLocation;->_phone:Ljava/lang/String;

    .line 55
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "+86"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 56
    sget-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->mInternationalNumberList:Lsmartisanos/app/contacts/phone/InternationalNumberList;

    if-nez v0, :cond_6

    .line 57
    invoke-static {p0}, Lsmartisanos/app/contacts/phone/InternationalNumberList;->getInstance(Landroid/content/Context;)Lsmartisanos/app/contacts/phone/InternationalNumberList;

    move-result-object v0

    sput-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->mInternationalNumberList:Lsmartisanos/app/contacts/phone/InternationalNumberList;

    .line 59
    :cond_6
    sget-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->mInternationalNumberList:Lsmartisanos/app/contacts/phone/InternationalNumberList;

    invoke-virtual {v0, p1}, Lsmartisanos/app/contacts/phone/InternationalNumberList;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->_location:Ljava/lang/String;

    .line 75
    :goto_1
    sget-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->_location:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_7
    invoke-static {p1}, Lsmartisanos/app/contacts/phone/FixedNumberList;->isFixedNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 61
    sget-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->mFixedNumberInstance:Lsmartisanos/app/contacts/phone/FixedNumberList;

    if-nez v0, :cond_8

    .line 62
    invoke-static {p0}, Lsmartisanos/app/contacts/phone/FixedNumberList;->getInstance(Landroid/content/Context;)Lsmartisanos/app/contacts/phone/FixedNumberList;

    move-result-object v0

    sput-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->mFixedNumberInstance:Lsmartisanos/app/contacts/phone/FixedNumberList;

    .line 64
    :cond_8
    sget-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->mFixedNumberInstance:Lsmartisanos/app/contacts/phone/FixedNumberList;

    invoke-virtual {v0, p1}, Lsmartisanos/app/contacts/phone/FixedNumberList;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->_location:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 65
    :cond_9
    :try_start_2
    invoke-static {p1}, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->isSpecialServiceNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 66
    sget-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->mSpecialServiceNumberInstance:Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;

    if-nez v0, :cond_a

    .line 67
    invoke-static {p0}, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->getInstance(Landroid/content/Context;)Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;

    move-result-object v0

    sput-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->mSpecialServiceNumberInstance:Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;

    .line 69
    :cond_a
    sget-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->mSpecialServiceNumberInstance:Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;

    invoke-virtual {v0, p1}, Lsmartisanos/app/contacts/phone/SpecialServiceNumberList;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->_location:Ljava/lang/String;

    goto :goto_1

    .line 70
    :cond_b
    invoke-static {p1}, Lsmartisanos/app/contacts/phone/PhoneLocation;->isMobileNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 71
    invoke-static {p1}, Lsmartisanos/app/contacts/phone/PhoneLocation;->getPhoneLocationJni(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->_location:Ljava/lang/String;

    goto :goto_1

    .line 73
    :cond_c
    const/4 v0, 0x0

    sput-object v0, Lsmartisanos/app/contacts/phone/PhoneLocation;->_location:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static native getPhoneLocationJni(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x14

    .line 79
    const/4 v3, 0x0

    .line 82
    .local v3, "ret":Z
    :try_start_0
    const-class v4, Landroid/telephony/PhoneNumberUtils;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 85
    .local v2, "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_0

    .line 86
    const-string v4, "isLocalEmergencyNumber"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 91
    .local v1, "m":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_1

    .line 92
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    .line 109
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return v3

    .line 88
    .restart local v2    # "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_3
    const-string v4, "isLocalEmergencyNumber"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .restart local v1    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 94
    :cond_1
    const/4 v4, 0x2

    :try_start_4
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v3

    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 103
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 106
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v2    # "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 98
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    .restart local v2    # "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1
.end method

.method private static isMobileNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
