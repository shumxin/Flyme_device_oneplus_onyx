.class public Lcom/oppo/widget/Oppo3DGLView;
.super Landroid/opengl/GLSurfaceView;
.source "Oppo3DGLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/Oppo3DGLView$EventCode;,
        Lcom/oppo/widget/Oppo3DGLView$On3DEventListener;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "Oppo3DGLView"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mOffset:F

.field protected mOn3DEventListener:Lcom/oppo/widget/Oppo3DGLView$On3DEventListener;

.field protected mOppo3DGLRenderer:Lcom/oppo/widget/Oppo3DGLRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/Oppo3DGLView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DGLView;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DGLView;->requestFocus()Z

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DGLView;->setFocusableInTouchMode(Z)V

    .line 80
    return-void
.end method


# virtual methods
.method public clearTexture()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DGLView;->clearTexture(Z)V

    .line 218
    return-void
.end method

.method public clearTexture(Z)V
    .locals 1
    .param p1, "render"    # Z

    .prologue
    .line 226
    new-instance v0, Lcom/oppo/widget/Oppo3DGLView$4;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DGLView$4;-><init>(Lcom/oppo/widget/Oppo3DGLView;)V

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DGLView;->post(Ljava/lang/Runnable;)Z

    .line 234
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DGLView;->isDirtyRenderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DGLView;->requestRender()V

    .line 237
    :cond_0
    return-void
.end method

.method protected invokeOn3DEvent(Lcom/oppo/widget/Oppo3DGLView$EventCode;III)Ljava/lang/Object;
    .locals 1
    .param p1, "eventCode"    # Lcom/oppo/widget/Oppo3DGLView$EventCode;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLView;->mOn3DEventListener:Lcom/oppo/widget/Oppo3DGLView$On3DEventListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLView;->mOn3DEventListener:Lcom/oppo/widget/Oppo3DGLView$On3DEventListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oppo/widget/Oppo3DGLView$On3DEventListener;->on3DEvent(Lcom/oppo/widget/Oppo3DGLView$EventCode;III)Ljava/lang/Object;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected invokeOn3DEventDelay(Lcom/oppo/widget/Oppo3DGLView$EventCode;IIII)V
    .locals 6
    .param p1, "eventCode"    # Lcom/oppo/widget/Oppo3DGLView$EventCode;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "delay"    # I

    .prologue
    .line 178
    new-instance v0, Lcom/oppo/widget/Oppo3DGLView$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/Oppo3DGLView$2;-><init>(Lcom/oppo/widget/Oppo3DGLView;Lcom/oppo/widget/Oppo3DGLView$EventCode;III)V

    int-to-long v2, p5

    invoke-virtual {p0, v0, v2, v3}, Lcom/oppo/widget/Oppo3DGLView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    return-void
.end method

.method public isDirtyRenderMode()Z
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DGLView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 114
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLView;->mOppo3DGLRenderer:Lcom/oppo/widget/Oppo3DGLRenderer;

    invoke-virtual {v0}, Lcom/oppo/widget/Oppo3DGLRenderer;->onDetachedFromWindow()V

    .line 115
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 96
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 101
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected postInvokeOn3DEvent(Lcom/oppo/widget/Oppo3DGLView$EventCode;III)V
    .locals 6
    .param p1, "eventCode"    # Lcom/oppo/widget/Oppo3DGLView$EventCode;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 158
    new-instance v0, Lcom/oppo/widget/Oppo3DGLView$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/Oppo3DGLView$1;-><init>(Lcom/oppo/widget/Oppo3DGLView;Lcom/oppo/widget/Oppo3DGLView$EventCode;III)V

    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DGLView;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method

.method public requestRenderDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 258
    if-gtz p1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DGLView;->requestRender()V

    .line 273
    :goto_0
    return-void

    .line 261
    :cond_0
    new-instance v0, Lcom/oppo/widget/Oppo3DGLView$5;

    invoke-direct {v0, p0}, Lcom/oppo/widget/Oppo3DGLView$5;-><init>(Lcom/oppo/widget/Oppo3DGLView;)V

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oppo/widget/Oppo3DGLView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public set3DEventListener(Lcom/oppo/widget/Oppo3DGLView$On3DEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oppo/widget/Oppo3DGLView$On3DEventListener;

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DGLView;->mOn3DEventListener:Lcom/oppo/widget/Oppo3DGLView$On3DEventListener;

    goto :goto_0
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 86
    instance-of v0, p1, Lcom/oppo/widget/Oppo3DGLRenderer;

    if-eqz v0, :cond_0

    .line 87
    check-cast p1, Lcom/oppo/widget/Oppo3DGLRenderer;

    .end local p1    # "renderer":Landroid/opengl/GLSurfaceView$Renderer;
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DGLView;->mOppo3DGLRenderer:Lcom/oppo/widget/Oppo3DGLRenderer;

    .line 91
    :goto_0
    return-void

    .line 89
    .restart local p1    # "renderer":Landroid/opengl/GLSurfaceView$Renderer;
    :cond_0
    const-string v0, "Oppo3DGLView"

    const-string v1, "renderer not instanceof Oppo3DGLRenderer."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTexture(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 194
    new-instance v0, Lcom/oppo/widget/Oppo3DGLView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/oppo/widget/Oppo3DGLView$3;-><init>(Lcom/oppo/widget/Oppo3DGLView;ILandroid/graphics/Bitmap;)V

    .line 210
    .local v0, "updatetextureRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/Oppo3DGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public setTextureBufferSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLView;->mOppo3DGLRenderer:Lcom/oppo/widget/Oppo3DGLRenderer;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/Oppo3DGLRenderer;->setTextureBufferSize(I)V

    .line 285
    return-void
.end method
