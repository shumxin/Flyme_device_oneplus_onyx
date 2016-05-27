.class Lcom/android/server/display/WifiDisplayController$11$1;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController$11;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayController$11;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController$11;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$11$1;->this$1:Lcom/android/server/display/WifiDisplayController$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 664
    const-string v0, "WifiDisplayController"

    const-string v1, "requestScan when Disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$11$1;->this$1:Lcom/android/server/display/WifiDisplayController$11;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->startScanNow()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$500(Lcom/android/server/display/WifiDisplayController;)V

    .line 666
    return-void
.end method
