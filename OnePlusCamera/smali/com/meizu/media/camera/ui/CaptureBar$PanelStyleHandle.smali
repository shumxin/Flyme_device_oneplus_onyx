.class final Lcom/meizu/media/camera/ui/CaptureBar$PanelStyleHandle;
.super Lcom/oneplus/base/Handle;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelStyleHandle"
.end annotation


# instance fields
.field public final style:Lcom/meizu/media/camera/ui/CaptureControlPanel$Style;

.field final synthetic this$0:Lcom/meizu/media/camera/ui/CaptureBar;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/ui/CaptureBar;Lcom/meizu/media/camera/ui/CaptureControlPanel$Style;)V
    .locals 1
    .param p2, "style"    # Lcom/meizu/media/camera/ui/CaptureControlPanel$Style;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/meizu/media/camera/ui/CaptureBar$PanelStyleHandle;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    .line 166
    const-string v0, "CaptureControlPanelStyle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 167
    iput-object p2, p0, Lcom/meizu/media/camera/ui/CaptureBar$PanelStyleHandle;->style:Lcom/meizu/media/camera/ui/CaptureControlPanel$Style;

    .line 168
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$PanelStyleHandle;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    # invokes: Lcom/meizu/media/camera/ui/CaptureBar;->restorePanelStyle(Lcom/meizu/media/camera/ui/CaptureBar$PanelStyleHandle;)V
    invoke-static {v0, p0}, Lcom/meizu/media/camera/ui/CaptureBar;->access$200(Lcom/meizu/media/camera/ui/CaptureBar;Lcom/meizu/media/camera/ui/CaptureBar$PanelStyleHandle;)V

    .line 174
    return-void
.end method
