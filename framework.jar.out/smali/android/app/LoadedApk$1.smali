.class Landroid/app/LoadedApk$1;
.super Ljava/lang/Object;
.source "LoadedApk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/LoadedApk;


# direct methods
.method constructor <init>(Landroid/app/LoadedApk;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Landroid/app/LoadedApk$1;->this$0:Landroid/app/LoadedApk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 587
    iget-object v0, p0, Landroid/app/LoadedApk$1;->this$0:Landroid/app/LoadedApk;

    # getter for: Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;
    invoke-static {v0}, Landroid/app/LoadedApk;->access$100(Landroid/app/LoadedApk;)Landroid/app/Application;

    move-result-object v0

    const-string v1, "com.lbe.security.oneplus"

    const/16 v2, 0x1dd

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/lbe/security/service/core/client/ClientLoader;->loadLBECLient(Landroid/app/Application;Ljava/lang/String;IZ)V

    .line 593
    return-void
.end method
