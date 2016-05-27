.class final Lcom/android/server/pm/OppoPackageManagerHelper$1;
.super Ljava/lang/Object;
.source "OppoPackageManagerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/OppoPackageManagerHelper;->filterThirdMarket(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;ILjava/util/List;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/android/server/pm/OppoPackageManagerHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/OppoPackageManagerHelper$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/server/pm/OppoPackageManagerHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/OppoPackageManagerHelper$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1047
    return-void
.end method
