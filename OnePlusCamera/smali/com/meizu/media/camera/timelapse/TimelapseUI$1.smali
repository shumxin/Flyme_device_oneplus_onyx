.class Lcom/meizu/media/camera/timelapse/TimelapseUI$1;
.super Ljava/lang/Object;
.source "TimelapseUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/timelapse/TimelapseUI;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/meizu/media/camera/ui/CaptureButtons;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/timelapse/TimelapseUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/timelapse/TimelapseUI;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/meizu/media/camera/timelapse/TimelapseUI$1;->this$0:Lcom/meizu/media/camera/timelapse/TimelapseUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 153
    check-cast p1, Lcom/meizu/media/camera/ui/CaptureButtons;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/timelapse/TimelapseUI$1;->onComponentFound(Lcom/meizu/media/camera/ui/CaptureButtons;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/ui/CaptureButtons;)V
    .locals 1
    .param p1, "component"    # Lcom/meizu/media/camera/ui/CaptureButtons;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/meizu/media/camera/timelapse/TimelapseUI$1;->this$0:Lcom/meizu/media/camera/timelapse/TimelapseUI;

    # invokes: Lcom/meizu/media/camera/timelapse/TimelapseUI;->onCaptureButtonsFound(Lcom/meizu/media/camera/ui/CaptureButtons;)V
    invoke-static {v0, p1}, Lcom/meizu/media/camera/timelapse/TimelapseUI;->access$000(Lcom/meizu/media/camera/timelapse/TimelapseUI;Lcom/meizu/media/camera/ui/CaptureButtons;)V

    .line 158
    return-void
.end method
