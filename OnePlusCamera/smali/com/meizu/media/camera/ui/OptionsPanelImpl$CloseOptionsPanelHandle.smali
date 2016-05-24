.class final Lcom/meizu/media/camera/ui/OptionsPanelImpl$CloseOptionsPanelHandle;
.super Lcom/oneplus/base/Handle;
.source "OptionsPanelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/OptionsPanelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CloseOptionsPanelHandle"
.end annotation


# instance fields
.field public final reason:Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;

.field final synthetic this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;)V
    .locals 1
    .param p2, "reason"    # Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$CloseOptionsPanelHandle;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .line 284
    const-string v0, "OptionsPanelClose"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 285
    iput-object p2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$CloseOptionsPanelHandle;->reason:Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    .line 286
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$CloseOptionsPanelHandle;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    invoke-virtual {v0, p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->openOptionsPanel(Lcom/meizu/media/camera/ui/OptionsPanelImpl$CloseOptionsPanelHandle;I)V

    .line 292
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/oneplus/base/Handle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{ Reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$CloseOptionsPanelHandle;->reason:Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelCloseReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
