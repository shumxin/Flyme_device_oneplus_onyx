.class Lcom/android/server/net/NetworkPolicyManagerService$11$1;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkPolicyManagerService$11;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/net/NetworkPolicyManagerService$11;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService$11;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$11$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 671
    const-string v0, "NetworkPolicy"

    const-string v1, "tyl runnable updateNetworkRulesLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$11$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$11;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 673
    return-void
.end method
