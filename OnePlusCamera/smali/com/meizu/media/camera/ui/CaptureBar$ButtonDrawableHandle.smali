.class abstract Lcom/meizu/media/camera/ui/CaptureBar$ButtonDrawableHandle;
.super Lcom/oneplus/base/Handle;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ButtonDrawableHandle"
.end annotation


# instance fields
.field public final drawable:Landroid/graphics/drawable/Drawable;

.field public final flags:I

.field public final handleList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/media/camera/ui/CaptureBar$ButtonDrawableHandle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meizu/media/camera/ui/CaptureBar;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/ui/CaptureBar;Ljava/util/LinkedList;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/media/camera/ui/CaptureBar$ButtonDrawableHandle;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "handleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/meizu/media/camera/ui/CaptureBar$ButtonDrawableHandle;>;"
    iput-object p1, p0, Lcom/meizu/media/camera/ui/CaptureBar$ButtonDrawableHandle;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    .line 107
    const-string v0, "CaptureButtonDrawable"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 108
    iput-object p2, p0, Lcom/meizu/media/camera/ui/CaptureBar$ButtonDrawableHandle;->handleList:Ljava/util/LinkedList;

    .line 109
    iput-object p3, p0, Lcom/meizu/media/camera/ui/CaptureBar$ButtonDrawableHandle;->drawable:Landroid/graphics/drawable/Drawable;

    .line 110
    iput p4, p0, Lcom/meizu/media/camera/ui/CaptureBar$ButtonDrawableHandle;->flags:I

    .line 111
    return-void
.end method
