.class public Lcom/android/server/pm/OppoAdbInstallerEntry;
.super Ljava/lang/Object;
.source "OppoAdbInstallerEntry.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoAdbInstallerManager"


# instance fields
.field public mApkPath:Ljava/lang/String;

.field public mObserver:Landroid/content/pm/IPackageInstallObserver2;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/pm/OppoAdbInstallerEntry;->mApkPath:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/OppoAdbInstallerEntry;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 35
    return-void
.end method

.method public static Builder(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)Lcom/android/server/pm/OppoAdbInstallerEntry;
    .locals 1
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "obs"    # Landroid/content/pm/IPackageInstallObserver2;

    .prologue
    .line 38
    new-instance v0, Lcom/android/server/pm/OppoAdbInstallerEntry;

    invoke-direct {v0}, Lcom/android/server/pm/OppoAdbInstallerEntry;-><init>()V

    .line 39
    .local v0, "oaie":Lcom/android/server/pm/OppoAdbInstallerEntry;
    iput-object p0, v0, Lcom/android/server/pm/OppoAdbInstallerEntry;->mApkPath:Ljava/lang/String;

    .line 40
    iput-object p1, v0, Lcom/android/server/pm/OppoAdbInstallerEntry;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 42
    return-object v0
.end method
