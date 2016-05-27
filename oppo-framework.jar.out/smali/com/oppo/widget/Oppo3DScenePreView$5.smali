.class Lcom/oppo/widget/Oppo3DScenePreView$5;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DScenePreView;->invokeOnScrollChanged()V
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
    .line 1005
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$5;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$5;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget-object v0, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mOnScrollListener:Lcom/oppo/widget/Oppo3DScenePreView$OnScrollListener;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DScenePreView$5;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v1, Lcom/oppo/widget/Oppo3DScenePreView;->mCurItem:I

    invoke-interface {v0, v1}, Lcom/oppo/widget/Oppo3DScenePreView$OnScrollListener;->onScrollItemChanged(I)V

    .line 1009
    return-void
.end method
