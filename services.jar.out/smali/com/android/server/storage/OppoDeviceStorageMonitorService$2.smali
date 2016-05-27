.class Lcom/android/server/storage/OppoDeviceStorageMonitorService$2;
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


# direct methods
.method constructor <init>(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/server/storage/OppoDeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/OppoDeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/storage/OppoDeviceStorageMonitorService;->access$700(Lcom/android/server/storage/OppoDeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 503
    return-void
.end method
