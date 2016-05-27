.class Lcom/android/server/storage/OppoDeviceStorageMonitorService$3;
.super Ljava/lang/Object;
.source "OppoDeviceStorageMonitorService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/OppoDeviceStorageMonitorService;->OppodsmDialog(Ljava/lang/String;Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

.field final synthetic val$issd:Z


# direct methods
.method constructor <init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;Z)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    iput-boolean p2, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$3;->val$issd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$3;->val$issd:Z

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$800(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$400(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$800(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$400(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
