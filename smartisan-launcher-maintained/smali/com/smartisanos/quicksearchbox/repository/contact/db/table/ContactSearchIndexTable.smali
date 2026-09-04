.class public Lcom/smartisanos/quicksearchbox/repository/contact/db/table/ContactSearchIndexTable;
.super Ljava/lang/Object;
.source "ContactSearchIndexTable.java"


.field public static final COLUMN_CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final COLUMN_DATAVERSION:Ljava/lang/String; = "version"

.field public static final COLUMN_DISPLAYNAME:Ljava/lang/String; = "displayname"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LOOKUPKEY:Ljava/lang/String; = "lookupkey"

.field public static final COLUMN_NUMBER:Ljava/lang/String; = "number"

.field public static final COLUMN_ORIGININDEX:Ljava/lang/String; = "origin_index"

.field public static final COLUMN_QWERTYINDEX:Ljava/lang/String; = "qwerty_index"

.field public static final COLUMN_T9INDEX:Ljava/lang/String; = "t9_index"

.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = " CREATE TABLE IF NOT EXISTS contact_index(_id INTEGER  UNIQUE NOT NULL,contact_id INTEGER  NOT NULL,version INTEGER NOT NULL,lookupkey TEXT  NOT NULL,displayname TEXT NOT NULL,number TEXT NOT NULL,origin_index TEXT NOT NULL,qwerty_index TEXT NOT NULL,t9_index TEXT NOT NULL);"

.field public static final DROP_TABLE_SQL:Ljava/lang/String; = "drop TABLE IF EXISTS contact_index;"

.field public static final TABLE_NAME:Ljava/lang/String; = "contact_index"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
