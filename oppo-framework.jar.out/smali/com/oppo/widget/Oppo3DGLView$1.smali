.class Lcom/oppo/widget/Oppo3DGLView$1;
.super Ljava/lang/Object;
.source "Oppo3DGLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/Oppo3DGLView;->postInvokeOn3DEvent(Lcom/oppo/widget/Oppo3DGLView$EventCode;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/Oppo3DGLView;

.field final synthetic val$arg1:I

.field final synthetic val$arg2:I

.field final synthetic val$arg3:I

.field final synthetic val$eventCode:Lcom/oppo/widget/Oppo3DGLView$EventCode;


# direct methods
.method constructor <init>(Lcom/oppo/widget/Oppo3DGLView;Lcom/oppo/widget/Oppo3DGLView$EventCode;III)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DGLView$1;->this$0:Lcom/oppo/widget/Oppo3DGLView;

    iput-object p2, p0, Lcom/oppo/widget/Oppo3DGLView$1;->val$eventCode:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    iput p3, p0, Lcom/oppo/widget/Oppo3DGLView$1;->val$arg1:I

    iput p4, p0, Lcom/oppo/widget/Oppo3DGLView$1;->val$arg2:I

    iput p5, p0, Lcom/oppo/widget/Oppo3DGLView$1;->val$arg3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 162
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLView$1;->this$0:Lcom/oppo/widget/Oppo3DGLView;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLView$1;->val$eventCode:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    iget v2, p0, Lcom/oppo/widget/Oppo3DGLView$1;->val$arg1:I

    iget v3, p0, Lcom/oppo/widget/Oppo3DGLView$1;->val$arg2:I

    iget v4, p0, Lcom/oppo/widget/Oppo3DGLView$1;->val$arg3:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oppo/widget/Oppo3DGLView;->invokeOn3DEvent(Lcom/oppo/widget/Oppo3DGLView$EventCode;III)Ljava/lang/Object;

    .line 163
    return-void
.end method
