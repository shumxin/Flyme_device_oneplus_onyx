.class Lcom/meizu/media/camera/ui/CaptureBar$ButtonStyleHandle;
.super Lcom/oneplus/base/Handle;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonStyleHandle"
.end annotation


# instance fields
.field public final button:Lcom/meizu/media/camera/ui/CaptureButtons$Button;

.field public final flags:I

.field public final style:Lcom/meizu/media/camera/ui/CaptureButtons$ButtonStyle;

.field final synthetic this$0:Lcom/meizu/media/camera/ui/CaptureBar;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/ui/CaptureBar;Lcom/meizu/media/camera/ui/CaptureButtons$Button;Lcom/meizu/media/camera/ui/CaptureButtons$ButtonStyle;I)V
    .locals 1
    .param p2, "button"    # Lcom/meizu/media/camera/ui/CaptureButtons$Button;
    .param p3, "style"    # Lcom/meizu/media/camera/ui/CaptureButtons$ButtonStyle;
    .param p4, "flags"    # I

    .prologue
    .line 123
    iput-object p1, p0, Lcom/meizu/media/camera/ui/CaptureBar$ButtonStyleHandle;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    .line 124
    const-string v0, "CaptureButtonStyle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 125
    iput-object p2, p0, Lcom/meizu/media/camera/ui/CaptureBar$ButtonStyleHandle;->button:Lcom/meizu/media/camera/ui/CaptureButtons$Button;

    .line 126
    iput-object p3, p0, Lcom/meizu/media/camera/ui/CaptureBar$ButtonStyleHandle;->style:Lcom/meizu/media/camera/ui/CaptureButtons$ButtonStyle;

    .line 127
    iput p4, p0, Lcom/meizu/media/camera/ui/CaptureBar$ButtonStyleHandle;->flags:I

    .line 128
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$ButtonStyleHandle;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    # invokes: Lcom/meizu/media/camera/ui/CaptureBar;->restoreButtonStyle(Lcom/meizu/media/camera/ui/CaptureBar$ButtonStyleHandle;I)V
    invoke-static {v0, p0, p1}, Lcom/meizu/media/camera/ui/CaptureBar;->access$000(Lcom/meizu/media/camera/ui/CaptureBar;Lcom/meizu/media/camera/ui/CaptureBar$ButtonStyleHandle;I)V

    .line 134
    return-void
.end method
