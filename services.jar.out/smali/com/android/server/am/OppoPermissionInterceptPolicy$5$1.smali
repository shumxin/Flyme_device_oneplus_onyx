.class Lcom/android/server/am/OppoPermissionInterceptPolicy$5$1;
.super Ljava/lang/Object;
.source "OppoPermissionInterceptPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/OppoPermissionInterceptPolicy$5;


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy$5;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$5$1;->this$1:Lcom/android/server/am/OppoPermissionInterceptPolicy$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$5$1;->this$1:Lcom/android/server/am/OppoPermissionInterceptPolicy$5;

    iget-object v0, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$5;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$5$1;->this$1:Lcom/android/server/am/OppoPermissionInterceptPolicy$5;

    iget-object v1, v1, Lcom/android/server/am/OppoPermissionInterceptPolicy$5;->val$pcm:Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$5$1;->this$1:Lcom/android/server/am/OppoPermissionInterceptPolicy$5;

    iget-object v3, v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$5;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mSaveCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$900(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->processPermission(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1000(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;IZ)V

    .line 586
    return-void
.end method
