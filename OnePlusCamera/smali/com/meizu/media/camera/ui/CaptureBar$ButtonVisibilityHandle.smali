.class Lcom/meizu/media/camera/ui/CaptureBar$ButtonVisibilityHandle;
.super Lcom/oneplus/base/Handle;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonVisibilityHandle"
.end annotation


# instance fields
.field public final handleList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/media/camera/ui/CaptureBar$ButtonVisibilityHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final isVisible:Z

.field final synthetic this$0:Lcom/meizu/media/camera/ui/CaptureBar;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/ui/CaptureBar;Ljava/util/LinkedList;Z)V
    .locals 1
    .param p3, "isVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/media/camera/ui/CaptureBar$ButtonVisibilityHandle;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "handleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/meizu/media/camera/ui/CaptureBar$ButtonVisibilityHandle;>;"
    iput-object p1, p0, Lcom/meizu/media/camera/ui/CaptureBar$ButtonVisibilityHandle;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    .line 146
    const-string v0, "ButtonVisibility"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 147
    iput-object p2, p0, Lcom/meizu/media/camera/ui/CaptureBar$ButtonVisibilityHandle;->handleList:Ljava/util/LinkedList;

    .line 148
    iput-boolean p3, p0, Lcom/meizu/media/camera/ui/CaptureBar$ButtonVisibilityHandle;->isVisible:Z

    .line 149
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$ButtonVisibilityHandle;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    # invokes: Lcom/meizu/media/camera/ui/CaptureBar;->restoreButtonVisibility(Lcom/meizu/media/camera/ui/CaptureBar$ButtonVisibilityHandle;I)V
    invoke-static {v0, p0, p1}, Lcom/meizu/media/camera/ui/CaptureBar;->access$100(Lcom/meizu/media/camera/ui/CaptureBar;Lcom/meizu/media/camera/ui/CaptureBar$ButtonVisibilityHandle;I)V

    .line 155
    return-void
.end method
