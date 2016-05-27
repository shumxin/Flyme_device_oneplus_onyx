.class Lcom/oppo/widget/Oppo3DScenePreView$3;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DScenePreView;->updateTexture(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DScenePreView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView;I)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$3;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput p2, p0, Lcom/oppo/widget/Oppo3DScenePreView$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$3;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$3;->val$index:I

    invoke-virtual {v0, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->updateTextureInfoBuffer(I)V

    .line 915
    iget v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$3;->val$index:I

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$3;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 916
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$3;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRender()V

    .line 918
    :cond_0
    return-void
.end method
