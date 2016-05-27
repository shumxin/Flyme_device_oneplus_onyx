.class Lcom/oppo/widget/Oppo3DScenePreView$19;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DScenePreView;->onProgressChanged(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DScenePreView;

.field final synthetic val$progress:F


# direct methods
.method constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView;F)V
    .locals 0

    .prologue
    .line 2916
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$19;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput p2, p0, Lcom/oppo/widget/Oppo3DScenePreView$19;->val$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$19;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$19;->val$progress:F

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mProgress:F

    .line 2923
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$19;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 2925
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$19;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRender()V

    .line 2926
    return-void
.end method
