.class Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/Oppo3DScenePreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformLongPress"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/oppo/widget/Oppo3DScenePreView;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView;)V
    .locals 0

    .prologue
    .line 2984
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView;Lcom/oppo/widget/Oppo3DScenePreView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/widget/Oppo3DScenePreView;
    .param p2, "x1"    # Lcom/oppo/widget/Oppo3DScenePreView$1;

    .prologue
    .line 2984
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;-><init>(Lcom/oppo/widget/Oppo3DScenePreView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 2992
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    # invokes: Lcom/oppo/widget/Oppo3DScenePreView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->access$400(Lcom/oppo/widget/Oppo3DScenePreView;)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;->mOriginalAttachCount:I

    .line 2993
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 3008
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mMotionItem:I

    .line 3010
    .local v0, "motionPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3011
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;->sameWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3012
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v1, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mOnLongClickListener:Lcom/oppo/widget/Oppo3DScenePreView$OnLongClickListener;

    if-eqz v1, :cond_0

    .line 3013
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mPressHandled:Z

    .line 3014
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v1, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mOnLongClickListener:Lcom/oppo/widget/Oppo3DScenePreView$OnLongClickListener;

    invoke-interface {v1, v0}, Lcom/oppo/widget/Oppo3DScenePreView$OnLongClickListener;->onLongClick(I)V

    .line 3019
    :cond_0
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    # invokes: Lcom/oppo/widget/Oppo3DScenePreView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->access$500(Lcom/oppo/widget/Oppo3DScenePreView;)I

    move-result v0

    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
