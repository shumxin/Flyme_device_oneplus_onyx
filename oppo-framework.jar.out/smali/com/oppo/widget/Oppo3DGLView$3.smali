.class Lcom/oppo/widget/Oppo3DGLView$3;
.super Ljava/lang/Object;
.source "Oppo3DGLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DGLView;->setTexture(ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DGLView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/oppo/widget/Oppo3DGLView;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DGLView$3;->this$0:Lcom/oppo/widget/Oppo3DGLView;

    iput p2, p0, Lcom/oppo/widget/Oppo3DGLView$3;->val$index:I

    iput-object p3, p0, Lcom/oppo/widget/Oppo3DGLView$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLView$3;->this$0:Lcom/oppo/widget/Oppo3DGLView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DGLView;->mOppo3DGLRenderer:Lcom/oppo/widget/Oppo3DGLRenderer;

    iget v1, p0, Lcom/oppo/widget/Oppo3DGLView$3;->val$index:I

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLView$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/widget/Oppo3DGLRenderer;->updateTexture(ILandroid/graphics/Bitmap;)V

    .line 204
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLView$3;->this$0:Lcom/oppo/widget/Oppo3DGLView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DGLView;->isDirtyRenderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLView$3;->this$0:Lcom/oppo/widget/Oppo3DGLView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DGLView;->requestRender()V

    .line 207
    :cond_0
    return-void
.end method
