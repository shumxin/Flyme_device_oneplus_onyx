.class Lcom/meizu/media/camera/ui/CaptureBar$12;
.super Lcom/meizu/media/camera/ui/CaptureBar$ButtonDrawableHandle;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/CaptureBar;->setButtonIcon(Lcom/meizu/media/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/CaptureBar;Ljava/util/LinkedList;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p3, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x2"    # I

    .prologue
    .line 842
    .local p2, "x0":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/meizu/media/camera/ui/CaptureBar$ButtonDrawableHandle;>;"
    iput-object p1, p0, Lcom/meizu/media/camera/ui/CaptureBar$12;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/media/camera/ui/CaptureBar$ButtonDrawableHandle;-><init>(Lcom/meizu/media/camera/ui/CaptureBar;Ljava/util/LinkedList;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 846
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$12;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    # invokes: Lcom/meizu/media/camera/ui/CaptureBar;->restoreButtonIcon(Lcom/meizu/media/camera/ui/CaptureBar$ButtonDrawableHandle;)V
    invoke-static {v0, p0}, Lcom/meizu/media/camera/ui/CaptureBar;->access$1800(Lcom/meizu/media/camera/ui/CaptureBar;Lcom/meizu/media/camera/ui/CaptureBar$ButtonDrawableHandle;)V

    .line 847
    return-void
.end method
