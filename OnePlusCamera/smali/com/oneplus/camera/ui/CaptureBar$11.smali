.class Lcom/oneplus/camera/ui/CaptureBar$11;
.super Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar;->setButtonBackground(Lcom/oneplus/camera/ui/CaptureButtons$Button;Landroid/graphics/drawable/Drawable;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;Ljava/util/LinkedList;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p3, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x2"    # I

    .prologue
    .line 806
    .local p2, "x0":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;>;"
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$11;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;-><init>(Lcom/oneplus/camera/ui/CaptureBar;Ljava/util/LinkedList;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 810
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$11;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    # invokes: Lcom/oneplus/camera/ui/CaptureBar;->restoreButtonBackground(Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/ui/CaptureBar;->access$1700(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ButtonDrawableHandle;)V

    .line 811
    return-void
.end method