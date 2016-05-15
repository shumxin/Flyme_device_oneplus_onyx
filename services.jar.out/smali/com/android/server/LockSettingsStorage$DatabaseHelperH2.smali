.class Lcom/android/server/LockSettingsStorage$DatabaseHelperH2;
.super Lcom/android/server/PersistSQLiteOpenHelper;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseHelperH2"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "locksettings.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LockSettingsDB"


# instance fields
.field private final mCallback:Lcom/android/server/LockSettingsStorage$Callback;

.field final synthetic this$0:Lcom/android/server/LockSettingsStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsStorage;Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/android/server/LockSettingsStorage$Callback;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/server/LockSettingsStorage$DatabaseHelperH2;->this$0:Lcom/android/server/LockSettingsStorage;

    .line 437
    const-string v0, "locksettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/server/PersistSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 438
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/LockSettingsStorage$DatabaseHelperH2;->setWriteAheadLoggingEnabled(Z)V

    .line 439
    iput-object p3, p0, Lcom/android/server/LockSettingsStorage$DatabaseHelperH2;->mCallback:Lcom/android/server/LockSettingsStorage$Callback;

    .line 440
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 443
    const-string v0, "CREATE TABLE locksettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage$DatabaseHelperH2;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 454
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$DatabaseHelperH2;->mCallback:Lcom/android/server/LockSettingsStorage$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/LockSettingsStorage$Callback;->initialize(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 455
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    .line 459
    move v0, p2

    .line 460
    .local v0, "upgradeVersion":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 462
    const/4 v0, 0x2

    .line 465
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 466
    const-string v1, "LockSettingsDB"

    const-string v2, "Failed to upgrade database!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_1
    return-void
.end method
