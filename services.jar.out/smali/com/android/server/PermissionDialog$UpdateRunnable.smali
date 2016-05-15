.class final Lcom/android/server/PermissionDialog$UpdateRunnable;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UpdateRunnable"
.end annotation


# instance fields
.field final CountDown:I

.field final button:Landroid/widget/Button;

.field final sum:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PermissionDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/PermissionDialog;Landroid/widget/Button;I)V
    .locals 3
    .param p2, "bt"    # Landroid/widget/Button;
    .param p3, "num"    # I

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->this$0:Lcom/android/server/PermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->button:Landroid/widget/Button;

    .line 159
    iput p3, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->CountDown:I

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->sum:Ljava/lang/String;

    .line 163
    iget v0, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->CountDown:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 164
    # getter for: Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/PermissionDialog;->access$000(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/PermissionDialog;->access$000(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 171
    iget v0, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->CountDown:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->button:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mToastMsg:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/PermissionDialog;->access$100(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->sum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
