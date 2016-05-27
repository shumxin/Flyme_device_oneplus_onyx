.class Lcom/oppo/widget/Oppo3DScenePreView$6;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollComplete()V
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
    .line 1026
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$6;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$6;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mOnScrollListener:Lcom/oppo/widget/Oppo3DScenePreView$OnScrollListener;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$6;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    invoke-interface {v0, v1}, Lcom/oppo/widget/Oppo3DScenePreView$OnScrollListener;->onScrollComplete(I)V

    .line 1030
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$6;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    # invokes: Lcom/oppo/widget/Oppo3DScenePreView;->scrollBarChanged()V
    invoke-static {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->access$100(Lcom/oppo/widget/Oppo3DScenePreView;)V

    .line 1031
    return-void
.end method
