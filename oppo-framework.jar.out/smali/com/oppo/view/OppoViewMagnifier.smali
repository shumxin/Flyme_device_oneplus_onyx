.class public Lcom/oppo/view/OppoViewMagnifier;
.super Ljava/lang/Object;
.source "OppoViewMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/view/OppoViewMagnifier$MagnifierView;
    }
.end annotation


# static fields
.field private static final TOLERANCE_TOUCH:I = 0xa


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawingX:F

.field private mDrawingY:F

.field protected mHeight:I

.field private mHostView:Landroid/view/View;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mMagnifierView:Lcom/oppo/view/OppoViewMagnifier$MagnifierView;

.field private mPositionX:I

.field private mPositionY:I

.field protected mScale:F

.field protected mScreenX:I

.field protected mScreenY:I

.field protected mShowing:Z

.field protected mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "hostView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mWindowManager:Landroid/view/WindowManager;

    .line 52
    iput-object v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 53
    iput-object v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mMagnifierView:Lcom/oppo/view/OppoViewMagnifier$MagnifierView;

    .line 57
    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mScale:F

    .line 62
    iput-boolean v3, p0, Lcom/oppo/view/OppoViewMagnifier;->mShowing:Z

    .line 64
    iput v3, p0, Lcom/oppo/view/OppoViewMagnifier;->mPositionX:I

    .line 65
    iput v3, p0, Lcom/oppo/view/OppoViewMagnifier;->mPositionY:I

    .line 66
    iput v4, p0, Lcom/oppo/view/OppoViewMagnifier;->mDrawingX:F

    .line 67
    iput v4, p0, Lcom/oppo/view/OppoViewMagnifier;->mDrawingY:F

    .line 70
    iput-object p1, p0, Lcom/oppo/view/OppoViewMagnifier;->mHostView:Landroid/view/View;

    .line 71
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mContext:Landroid/content/Context;

    .line 73
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mWindowManager:Landroid/view/WindowManager;

    .line 74
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 75
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 76
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 77
    .local v1, "x":I
    int-to-float v2, v1

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mWidth:I

    .line 78
    iget v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mWidth:I

    iput v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mHeight:I

    .line 79
    new-instance v2, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;

    iget-object v3, p0, Lcom/oppo/view/OppoViewMagnifier;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;-><init>(Lcom/oppo/view/OppoViewMagnifier;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mMagnifierView:Lcom/oppo/view/OppoViewMagnifier$MagnifierView;

    .line 80
    return-void
.end method

.method static synthetic access$200(Lcom/oppo/view/OppoViewMagnifier;)F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/view/OppoViewMagnifier;

    .prologue
    .line 44
    iget v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mDrawingX:F

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/view/OppoViewMagnifier;)F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/view/OppoViewMagnifier;

    .prologue
    .line 44
    iget v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mDrawingY:F

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/view/OppoViewMagnifier;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/view/OppoViewMagnifier;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mHostView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected calculateDrawingPosition(II)V
    .locals 4
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 266
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 267
    .local v0, "location":[I
    iget-object v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mHostView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 268
    const/4 v1, 0x0

    aget v1, v0, v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mDrawingX:F

    .line 269
    const/4 v1, 0x1

    aget v1, v0, v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mDrawingY:F

    .line 270
    return-void
.end method

.method protected calculatePosition(II)V
    .locals 2
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .prologue
    .line 260
    iget v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mPositionX:I

    .line 261
    iget v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mHeight:I

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mPositionY:I

    .line 262
    iget v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mPositionY:I

    iget v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mHeight:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mPositionY:I

    .line 263
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 205
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mMagnifierView:Lcom/oppo/view/OppoViewMagnifier$MagnifierView;

    # getter for: Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mMagnifierBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->access$000(Lcom/oppo/view/OppoViewMagnifier$MagnifierView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 208
    const/4 v0, 0x0

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mMagnifierView:Lcom/oppo/view/OppoViewMagnifier$MagnifierView;

    # getter for: Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->mTmpBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->access$100(Lcom/oppo/view/OppoViewMagnifier$MagnifierView;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 212
    .local v1, "tmpBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    const/4 v1, 0x0

    .line 216
    :cond_1
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mHeight:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mScale:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mWidth:I

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-boolean v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mShowing:Z

    if-eqz v0, :cond_0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mMagnifierView:Lcom/oppo/view/OppoViewMagnifier$MagnifierView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iput-boolean v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mShowing:Z

    .line 199
    :cond_0
    return-void

    .line 196
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mShowing:Z

    throw v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mShowing:Z

    return v0
.end method

.method public move(II)V
    .locals 1
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mShowing:Z

    if-eqz v0, :cond_0

    .line 174
    iget v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mScreenX:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mScreenY:I

    if-ne v0, p2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iput p1, p0, Lcom/oppo/view/OppoViewMagnifier;->mScreenX:I

    .line 178
    iput p2, p0, Lcom/oppo/view/OppoViewMagnifier;->mScreenY:I

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/oppo/view/OppoViewMagnifier;->calculatePosition(II)V

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/oppo/view/OppoViewMagnifier;->calculateDrawingPosition(II)V

    .line 183
    invoke-virtual {p0}, Lcom/oppo/view/OppoViewMagnifier;->moveInternal()V

    goto :goto_0
.end method

.method protected moveInternal()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 252
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mPositionX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 253
    iget v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mPositionY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 254
    iget-object v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mMagnifierView:Lcom/oppo/view/OppoViewMagnifier$MagnifierView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mMagnifierView:Lcom/oppo/view/OppoViewMagnifier$MagnifierView;

    invoke-virtual {v1}, Lcom/oppo/view/OppoViewMagnifier$MagnifierView;->invalidate()V

    .line 257
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/oppo/view/OppoViewMagnifier;->mHeight:I

    .line 112
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 127
    iput p1, p0, Lcom/oppo/view/OppoViewMagnifier;->mScale:F

    .line 128
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/oppo/view/OppoViewMagnifier;->mWidth:I

    .line 96
    return-void
.end method

.method public show(II)V
    .locals 1
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/oppo/view/OppoViewMagnifier;->show(IIZ)V

    .line 145
    return-void
.end method

.method public show(IIZ)V
    .locals 1
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mShowing:Z

    if-nez v0, :cond_0

    .line 156
    iput p1, p0, Lcom/oppo/view/OppoViewMagnifier;->mScreenX:I

    .line 157
    iput p2, p0, Lcom/oppo/view/OppoViewMagnifier;->mScreenY:I

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/oppo/view/OppoViewMagnifier;->calculatePosition(II)V

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/oppo/view/OppoViewMagnifier;->calculateDrawingPosition(II)V

    .line 162
    invoke-virtual {p0, p3}, Lcom/oppo/view/OppoViewMagnifier;->showInternal(Z)V

    .line 164
    :cond_0
    return-void
.end method

.method protected showInternal(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 220
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 221
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mHostView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 222
    iget v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mPositionX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 223
    iget v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mPositionY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 224
    iget v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 225
    iget v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 226
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 227
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 234
    const/16 v1, 0x3ea

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 236
    const/16 v1, 0x308

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 239
    iget-object v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 240
    if-eqz p1, :cond_0

    .line 241
    const v1, 0xc030403

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 243
    :cond_0
    iput-object v0, p0, Lcom/oppo/view/OppoViewMagnifier;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 244
    iget-object v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oppo/view/OppoViewMagnifier;->mMagnifierView:Lcom/oppo/view/OppoViewMagnifier$MagnifierView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/view/OppoViewMagnifier;->mShowing:Z

    .line 247
    return-void
.end method
