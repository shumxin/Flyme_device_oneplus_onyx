.class Lcom/android/server/PermissionDialog$1;
.super Ljava/util/TimerTask;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PermissionDialog;->updateText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field CountDown:I

.field final synthetic this$0:Lcom/android/server/PermissionDialog;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/server/PermissionDialog;Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    iput-object p2, p0, Lcom/android/server/PermissionDialog$1;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 183
    # getter for: Lcom/android/server/PermissionDialog;->sCountDown:I
    invoke-static {}, Lcom/android/server/PermissionDialog;->access$200()I

    move-result v0

    iput v0, p0, Lcom/android/server/PermissionDialog$1;->CountDown:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 186
    iget v0, p0, Lcom/android/server/PermissionDialog$1;->CountDown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PermissionDialog$1;->CountDown:I

    .line 187
    iget-object v0, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->uiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$300(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/PermissionDialog$UpdateRunnable;

    iget-object v2, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    iget-object v3, p0, Lcom/android/server/PermissionDialog$1;->val$button:Landroid/widget/Button;

    iget v4, p0, Lcom/android/server/PermissionDialog$1;->CountDown:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/PermissionDialog$UpdateRunnable;-><init>(Lcom/android/server/PermissionDialog;Landroid/widget/Button;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method
