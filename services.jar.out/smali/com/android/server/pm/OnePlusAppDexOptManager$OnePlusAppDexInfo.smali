.class public Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;
.super Ljava/lang/Object;
.source "OnePlusAppDexOptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OnePlusAppDexOptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnePlusAppDexInfo"
.end annotation


# static fields
.field public static final BOOT_DONE_ADDED_APK:I = 0x2

.field public static final BOOT_UP_ADDED_APK:I = 0x1

.field public static final ODEX_STEP_BEFORE:I = 0x1

.field public static final ODEX_STEP_DOING:I = 0x2

.field public static final ODEX_STEP_FINISH:I = 0x3

.field public static final ODEX_STEP_REMOVED:I = 0x4


# instance fields
.field protected mDexOptStep:I

.field protected mFlag:I

.field protected mPkg:Landroid/content/pm/PackageParser$Package;

.field protected mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/OnePlusAppDexOptManager;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/OnePlusAppDexOptManager;Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v0, 0x1

    .line 550
    iput-object p1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->this$0:Lcom/android/server/pm/OnePlusAppDexOptManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput v0, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mFlag:I

    .line 548
    iput v0, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mDexOptStep:I

    .line 551
    iput-object p2, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    .line 552
    if-eqz p2, :cond_0

    .line 553
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mPkgName:Ljava/lang/String;

    .line 555
    :cond_0
    return-void
.end method


# virtual methods
.method public setPackageParser(Landroid/content/pm/PackageParser$Package;)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    .line 559
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnePlusAppDexInfo{mPkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDexOptStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mDexOptStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/OnePlusAppDexOptManager$OnePlusAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method
