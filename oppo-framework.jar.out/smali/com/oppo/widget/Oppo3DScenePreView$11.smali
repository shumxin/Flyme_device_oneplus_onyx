.class Lcom/oppo/widget/Oppo3DScenePreView$11;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DScenePreView;->scrollFastMove(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DScenePreView;

.field final synthetic val$deltaX:I

.field final synthetic val$fastX:I


# direct methods
.method constructor <init>(Lcom/oppo/widget/Oppo3DScenePreView;II)V
    .locals 0

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$11;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iput p2, p0, Lcom/oppo/widget/Oppo3DScenePreView$11;->val$fastX:I

    iput p3, p0, Lcom/oppo/widget/Oppo3DScenePreView$11;->val$deltaX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$11;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$11;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1234
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$11;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$11;->val$fastX:I

    iget v2, p0, Lcom/oppo/widget/Oppo3DScenePreView$11;->val$deltaX:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/widget/Oppo3DScenePreView;->pointFastItem(II)I

    .line 1236
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$11;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRender()V

    goto :goto_0
.end method
