.class Lcom/oppo/widget/Oppo3DGLView$5;
.super Ljava/lang/Object;
.source "Oppo3DGLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DGLView;->requestRenderDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DGLView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/Oppo3DGLView;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DGLView$5;->this$0:Lcom/oppo/widget/Oppo3DGLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLView$5;->this$0:Lcom/oppo/widget/Oppo3DGLView;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DGLView;->requestRender()V

    .line 269
    return-void
.end method
