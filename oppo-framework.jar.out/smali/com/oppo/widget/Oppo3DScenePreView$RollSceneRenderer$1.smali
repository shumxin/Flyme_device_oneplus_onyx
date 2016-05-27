.class Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer$1;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;

.field final synthetic val$gl:Ljavax/microedition/khronos/opengles/GL10;


# direct methods
.method constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .prologue
    .line 2461
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer$1;->this$1:Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;

    iput-object p2, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer$1;->val$gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer$1;->this$1:Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer$1;->val$gl:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer$1;->this$1:Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;

    iget-object v2, v2, Lcom/oppo/widget/Oppo3DScenePreView$RollSceneRenderer;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v2, v2, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/widget/Oppo3DScenePreView;->preLoadTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 2465
    return-void
.end method
