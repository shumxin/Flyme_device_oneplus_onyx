.class public Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/Oppo3DScenePreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FastMoveInfo"
.end annotation


# instance fields
.field public mDeltaOffset:F

.field public mFastCurPos:I

.field public mFastStartItem:I

.field public mFastStartPos:I

.field public mFastTrackFront:Z

.field final synthetic this$0:Lcom/oppo/widget/Oppo3DScenePreView;


# direct methods
.method protected constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView;)V
    .locals 0

    .prologue
    .line 2536
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(I)V
    .locals 2
    .param p1, "startX"    # I

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mFastStartItem:I

    .line 2549
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mDeltaOffset:F

    .line 2550
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mFastCurPos:I

    .line 2551
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oppo/widget/Oppo3DScenePreView;->pointFastItem(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$FastMoveInfo;->mFastStartPos:I

    .line 2554
    return-void
.end method
