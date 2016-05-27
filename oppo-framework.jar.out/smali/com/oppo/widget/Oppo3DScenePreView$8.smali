.class Lcom/oppo/widget/Oppo3DScenePreView$8;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DScenePreView;->scrollTouch()V
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
    .line 1084
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$8;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$8;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    if-eqz v0, :cond_1

    .line 1091
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$8;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    const/4 v1, 0x2

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 1092
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$8;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1101
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$8;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1103
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$8;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRender()V

    .line 1104
    return-void

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$8;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mMotionItem:I

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$8;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$8;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$8;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mOnLongClickListener:Lcom/oppo/widget/Oppo3DScenePreView$OnLongClickListener;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$8;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mPerformLongPress:Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;->rememberWindowAttachCount()V

    .line 1097
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$8;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$8;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v1, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mPerformLongPress:Lcom/oppo/widget/Oppo3DScenePreView$PerformLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/widget/Oppo3DScenePreView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
