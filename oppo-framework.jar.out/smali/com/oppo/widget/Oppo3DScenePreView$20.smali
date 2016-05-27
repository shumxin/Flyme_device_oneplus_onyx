.class Lcom/oppo/widget/Oppo3DScenePreView$20;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DScenePreView;->onProgressEnd(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DScenePreView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView;)V
    .locals 0

    .prologue
    .line 2950
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$20;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2956
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$20;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mTrackOffset:F

    .line 2958
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$20;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 2959
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$20;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 2960
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$20;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 2962
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$20;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRender()V

    .line 2963
    return-void
.end method
