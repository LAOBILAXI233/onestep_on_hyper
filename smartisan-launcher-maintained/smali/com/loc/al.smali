.class public Lcom/loc/al;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DB.java"


.field private a:Lcom/loc/ai;


.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/loc/ai;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p5, p0, Lcom/loc/al;->a:Lcom/loc/ai;

    return-void
.end method


.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/al;->a:Lcom/loc/ai;

    invoke-interface {v0, p1}, Lcom/loc/ai;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/loc/al;->a:Lcom/loc/ai;

    invoke-interface {v0, p1, p2, p3}, Lcom/loc/ai;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
