.class Lcom/android/server/am/OppoPermissionInterceptPolicy$3;
.super Ljava/lang/Object;
.source "OppoPermissionInterceptPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;->showPermissionWindow(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

.field final synthetic val$pcm:Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$3;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iput-object p2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$3;->val$pcm:Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$3;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$3;->val$pcm:Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->showWindow(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V
    invoke-static {v0, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$800(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)V

    .line 528
    return-void
.end method
