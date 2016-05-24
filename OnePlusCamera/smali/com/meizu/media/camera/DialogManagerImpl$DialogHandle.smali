.class final Lcom/meizu/media/camera/DialogManagerImpl$DialogHandle;
.super Lcom/oneplus/base/Handle;
.source "DialogManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/DialogManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DialogHandle"
.end annotation


# instance fields
.field public container:Lcom/meizu/media/camera/DialogManagerImpl$DialogContainer;

.field public final dialog:Landroid/app/Dialog;

.field public dialogView:Landroid/view/View;

.field public final dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public final flags:I

.field public final landscapeParams:Lcom/meizu/media/camera/DialogManager$DialogParams;

.field public final portraitParams:Lcom/meizu/media/camera/DialogManager$DialogParams;

.field final synthetic this$0:Lcom/meizu/media/camera/DialogManagerImpl;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/DialogManagerImpl;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Lcom/meizu/media/camera/DialogManager$DialogParams;Lcom/meizu/media/camera/DialogManager$DialogParams;I)V
    .locals 1
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p4, "portraitParams"    # Lcom/meizu/media/camera/DialogManager$DialogParams;
    .param p5, "landscapeParams"    # Lcom/meizu/media/camera/DialogManager$DialogParams;
    .param p6, "flags"    # I

    .prologue
    .line 70
    iput-object p1, p0, Lcom/meizu/media/camera/DialogManagerImpl$DialogHandle;->this$0:Lcom/meizu/media/camera/DialogManagerImpl;

    .line 71
    const-string v0, "Dialog"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 72
    iput-object p2, p0, Lcom/meizu/media/camera/DialogManagerImpl$DialogHandle;->dialog:Landroid/app/Dialog;

    .line 73
    iput-object p3, p0, Lcom/meizu/media/camera/DialogManagerImpl$DialogHandle;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 74
    iput p6, p0, Lcom/meizu/media/camera/DialogManagerImpl$DialogHandle;->flags:I

    .line 75
    iput-object p4, p0, Lcom/meizu/media/camera/DialogManagerImpl$DialogHandle;->portraitParams:Lcom/meizu/media/camera/DialogManager$DialogParams;

    .line 76
    iput-object p5, p0, Lcom/meizu/media/camera/DialogManagerImpl$DialogHandle;->landscapeParams:Lcom/meizu/media/camera/DialogManager$DialogParams;

    .line 77
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/meizu/media/camera/DialogManagerImpl$DialogHandle;->closeDirectly()V

    .line 82
    return-void
.end method

.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/meizu/media/camera/DialogManagerImpl$DialogHandle;->this$0:Lcom/meizu/media/camera/DialogManagerImpl;

    # invokes: Lcom/meizu/media/camera/DialogManagerImpl;->verifyAccess()V
    invoke-static {v0}, Lcom/meizu/media/camera/DialogManagerImpl;->access$000(Lcom/meizu/media/camera/DialogManagerImpl;)V

    .line 88
    iget-object v0, p0, Lcom/meizu/media/camera/DialogManagerImpl$DialogHandle;->this$0:Lcom/meizu/media/camera/DialogManagerImpl;

    const/4 v1, 0x0

    # invokes: Lcom/meizu/media/camera/DialogManagerImpl;->dismissDialog(Lcom/meizu/media/camera/DialogManagerImpl$DialogHandle;Z)V
    invoke-static {v0, p0, v1}, Lcom/meizu/media/camera/DialogManagerImpl;->access$100(Lcom/meizu/media/camera/DialogManagerImpl;Lcom/meizu/media/camera/DialogManagerImpl$DialogHandle;Z)V

    .line 89
    return-void
.end method
