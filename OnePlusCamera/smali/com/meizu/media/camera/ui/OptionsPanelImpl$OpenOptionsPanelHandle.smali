.class final Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;
.super Lcom/oneplus/base/Handle;
.source "OptionsPanelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/OptionsPanelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OpenOptionsPanelHandle"
.end annotation


# instance fields
.field public final reason:Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;

.field final synthetic this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;)V
    .locals 1
    .param p2, "reason"    # Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    .line 308
    const-string v0, "OptionsPanelClose"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 309
    iput-object p2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;->reason:Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;

    .line 310
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    # invokes: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->closeOptionsPanelByRequest(Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;I)V
    invoke-static {v0, p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$400(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;I)V

    .line 316
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/oneplus/base/Handle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{ Reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OpenOptionsPanelHandle;->reason:Lcom/meizu/media/camera/ui/OptionsPanel$OptionsPanelOpenByRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
