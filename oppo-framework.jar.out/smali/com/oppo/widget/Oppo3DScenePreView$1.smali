.class Lcom/oppo/widget/Oppo3DScenePreView$1;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DScenePreView;->setScrollItem(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DScenePreView;

.field final synthetic val$select:I

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView;II)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$1;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput p2, p0, Lcom/oppo/widget/Oppo3DScenePreView$1;->val$select:I

    iput p3, p0, Lcom/oppo/widget/Oppo3DScenePreView$1;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$1;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$1;->val$select:I

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    .line 720
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$1;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$1;->val$total:I

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mTotalItem:I

    .line 722
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$1;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$1;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRender()V

    .line 725
    :cond_0
    return-void
.end method
