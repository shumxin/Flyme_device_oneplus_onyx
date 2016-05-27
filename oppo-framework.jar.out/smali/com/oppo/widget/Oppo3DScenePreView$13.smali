.class Lcom/oppo/widget/Oppo3DScenePreView$13;
.super Ljava/lang/Object;
.source "Oppo3DScenePreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DScenePreView;->scrollZoomIn()V
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
    .line 1314
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DScenePreView$13;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$13;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    const/4 v1, 0x5

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollType:I

    .line 1321
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$13;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    iget v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/oppo/widget/Oppo3DScenePreView;->mScrollStatus:I

    .line 1322
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DScenePreView$13;->this$0:Lcom/oppo/widget/Oppo3DScenePreView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DScenePreView;->requestRender()V

    .line 1323
    return-void
.end method
