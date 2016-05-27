.class public Lcom/oppo/launcher/graphic/GaussianBlur;
.super Ljava/lang/Object;
.source "GaussianBlur.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "GaussianBlur11"

.field private static hRadius:F

.field private static iterations:I

.field private static mGaussianBlur:Lcom/oppo/launcher/graphic/GaussianBlur;

.field public static mScreenHeight:I

.field public static mScreenWidth:I

.field private static vRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x40e00000    # 7.0f

    .line 13
    sput v1, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenWidth:I

    .line 14
    sput v1, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenHeight:I

    .line 19
    sput v0, Lcom/oppo/launcher/graphic/GaussianBlur;->hRadius:F

    .line 20
    sput v0, Lcom/oppo/launcher/graphic/GaussianBlur;->vRadius:F

    .line 21
    const/4 v0, 0x5

    sput v0, Lcom/oppo/launcher/graphic/GaussianBlur;->iterations:I

    .line 24
    const-string v0, "gaussgraphic"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/launcher/graphic/GaussianBlur;->mGaussianBlur:Lcom/oppo/launcher/graphic/GaussianBlur;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/oppo/launcher/graphic/GaussianBlur;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/oppo/launcher/graphic/GaussianBlur;->mGaussianBlur:Lcom/oppo/launcher/graphic/GaussianBlur;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/oppo/launcher/graphic/GaussianBlur;

    invoke-direct {v0}, Lcom/oppo/launcher/graphic/GaussianBlur;-><init>()V

    sput-object v0, Lcom/oppo/launcher/graphic/GaussianBlur;->mGaussianBlur:Lcom/oppo/launcher/graphic/GaussianBlur;

    .line 36
    :cond_0
    sget-object v0, Lcom/oppo/launcher/graphic/GaussianBlur;->mGaussianBlur:Lcom/oppo/launcher/graphic/GaussianBlur;

    return-object v0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    const/high16 v0, 0x3e800000    # 0.25f

    .line 54
    .local v0, "scale":F
    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {p0, v1}, Lcom/oppo/launcher/graphic/GaussianBlur;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F

    .prologue
    .line 58
    const/4 v7, 0x0

    .line 59
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1

    .line 60
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 61
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 62
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v2, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenWidth:I

    sub-int v1, v0, v2

    .line 63
    .local v1, "beginX":I
    sget v3, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenWidth:I

    .line 64
    .local v3, "width":I
    if-gez v1, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 68
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 70
    .end local v1    # "beginX":I
    .end local v3    # "width":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    if-eqz v7, :cond_2

    .line 71
    const-string v0, "GaussianBlur11"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gaussian:captureWallpaper bm.getWidth = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", bmp.getWidth = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_2
    return-object v7
.end method

.method public static setScreenWidth(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 41
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 42
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 43
    .local v2, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 44
    .local v1, "height":I
    if-ge v2, v1, :cond_0

    move v4, v2

    :goto_0
    sput v4, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenWidth:I

    .line 45
    if-ge v2, v1, :cond_1

    .end local v1    # "height":I
    :goto_1
    sput v1, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenHeight:I

    .line 47
    const-string v4, "GaussianBlur11"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Utilities:setScreenWidth   getRotation() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mScreenWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/oppo/launcher/graphic/GaussianBlur;->mScreenWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .restart local v1    # "height":I
    :cond_0
    move v4, v1

    .line 44
    goto :goto_0

    :cond_1
    move v1, v2

    .line 45
    goto :goto_1
.end method


# virtual methods
.method public native blurFractional_native([I[IIIF)V
.end method

.method public native blur_native([I[IIIF)V
.end method

.method public generateGaussianBitmap(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "brightness"    # F
    .param p3, "recycle"    # Z

    .prologue
    .line 89
    if-nez p1, :cond_0

    const/4 v13, 0x0

    .line 167
    :goto_0
    return-object v13

    .line 91
    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    .line 92
    const/16 p2, 0x0

    .line 97
    :cond_1
    :goto_1
    const-string v1, "GaussianBlur11"

    const-string v3, "GaussianBlur:generateGaussianBitmap  Enter !!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 100
    .local v4, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 101
    .local v8, "height":I
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 102
    .local v2, "inPixels":[I
    mul-int v1, v4, v8

    new-array v0, v1, [I

    move-object/from16 v19, v0

    .line 103
    .local v19, "outPixels":[I
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 105
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 106
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    sget v1, Lcom/oppo/launcher/graphic/GaussianBlur;->iterations:I

    move/from16 v0, v17

    if-ge v0, v1, :cond_3

    .line 107
    sget v6, Lcom/oppo/launcher/graphic/GaussianBlur;->hRadius:F

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/launcher/graphic/GaussianBlur;->blur_native([I[IIIF)V

    .line 108
    sget v10, Lcom/oppo/launcher/graphic/GaussianBlur;->vRadius:F

    move-object/from16 v5, p0

    move-object/from16 v6, v19

    move-object v7, v2

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/oppo/launcher/graphic/GaussianBlur;->blur_native([I[IIIF)V

    .line 106
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 93
    .end local v2    # "inPixels":[I
    .end local v4    # "width":I
    .end local v8    # "height":I
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "i":I
    .end local v19    # "outPixels":[I
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 94
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    .line 110
    .restart local v2    # "inPixels":[I
    .restart local v4    # "width":I
    .restart local v8    # "height":I
    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v17    # "i":I
    .restart local v19    # "outPixels":[I
    :cond_3
    sget v6, Lcom/oppo/launcher/graphic/GaussianBlur;->hRadius:F

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/launcher/graphic/GaussianBlur;->blurFractional_native([I[IIIF)V

    .line 111
    sget v10, Lcom/oppo/launcher/graphic/GaussianBlur;->vRadius:F

    move-object/from16 v5, p0

    move-object/from16 v6, v19

    move-object v7, v2

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/oppo/launcher/graphic/GaussianBlur;->blurFractional_native([I[IIIF)V

    .line 112
    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v0, v4, :cond_4

    .line 113
    add-int v1, v4, v17

    aget v1, v2, v1

    aput v1, v2, v17

    .line 114
    add-int/lit8 v1, v8, -0x1

    mul-int/2addr v1, v4

    add-int v1, v1, v17

    add-int/lit8 v3, v8, -0x2

    mul-int/2addr v3, v4

    add-int v3, v3, v17

    aget v3, v2, v3

    aput v3, v2, v1

    .line 112
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 116
    :cond_4
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v8, :cond_5

    .line 117
    mul-int v1, v18, v4

    mul-int v3, v18, v4

    add-int/lit8 v3, v3, 0x1

    aget v3, v2, v3

    aput v3, v2, v1

    .line 118
    add-int/lit8 v1, v18, 0x1

    mul-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v18, 0x1

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    aget v3, v2, v3

    aput v3, v2, v1

    .line 116
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 121
    :cond_5
    const/4 v11, 0x0

    .line 122
    .local v11, "a":I
    const/16 v20, 0x0

    .line 123
    .local v20, "r":I
    const/16 v16, 0x0

    .line 124
    .local v16, "g":I
    const/4 v12, 0x0

    .line 125
    .local v12, "b":I
    int-to-float v1, v8

    const v3, 0x3d99999a    # 0.075f

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/lit8 v14, v1, 0xf

    .line 127
    .local v14, "delta":I
    const-string v1, "GaussianBlur11"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GaussianBlur:generateGaussianBitmap  Modify Alpha -- delta = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    move/from16 v15, p2

    .line 131
    .local v15, "dynamicBrightness":F
    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    if-ge v0, v8, :cond_7

    .line 132
    const/16 v18, 0x0

    :goto_6
    move/from16 v0, v18

    if-ge v0, v4, :cond_6

    .line 133
    mul-int v1, v17, v4

    add-int v1, v1, v18

    aget v1, v2, v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v11, v1, 0xff

    .line 134
    mul-int v1, v17, v4

    add-int v1, v1, v18

    aget v1, v2, v1

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v0, v1, 0xff

    move/from16 v20, v0

    .line 135
    mul-int v1, v17, v4

    add-int v1, v1, v18

    aget v1, v2, v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v1, 0xff

    move/from16 v16, v0

    .line 136
    mul-int v1, v17, v4

    add-int v1, v1, v18

    aget v1, v2, v1

    and-int/lit16 v12, v1, 0xff

    .line 148
    move/from16 v15, p2

    .line 152
    move/from16 v0, v20

    int-to-float v1, v0

    mul-float/2addr v1, v15

    float-to-int v0, v1

    move/from16 v20, v0

    .line 153
    move/from16 v0, v16

    int-to-float v1, v0

    mul-float/2addr v1, v15

    float-to-int v0, v1

    move/from16 v16, v0

    .line 154
    int-to-float v1, v12

    mul-float/2addr v1, v15

    float-to-int v12, v1

    .line 155
    mul-int v1, v17, v4

    add-int v1, v1, v18

    shl-int/lit8 v3, v11, 0x18

    shl-int/lit8 v5, v20, 0x10

    add-int/2addr v3, v5

    shl-int/lit8 v5, v16, 0x8

    add-int/2addr v3, v5

    add-int/2addr v3, v12

    aput v3, v2, v1

    .line 132
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 131
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 159
    :cond_7
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v13

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 160
    if-eqz p3, :cond_8

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 162
    const/16 p1, 0x0

    .line 165
    :cond_8
    const-string v1, "GaussianBlur11"

    const-string v3, "GaussianBlur:generateGaussianBitmap  generate Complete !!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public generateGaussianBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "recycle"    # Z

    .prologue
    .line 84
    const v0, 0x3f4ccccd    # 0.8f

    .line 85
    .local v0, "brightness":F
    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, p1, v1, p2}, Lcom/oppo/launcher/graphic/GaussianBlur;->generateGaussianBitmap(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public setParameter(III)V
    .locals 1
    .param p1, "h"    # I
    .param p2, "v"    # I
    .param p3, "i"    # I

    .prologue
    .line 78
    int-to-float v0, p1

    sput v0, Lcom/oppo/launcher/graphic/GaussianBlur;->hRadius:F

    .line 79
    int-to-float v0, p2

    sput v0, Lcom/oppo/launcher/graphic/GaussianBlur;->vRadius:F

    .line 80
    sput p3, Lcom/oppo/launcher/graphic/GaussianBlur;->iterations:I

    .line 81
    return-void
.end method
