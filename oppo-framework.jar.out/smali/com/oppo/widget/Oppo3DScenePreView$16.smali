.class Lcom/oppo/widget/Oppo3DScenePreView$16;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DScenePreView;->preLoadTexture(Ljavax/microedition/khronos/opengles/GL10;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DScenePreView;

.field final synthetic val$current:I

.field final synthetic val$gl:Ljavax/microedition/khronos/opengles/GL10;


# direct methods
.method constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView;ILjavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .prologue
    .line 2474
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$16;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput p2, p0, Lcom/oppo/widget/Oppo3DScenePreView$16;->val$current:I

    iput-object p3, p0, Lcom/oppo/widget/Oppo3DScenePreView$16;->val$gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2477
    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$16;->val$current:I

    add-int/lit8 v2, v4, -0xe

    .line 2478
    .local v2, "start":I
    iget v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$16;->val$current:I

    add-int/lit8 v0, v4, 0xe

    .line 2479
    .local v0, "end":I
    const/4 v3, 0x0

    .line 2481
    .local v3, "texture":I
    if-gez v2, :cond_0

    .line 2482
    const/4 v2, 0x0

    .line 2485
    :cond_0
    iget-object v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$16;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, v4, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_1

    .line 2486
    iget-object v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$16;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v4, v4, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    add-int/lit8 v0, v4, -0x1

    .line 2489
    :cond_1
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 2490
    iget-object v4, p0, Lcom/oppo/widget/Oppo3DScenePreView$16;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v5, p0, Lcom/oppo/widget/Oppo3DScenePreView$16;->val$gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v4, v5, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->getTextureId(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v3

    .line 2489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2492
    :cond_2
    return-void
.end method
