.class public final Lcom/oneplus/media/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field public static final FLAG_MUTABLE:I = 0x8

.field public static final FLAG_NO_EMBEDDED_THUMB:I = 0x2

.field public static final FLAG_PREFER_QUALITY_OVER_SPEED:I = 0x1

.field public static final FLAG_USE_EMBEDDED_THUMB_ONLY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ImageUtils"

.field private static final m_BitmapFilterPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "opbaselib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    .line 65
    sget-object v0, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 66
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateSampleSize(IIII)I
    .locals 4
    .param p0, "originalWidth"    # I
    .param p1, "originalHeight"    # I
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I

    .prologue
    .line 77
    const/4 v2, 0x2

    .line 78
    .local v2, "sampleSize":I
    shr-int/lit8 v1, p0, 0x1

    .line 79
    .local v1, "decodeWidth":I
    shr-int/lit8 v0, p1, 0x1

    .line 80
    .local v0, "decodeHeight":I
    :goto_0
    if-gt v1, p2, :cond_0

    if-le v0, p3, :cond_1

    .line 82
    :cond_0
    shl-int/lit8 v2, v2, 0x1

    .line 83
    shr-int/lit8 v1, v1, 0x1

    .line 84
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    shr-int/lit8 v3, v2, 0x1

    return v3
.end method

.method public static centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v12, 0x0

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 101
    .local v6, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 102
    .local v5, "originalHeight":I
    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 103
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 106
    if-ne p1, v6, :cond_0

    if-ne p2, v5, :cond_0

    .line 122
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 110
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    int-to-float v10, v6

    int-to-float v11, p1

    div-float v8, v10, v11

    .line 111
    .local v8, "ratioX":F
    int-to-float v10, v5

    int-to-float v11, p2

    div-float v9, v10, v11

    .line 112
    .local v9, "ratioY":F
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 113
    .local v7, "ratio":F
    int-to-float v10, p1

    mul-float/2addr v10, v7

    float-to-int v3, v10

    .line 114
    .local v3, "cropWidth":I
    int-to-float v10, p2

    mul-float/2addr v10, v7

    float-to-int v1, v10

    .line 115
    .local v1, "cropHeight":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 116
    .local v2, "cropRect":Landroid/graphics/Rect;
    sub-int v10, v6, v3

    div-int/lit8 v10, v10, 0x2

    sub-int v11, v5, v1

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 119
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {p1, p2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 120
    .local v4, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v12, v12, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v11, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v2, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p0, v4

    .line 122
    goto :goto_0
.end method

.method public static copyExif(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 10
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;
    .param p2, "attrs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 138
    if-eqz p2, :cond_0

    :try_start_0
    array-length v7, p2

    if-nez v7, :cond_1

    :cond_0
    move v7, v9

    .line 165
    :goto_0
    return v7

    .line 142
    :cond_1
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 143
    .local v2, "exif":Landroid/media/ExifInterface;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v5, "tags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v7, p2

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 146
    aget-object v7, p2, v3

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 148
    aget-object v7, p2, v3

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 150
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v9

    .line 151
    goto :goto_0

    .line 154
    :cond_4
    new-instance v2, Landroid/media/ExifInterface;

    .end local v2    # "exif":Landroid/media/ExifInterface;
    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 155
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 162
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "tags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 164
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v7, "ImageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "copyExif() - Fail to copy from \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' to \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    const/4 v7, 0x0

    goto :goto_0

    .line 157
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "tags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v7, v9

    .line 160
    goto :goto_0
.end method

.method public static createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    const/4 v6, 0x1

    .line 180
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 181
    .local v1, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 182
    .local v0, "originalHeight":I
    if-gt v1, p1, :cond_1

    if-gt v0, p2, :cond_1

    .line 183
    move-object v2, p0

    .line 189
    .local v2, "thumb":Landroid/graphics/Bitmap;
    :goto_0
    if-ne v2, p0, :cond_0

    .line 190
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 191
    :cond_0
    return-object v2

    .line 186
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v1, v0, p1, p2, v6}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v3

    .line 187
    .local v3, "thumbSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {p0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 206
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p0, v0}, Lcom/oneplus/media/ImageUtils;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 219
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_0

    .line 220
    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 221
    :cond_0
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_1

    .line 222
    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 223
    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 224
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 225
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 226
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 227
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 228
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 231
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 232
    .local v1, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, p1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 234
    return-object v1
.end method

.method public static decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 449
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap(Ljava/io/InputStream;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 19
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "orientation"    # Ljava/lang/Integer;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "flags"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 473
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 474
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_6

    :cond_1
    const/4 v13, 0x1

    .line 477
    .local v13, "swapWidthHeight":Z
    :goto_0
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 478
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 479
    :try_start_1
    new-instance v12, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .local v12, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v4, 0x0

    .line 481
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v3, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    if-eqz v12, :cond_2

    if-eqz v4, :cond_7

    :try_start_3
    invoke-virtual {v12}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 489
    .end local v12    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_2
    :goto_1
    if-eqz v13, :cond_3

    .line 491
    :try_start_4
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 492
    .local v17, "temp":I
    iget v3, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 493
    move/from16 v0, v17

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 497
    .end local v17    # "temp":I
    :cond_3
    iget v3, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v5, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v4, v0, v1, v5}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v15

    .line 498
    .local v15, "targetSize":Landroid/util/Size;
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v16

    .line 499
    .local v16, "targetWidth":I
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v14

    .line 502
    .local v14, "targetHeight":I
    iget v3, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, v16

    invoke-static {v3, v4, v0, v14}, Lcom/oneplus/media/ImageUtils;->calculateSampleSize(IIII)I

    move-result v3

    iput v3, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 505
    const/4 v3, 0x0

    iput-boolean v3, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 506
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v11, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 507
    move-object/from16 v0, p5

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 508
    const/4 v3, 0x1

    iput-boolean v3, v11, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 509
    and-int/lit8 v3, p4, 0x8

    if-eqz v3, :cond_4

    .line 510
    const/4 v3, 0x1

    iput-boolean v3, v11, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 511
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 512
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_b

    .line 514
    const-string v3, "ImageUtils"

    const-string v4, "decodeBitmap() - Fail to decode image"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 515
    const/4 v2, 0x0

    .line 536
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "swapWidthHeight":Z
    .end local v14    # "targetHeight":I
    .end local v15    # "targetSize":Landroid/util/Size;
    .end local v16    # "targetWidth":I
    :cond_5
    :goto_3
    return-object v2

    .line 474
    :cond_6
    const/4 v13, 0x0

    goto :goto_0

    .line 482
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v13    # "swapWidthHeight":Z
    :catch_0
    move-exception v18

    .local v18, "x2":Ljava/lang/Throwable;
    :try_start_5
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 483
    .end local v12    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v18    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v9

    .line 485
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_6
    const-string v3, "ImageUtils"

    const-string v4, "Fail to decode stream"

    invoke-static {v3, v4, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 533
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "swapWidthHeight":Z
    :catch_2
    move-exception v10

    .line 535
    .local v10, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    const-string v4, "decodeBitmap() - Fail to decode bitmap"

    invoke-static {v3, v4, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 536
    const/4 v2, 0x0

    goto :goto_3

    .line 482
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v13    # "swapWidthHeight":Z
    :cond_7
    :try_start_7
    invoke-virtual {v12}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 479
    :catch_3
    move-exception v4

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 482
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_8

    if-eqz v4, :cond_9

    :try_start_9
    invoke-virtual {v12}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    :cond_8
    :goto_4
    :try_start_a
    throw v3

    :catch_4
    move-exception v18

    .restart local v18    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v18    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v12}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    .line 506
    .end local v12    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v14    # "targetHeight":I
    .restart local v15    # "targetSize":Landroid/util/Size;
    .restart local v16    # "targetWidth":I
    :cond_a
    const/4 v3, 0x0

    goto :goto_2

    .line 519
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_b
    :try_start_b
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, v16

    if-ne v3, v0, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v14, :cond_5

    .line 521
    :cond_c
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 522
    .local v7, "matrix":Landroid/graphics/Matrix;
    if-eqz v13, :cond_d

    .line 523
    move/from16 v0, v16

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v14

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 526
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 527
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    .line 525
    :cond_d
    move/from16 v0, v16

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v14

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5
.end method

.method public static decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 300
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 337
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_3

    const/16 v20, 0x1

    .line 338
    .local v20, "useEmbeddedThumbOnly":Z
    :goto_0
    const/4 v9, 0x0

    .line 339
    .local v9, "orientation":Ljava/lang/Integer;
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_4

    .line 341
    if-nez v20, :cond_0

    const/16 v3, 0x100

    move/from16 v0, p1

    if-gt v0, v3, :cond_4

    const/16 v3, 0x100

    move/from16 v0, p2

    if-gt v0, v3, :cond_4

    .line 345
    :cond_0
    :try_start_0
    new-instance v16, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 346
    .local v16, "exif":Landroid/media/ExifInterface;
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 349
    const-string v3, "Orientation"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 352
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v19

    .line 353
    .local v19, "thumbData":[B
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 354
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 355
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 356
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 369
    :goto_1
    if-nez v20, :cond_1

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p1

    if-ge v3, v0, :cond_1

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-lt v3, v0, :cond_4

    .line 371
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 372
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 373
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 374
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 375
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 376
    .local v2, "thumb":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 378
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_6

    .line 379
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 415
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "thumbData":[B
    :cond_2
    :goto_3
    return-object v14

    .line 337
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v20    # "useEmbeddedThumbOnly":Z
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 361
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "thumbData":[B
    .restart local v20    # "useEmbeddedThumbOnly":Z
    :sswitch_0
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    .line 362
    .local v18, "temp":I
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 363
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_1

    .line 397
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "temp":I
    .end local v19    # "thumbData":[B
    :catch_0
    move-exception v3

    .line 401
    :cond_4
    if-eqz v20, :cond_7

    .line 402
    const/4 v14, 0x0

    goto :goto_3

    .line 373
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "thumbData":[B
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 380
    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 387
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 390
    :goto_4
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 391
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 392
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_3

    .line 384
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :sswitch_1
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 385
    goto :goto_4

    .line 405
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "thumbData":[B
    :cond_7
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .local v8, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 407
    :try_start_2
    invoke-static/range {v8 .. v13}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 408
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    if-nez v14, :cond_8

    .line 409
    const-string v3, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeBitmap() - Fail to decode \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 411
    :cond_8
    if-eqz v8, :cond_2

    if-eqz v4, :cond_9

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v21

    .local v21, "x2":Ljava/lang/Throwable;
    :try_start_4
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 412
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v21    # "x2":Ljava/lang/Throwable;
    :catch_2
    move-exception v15

    .line 414
    .local v15, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeBitmap() - Fail to decode \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 411
    .end local v15    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    .line 405
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v3

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 411
    :catchall_0
    move-exception v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    :goto_5
    if-eqz v8, :cond_a

    if-eqz v4, :cond_b

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_a
    :goto_6
    :try_start_8
    throw v3

    :catch_4
    move-exception v21

    .restart local v21    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v21    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    :catchall_1
    move-exception v3

    goto :goto_5

    .line 356
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch

    .line 380
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_1
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap([BII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "encodedImage"    # [B
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 247
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "encodedImage"    # [B
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v4, 0x0

    .line 280
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 282
    :try_start_1
    invoke-static {v1, p1, p2, p3, p4}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 283
    if-eqz v1, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 286
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 283
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 284
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v2    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v3, v4

    .line 286
    goto :goto_0

    .line 283
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 280
    :catch_2
    move-exception v5

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 283
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_2
    :try_start_6
    throw v3

    :catch_3
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v5, v4

    goto :goto_1
.end method

.method public static decodeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "encodedImage"    # [B
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 747
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap(Ljava/io/InputStream;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 728
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeCenterCropBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 32
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "orientation"    # Ljava/lang/Integer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 769
    if-nez p1, :cond_0

    .line 770
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 771
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_5

    :cond_1
    const/16 v28, 0x1

    .line 774
    .local v28, "swapWidthHeight":Z
    :goto_0
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 775
    .local v20, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 776
    :try_start_1
    new-instance v27, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .local v27, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v5, 0x0

    .line 778
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 779
    if-eqz v27, :cond_2

    if-eqz v5, :cond_6

    :try_start_3
    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 787
    :cond_2
    :goto_1
    :try_start_4
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    .line 788
    .local v23, "originalWidth":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    .line 789
    .local v22, "originalHeight":I
    if-lez v23, :cond_3

    if-gtz v22, :cond_9

    .line 791
    :cond_3
    const-string v4, "ImageUtils"

    const-string v5, "decodeCenterCropBitmap() - Fail to get bitmap size"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 792
    const/4 v3, 0x0

    .line 864
    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v22    # "originalHeight":I
    .end local v23    # "originalWidth":I
    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v28    # "swapWidthHeight":Z
    :cond_4
    :goto_2
    return-object v3

    .line 771
    :cond_5
    const/16 v28, 0x0

    goto :goto_0

    .line 779
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v28    # "swapWidthHeight":Z
    :catch_0
    move-exception v31

    .local v31, "x2":Ljava/lang/Throwable;
    :try_start_5
    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 780
    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v31    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v18

    .line 782
    .local v18, "e":Ljava/lang/Throwable;
    :try_start_6
    const-string v4, "ImageUtils"

    const-string v5, "decodeCenterCropBitmap() - Fail to decode stream"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 783
    const/4 v3, 0x0

    goto :goto_2

    .line 779
    .end local v18    # "e":Ljava/lang/Throwable;
    .restart local v27    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_6
    :try_start_7
    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 776
    :catch_2
    move-exception v5

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 779
    :catchall_0
    move-exception v4

    if-eqz v27, :cond_7

    if-eqz v5, :cond_8

    :try_start_9
    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    :cond_7
    :goto_3
    :try_start_a
    throw v4

    :catch_3
    move-exception v31

    .restart local v31    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v31    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual/range {v27 .. v27}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    .line 794
    .restart local v22    # "originalHeight":I
    .restart local v23    # "originalWidth":I
    :cond_9
    if-eqz v28, :cond_a

    .line 796
    move/from16 v30, p2

    .line 797
    .local v30, "temp":I
    move/from16 p2, p3

    .line 798
    move/from16 p3, v30

    .line 802
    .end local v30    # "temp":I
    :cond_a
    :try_start_b
    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 803
    move/from16 v0, v22

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 804
    move/from16 v0, p2

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    div-float v25, v4, v5

    .line 805
    .local v25, "ratioX":F
    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, v22

    int-to-float v5, v0

    div-float v26, v4, v5

    .line 806
    .local v26, "ratioY":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v24

    .line 807
    .local v24, "ratio":F
    move/from16 v0, v23

    int-to-float v4, v0

    mul-float v4, v4, v24

    float-to-int v0, v4

    move/from16 v16, v0

    .line 808
    .local v16, "decodeWidth":I
    move/from16 v0, v22

    int-to-float v4, v0

    mul-float v4, v4, v24

    float-to-int v14, v4

    .line 811
    .local v14, "decodeHeight":I
    mul-int v15, v16, v14

    .line 812
    .local v15, "decodePixelCount":I
    mul-int v29, p2, p3

    .line 815
    .local v29, "targetPixelCount":I
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 816
    .local v12, "cropRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 817
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, v20

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 818
    move-object/from16 v0, p5

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 819
    and-int/lit8 v4, p4, 0x8

    if-eqz v4, :cond_b

    .line 820
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 821
    :cond_b
    div-int/lit8 v4, v15, 0x2

    move/from16 v0, v29

    if-gt v0, v4, :cond_d

    .line 823
    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v5, v0

    div-float v25, v4, v5

    .line 824
    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    div-float v26, v4, v5

    .line 825
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v24

    .line 826
    move/from16 v0, p2

    int-to-float v4, v0

    mul-float v4, v4, v24

    float-to-int v13, v4

    .line 827
    .local v13, "cropWidth":I
    move/from16 v0, p3

    int-to-float v4, v0

    mul-float v4, v4, v24

    float-to-int v11, v4

    .line 828
    .local v11, "cropHeight":I
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v17

    .line 829
    .local v17, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 830
    sub-int v4, v23, v13

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v22, v11

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 831
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 832
    .local v21, "originalBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 848
    .end local v17    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :goto_5
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 849
    .local v3, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 850
    .local v10, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Lcom/oneplus/media/ImageUtils;->m_BitmapFilterPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v12, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 853
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_4

    .line 855
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 856
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 857
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_2

    .line 817
    .end local v3    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "cropHeight":I
    .end local v13    # "cropWidth":I
    .end local v21    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 836
    :cond_d
    move/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v14}, Lcom/oneplus/media/ImageUtils;->calculateSampleSize(IIII)I

    move-result v4

    move-object/from16 v0, v20

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 837
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 838
    .restart local v21    # "originalBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    move/from16 v0, p2

    int-to-float v5, v0

    div-float v25, v4, v5

    .line 839
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move/from16 v0, p3

    int-to-float v5, v0

    div-float v26, v4, v5

    .line 840
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v24

    .line 841
    move/from16 v0, p2

    int-to-float v4, v0

    mul-float v4, v4, v24

    float-to-int v13, v4

    .line 842
    .restart local v13    # "cropWidth":I
    move/from16 v0, p3

    int-to-float v4, v0

    mul-float v4, v4, v24

    float-to-int v11, v4

    .line 843
    .restart local v11    # "cropHeight":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 844
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v13

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v11

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_5

    .line 861
    .end local v11    # "cropHeight":I
    .end local v12    # "cropRect":Landroid/graphics/Rect;
    .end local v13    # "cropWidth":I
    .end local v14    # "decodeHeight":I
    .end local v15    # "decodePixelCount":I
    .end local v16    # "decodeWidth":I
    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v21    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v22    # "originalHeight":I
    .end local v23    # "originalWidth":I
    .end local v24    # "ratio":F
    .end local v25    # "ratioX":F
    .end local v26    # "ratioY":F
    .end local v27    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v28    # "swapWidthHeight":Z
    .end local v29    # "targetPixelCount":I
    :catch_4
    move-exception v19

    .line 863
    .local v19, "ex":Ljava/lang/Throwable;
    const-string v4, "ImageUtils"

    const-string v5, "decodeCenterCropBitmap() - Fail to decode"

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 864
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public static decodeCenterCropBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 603
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 640
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_5

    const/16 v20, 0x1

    .line 641
    .local v20, "useEmbeddedThumbOnly":Z
    :goto_0
    const/4 v9, 0x0

    .line 642
    .local v9, "orientation":Ljava/lang/Integer;
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_8

    .line 644
    if-nez v20, :cond_0

    const/16 v3, 0x100

    move/from16 v0, p1

    if-gt v0, v3, :cond_8

    const/16 v3, 0x100

    move/from16 v0, p2

    if-gt v0, v3, :cond_8

    .line 648
    :cond_0
    :try_start_0
    new-instance v16, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 649
    .local v16, "exif":Landroid/media/ExifInterface;
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 652
    const-string v3, "Orientation"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 655
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v19

    .line 656
    .local v19, "thumbData":[B
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 657
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 658
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 659
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_2

    .line 661
    :cond_1
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    .line 662
    .local v18, "temp":I
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 663
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 667
    .end local v18    # "temp":I
    :cond_2
    if-nez v20, :cond_3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p1

    if-ge v3, v0, :cond_3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-lt v3, v0, :cond_8

    .line 669
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 670
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 671
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 672
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 673
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v4, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 674
    .local v2, "thumb":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_8

    .line 676
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_7

    .line 677
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 713
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "thumbData":[B
    :cond_4
    :goto_2
    return-object v14

    .line 640
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v20    # "useEmbeddedThumbOnly":Z
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 671
    .restart local v9    # "orientation":Ljava/lang/Integer;
    .restart local v16    # "exif":Landroid/media/ExifInterface;
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "thumbData":[B
    .restart local v20    # "useEmbeddedThumbOnly":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 678
    .restart local v2    # "thumb":Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 685
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 688
    :goto_3
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 689
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 690
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_2

    .line 682
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :sswitch_0
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/oneplus/media/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 683
    goto :goto_3

    .line 695
    .end local v2    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "thumbData":[B
    :catch_0
    move-exception v3

    .line 699
    :cond_8
    if-eqz v20, :cond_9

    .line 700
    const/4 v14, 0x0

    goto :goto_2

    .line 703
    :cond_9
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .local v8, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    .line 705
    :try_start_2
    invoke-static/range {v8 .. v13}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;Ljava/lang/Integer;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 706
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    if-nez v14, :cond_a

    .line 707
    const-string v3, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeCenterCropBitmap() - Fail to decode \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 709
    :cond_a
    if-eqz v8, :cond_4

    if-eqz v4, :cond_b

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v21

    .local v21, "x2":Ljava/lang/Throwable;
    :try_start_4
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 710
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v21    # "x2":Ljava/lang/Throwable;
    :catch_2
    move-exception v15

    .line 712
    .local v15, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeCenterCropBitmap() - Fail to decode \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 709
    .end local v15    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    :cond_b
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 703
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v3

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 709
    :catchall_0
    move-exception v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    :goto_4
    if-eqz v8, :cond_c

    if-eqz v4, :cond_d

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_c
    :goto_5
    :try_start_8
    throw v3

    :catch_4
    move-exception v21

    .restart local v21    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v21    # "x2":Ljava/lang/Throwable;
    :cond_d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catchall_1
    move-exception v3

    goto :goto_4

    .line 678
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public static decodeCenterCropBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap([BII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 550
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCenterCropBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v4, 0x0

    .line 583
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 585
    :try_start_1
    invoke-static {v1, p1, p2, p3, p4}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 586
    if-eqz v1, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 589
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 586
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 587
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v2    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v3, v4

    .line 589
    goto :goto_0

    .line 586
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 583
    :catch_2
    move-exception v5

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 586
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_2
    :try_start_6
    throw v3

    :catch_3
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v5, v4

    goto :goto_1
.end method

.method public static decodeCenterCropBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 564
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oneplus/media/ImageUtils;->decodeCenterCropBitmap([BIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeOrientation(Ljava/io/InputStream;)I
    .locals 19
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 896
    if-nez p0, :cond_1

    .line 898
    const-string v12, "ImageUtils"

    const-string v13, "decodeOrientation() - No stream to check"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const/4 v12, 0x0

    .line 946
    :cond_0
    :goto_0
    return v12

    .line 903
    :cond_1
    :try_start_0
    new-instance v10, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v10, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v14, 0x0

    .line 906
    :try_start_1
    new-instance v8, Lcom/oneplus/base/SimpleRef;

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 907
    .local v8, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    new-instance v9, Lcom/oneplus/base/SimpleRef;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 908
    .local v9, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/oneplus/media/ImageUtils;->isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z

    move-result v5

    .line 909
    .local v5, "fromTiff":Z
    if-eqz v5, :cond_4

    .line 910
    invoke-virtual {v10}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v8, v12}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 913
    :goto_1
    if-eqz v5, :cond_a

    .line 916
    invoke-interface {v8}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v16

    sub-long v6, v12, v16

    .line 919
    .local v6, "headerOffset":J
    new-instance v3, Lcom/oneplus/media/IfdEntryEnumerator;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v7}, Lcom/oneplus/media/IfdEntryEnumerator;-><init>(Ljava/io/InputStream;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v3, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    const/4 v13, 0x0

    .line 921
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->read()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 923
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->currentIfd()Lcom/oneplus/media/Ifd;

    move-result-object v12

    sget-object v15, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    if-ne v12, v15, :cond_9

    .line 925
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v12

    const/16 v15, 0x112

    if-ne v12, v15, :cond_2

    .line 927
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v2

    .line 928
    .local v2, "data":[I
    if-eqz v2, :cond_9

    array-length v12, v2

    if-lez v12, :cond_9

    .line 929
    const/4 v12, 0x0

    aget v12, v2, v12

    invoke-static {v12}, Lcom/oneplus/media/ImageUtils;->exifOrientationToDegrees(I)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v12

    .line 936
    if-eqz v3, :cond_3

    if-eqz v13, :cond_7

    :try_start_3
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 938
    :cond_3
    :goto_2
    if-eqz v10, :cond_0

    if-eqz v14, :cond_8

    :try_start_4
    invoke-virtual {v10}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v14, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 939
    .end local v2    # "data":[I
    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v5    # "fromTiff":Z
    .end local v6    # "headerOffset":J
    .end local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v9    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v10    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 941
    .local v4, "ex":Ljava/lang/Throwable;
    const-string v12, "ImageUtils"

    const-string v13, "decodeOrientation() - Unknown error"

    invoke-static {v12, v13, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 942
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 912
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "fromTiff":Z
    .restart local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v9    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v10    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_4
    :try_start_6
    invoke-static/range {p0 .. p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/oneplus/media/ImageUtils;->findTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v5, 0x1

    :goto_3
    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 936
    .restart local v2    # "data":[I
    .restart local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v6    # "headerOffset":J
    :catch_2
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 903
    .end local v2    # "data":[I
    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v5    # "fromTiff":Z
    .end local v6    # "headerOffset":J
    .end local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v9    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v12

    :try_start_7
    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 938
    :catchall_0
    move-exception v13

    move-object/from16 v18, v13

    move-object v13, v12

    move-object/from16 v12, v18

    :goto_4
    if-eqz v10, :cond_6

    if-eqz v13, :cond_10

    :try_start_8
    invoke-virtual {v10}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    :cond_6
    :goto_5
    :try_start_9
    throw v12
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    .line 936
    .restart local v2    # "data":[I
    .restart local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v5    # "fromTiff":Z
    .restart local v6    # "headerOffset":J
    .restart local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v9    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    :cond_7
    :try_start_a
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 938
    .end local v2    # "data":[I
    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v5    # "fromTiff":Z
    .end local v6    # "headerOffset":J
    .end local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v9    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    :catchall_1
    move-exception v12

    move-object v13, v14

    goto :goto_4

    .restart local v2    # "data":[I
    .restart local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v5    # "fromTiff":Z
    .restart local v6    # "headerOffset":J
    .restart local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v9    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    :cond_8
    :try_start_b
    invoke-virtual {v10}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 936
    .end local v2    # "data":[I
    :cond_9
    if-eqz v3, :cond_a

    if-eqz v13, :cond_c

    :try_start_c
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 938
    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v6    # "headerOffset":J
    :cond_a
    :goto_6
    if-eqz v10, :cond_b

    if-eqz v14, :cond_f

    :try_start_d
    invoke-virtual {v10}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    .line 946
    :cond_b
    :goto_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 936
    .restart local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v6    # "headerOffset":J
    :catch_4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_e
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_6

    .line 919
    :catch_5
    move-exception v12

    :try_start_f
    throw v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 936
    :catchall_2
    move-exception v13

    move-object/from16 v18, v13

    move-object v13, v12

    move-object/from16 v12, v18

    :goto_8
    if-eqz v3, :cond_d

    if-eqz v13, :cond_e

    :try_start_10
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_d
    :goto_9
    :try_start_11
    throw v12

    :catch_6
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_e
    invoke-virtual {v3}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_9

    .line 938
    .end local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .end local v6    # "headerOffset":J
    :catch_7
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_12
    invoke-virtual {v14, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_f
    invoke-virtual {v10}, Lcom/oneplus/io/StreamState;->close()V

    goto :goto_7

    .end local v5    # "fromTiff":Z
    .end local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v9    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    :catch_8
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_10
    invoke-virtual {v10}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1

    goto :goto_5

    .line 936
    .restart local v3    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    .restart local v5    # "fromTiff":Z
    .restart local v6    # "headerOffset":J
    .restart local v8    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v9    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    :catchall_3
    move-exception v12

    goto :goto_8
.end method

.method public static decodeOrientation(Ljava/lang/String;)I
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 876
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 878
    :try_start_1
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 879
    if-eqz v1, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 883
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return v3

    .line 879
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 880
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .end local v2    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 882
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeOrientation() - Fail to access file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 883
    const/4 v3, 0x0

    goto :goto_0

    .line 879
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 876
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 879
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_1
    :try_start_7
    throw v3

    :catch_3
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public static decodeSize(Ljava/io/InputStream;)Landroid/util/Size;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 988
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Landroid/util/Size;
    .locals 12
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .local p1, "orientation":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1000
    if-nez p0, :cond_1

    .line 1002
    const-string v7, "ImageUtils"

    const-string v8, "decodeSize() - No stream"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_0
    :goto_0
    return-object v6

    .line 1005
    :cond_1
    :try_start_0
    new-instance v3, Lcom/oneplus/io/StreamState;

    invoke-direct {v3, p0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v3, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v8, 0x0

    .line 1008
    :try_start_1
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v0

    .line 1009
    .local v0, "decodedOrientation":I
    const/16 v7, 0x5a

    if-eq v0, v7, :cond_2

    const/16 v7, 0x10e

    if-ne v0, v7, :cond_5

    .line 1010
    .local v4, "swapWidthHeight":Z
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 1011
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1014
    :cond_3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1015
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1016
    const/4 v7, 0x0

    invoke-static {p0, v7, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1019
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v7, :cond_a

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v7, :cond_a

    .line 1021
    if-eqz v4, :cond_7

    .line 1022
    new-instance v7, Landroid/util/Size;

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-direct {v7, v9, v10}, Landroid/util/Size;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1026
    if-eqz v3, :cond_4

    if-eqz v6, :cond_6

    :try_start_2
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_2
    move-object v6, v7

    goto :goto_0

    .line 1009
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "swapWidthHeight":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 1026
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "swapWidthHeight":Z
    :catch_0
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v8, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1027
    .end local v0    # "decodedOrientation":I
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v4    # "swapWidthHeight":Z
    .end local v5    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1029
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v7, "ImageUtils"

    const-string v8, "decodeSize() - Fail to decode"

    invoke-static {v7, v8, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1026
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "decodedOrientation":I
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v4    # "swapWidthHeight":Z
    :cond_6
    :try_start_4
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1023
    :cond_7
    :try_start_5
    new-instance v7, Landroid/util/Size;

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v7, v9, v10}, Landroid/util/Size;-><init>(II)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1026
    if-eqz v3, :cond_8

    if-eqz v6, :cond_9

    :try_start_6
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_8
    :goto_3
    move-object v6, v7

    goto :goto_0

    :catch_2
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v8, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :cond_a
    if-eqz v3, :cond_0

    if-eqz v6, :cond_b

    :try_start_8
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    :catch_3
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v8, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 1005
    .end local v0    # "decodedOrientation":I
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "swapWidthHeight":Z
    :catch_4
    move-exception v7

    :try_start_a
    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1026
    :catchall_0
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_4
    if-eqz v3, :cond_c

    if-eqz v8, :cond_d

    :try_start_b
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    :cond_c
    :goto_5
    :try_start_c
    throw v7

    :catch_5
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_d
    invoke-virtual {v3}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v8, v6

    goto :goto_4
.end method

.method public static decodeSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 957
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/lang/String;Lcom/oneplus/base/Ref;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSize(Ljava/lang/String;Lcom/oneplus/base/Ref;)Landroid/util/Size;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .local p1, "orientation":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 969
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "stream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 971
    :try_start_1
    invoke-static {v1, p1}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Landroid/util/Size;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 972
    if-eqz v1, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 976
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 972
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 973
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .end local v2    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 975
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeSize() - Fail to open \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 976
    goto :goto_0

    .line 972
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 969
    :catch_2
    move-exception v5

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 972
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_2
    :try_start_7
    throw v3

    :catch_3
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v5, v4

    goto :goto_1
.end method

.method private static exifOrientationToDegrees(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 1038
    packed-switch p0, :pswitch_data_0

    .line 1050
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1042
    :pswitch_0
    const/16 v0, 0xb4

    goto :goto_0

    .line 1045
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 1048
    :pswitch_2
    const/16 v0, 0x10e

    goto :goto_0

    .line 1038
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static findTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z
    .locals 19
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1065
    .local p1, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .local p2, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    if-nez p0, :cond_1

    .line 1067
    const-string v12, "ImageUtils"

    const-string v13, "findTiffHeader() - No stream"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const/4 v12, 0x0

    .line 1115
    :cond_0
    :goto_0
    return v12

    .line 1070
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 1072
    const-string v12, "ImageUtils"

    const-string v13, "findTiffHeader() - No reference to receive result"

    invoke-static {v12, v13}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const/4 v12, 0x0

    goto :goto_0

    .line 1077
    :cond_2
    const-wide/16 v10, 0x0

    .line 1078
    .local v10, "tiffPosition":J
    :try_start_0
    new-instance v3, Lcom/oneplus/io/BufferedInputStream;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/oneplus/io/BufferedInputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v3, "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    const/4 v14, 0x0

    .line 1079
    :try_start_1
    new-instance v7, Lcom/oneplus/io/StreamState;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1078
    .local v7, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v13, 0x0

    .line 1082
    const/16 v12, 0x1003

    :try_start_2
    new-array v2, v12, [B

    .line 1086
    .local v2, "buffer":[B
    :cond_3
    const-wide/16 v16, 0x0

    cmp-long v12, v10, v16

    if-nez v12, :cond_6

    .line 1088
    const/4 v12, 0x0

    const/16 v15, 0x1000

    invoke-virtual {v3, v2, v12, v15}, Lcom/oneplus/io/BufferedInputStream;->read([BII)I

    move-result v6

    .line 1089
    .local v6, "realCount":I
    move v8, v6

    .line 1096
    .local v8, "tail":I
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    add-int/lit8 v12, v8, -0x3

    if-ge v5, v12, :cond_b

    .line 1098
    move-object/from16 v0, p2

    invoke-static {v2, v5, v0}, Lcom/oneplus/media/ImageUtils;->isTiffHeader([BILcom/oneplus/base/Ref;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1100
    if-eqz p1, :cond_4

    .line 1101
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v16

    add-long v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1102
    :cond_4
    const/4 v12, 0x1

    .line 1111
    if-eqz v7, :cond_5

    if-eqz v13, :cond_8

    :try_start_3
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    :goto_3
    if-eqz v3, :cond_0

    if-eqz v14, :cond_9

    :try_start_4
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    .local v9, "x2":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v14, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1112
    .end local v2    # "buffer":[B
    .end local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .end local v5    # "i":I
    .end local v6    # "realCount":I
    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v8    # "tail":I
    .end local v9    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 1114
    .local v4, "ex":Ljava/lang/Throwable;
    const-string v12, "ImageUtils"

    const-string v13, "findTiffHeader() - Unknown error"

    invoke-static {v12, v13, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1115
    const/4 v12, 0x0

    goto :goto_0

    .line 1093
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "buffer":[B
    .restart local v3    # "bufferedStream":Lcom/oneplus/io/BufferedInputStream;
    .restart local v7    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_6
    const/4 v12, 0x3

    const/16 v15, 0x1000

    :try_start_6
    invoke-virtual {v3, v2, v12, v15}, Lcom/oneplus/io/BufferedInputStream;->read([BII)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result v6

    .line 1094
    .restart local v6    # "realCount":I
    add-int/lit8 v8, v6, 0x3

    .restart local v8    # "tail":I
    goto :goto_1

    .line 1111
    .restart local v5    # "i":I
    :catch_2
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v13, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 1078
    .end local v2    # "buffer":[B
    .end local v5    # "i":I
    .end local v6    # "realCount":I
    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v8    # "tail":I
    .end local v9    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v12

    :try_start_8
    throw v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1111
    :catchall_0
    move-exception v13

    move-object/from16 v18, v13

    move-object v13, v12

    move-object/from16 v12, v18

    :goto_4
    if-eqz v3, :cond_7

    if-eqz v13, :cond_12

    :try_start_9
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    :cond_7
    :goto_5
    :try_start_a
    throw v12
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .restart local v2    # "buffer":[B
    .restart local v5    # "i":I
    .restart local v6    # "realCount":I
    .restart local v7    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v8    # "tail":I
    :cond_8
    :try_start_b
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .end local v2    # "buffer":[B
    .end local v5    # "i":I
    .end local v6    # "realCount":I
    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v8    # "tail":I
    :catchall_1
    move-exception v12

    move-object v13, v14

    goto :goto_4

    .restart local v2    # "buffer":[B
    .restart local v5    # "i":I
    .restart local v6    # "realCount":I
    .restart local v7    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v8    # "tail":I
    :cond_9
    :try_start_c
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0

    .line 1104
    :cond_a
    const-wide/16 v16, 0x1

    add-long v10, v10, v16

    .line 1096
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1106
    :cond_b
    const/16 v12, 0x1000

    if-ge v6, v12, :cond_f

    .line 1107
    const/4 v12, 0x0

    .line 1111
    if-eqz v7, :cond_c

    if-eqz v13, :cond_d

    :try_start_d
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_c
    :goto_6
    if-eqz v3, :cond_0

    if-eqz v14, :cond_e

    :try_start_e
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    :try_start_f
    invoke-virtual {v14, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_0

    .end local v9    # "x2":Ljava/lang/Throwable;
    :catch_5
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    :try_start_10
    invoke-virtual {v13, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_d
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_6

    :cond_e
    :try_start_11
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_0

    .line 1108
    :cond_f
    const/4 v5, 0x0

    :goto_7
    const/4 v12, 0x3

    if-ge v5, v12, :cond_3

    .line 1109
    rsub-int/lit8 v12, v5, 0x3

    sub-int v12, v8, v12

    :try_start_12
    aget-byte v12, v2, v12

    aput-byte v12, v2, v5
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 1108
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1078
    .end local v2    # "buffer":[B
    .end local v5    # "i":I
    .end local v6    # "realCount":I
    .end local v8    # "tail":I
    :catch_6
    move-exception v12

    :try_start_13
    throw v12
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1111
    :catchall_2
    move-exception v13

    move-object/from16 v18, v13

    move-object v13, v12

    move-object/from16 v12, v18

    :goto_8
    if-eqz v7, :cond_10

    if-eqz v13, :cond_11

    :try_start_14
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_10
    :goto_9
    :try_start_15
    throw v12

    :catch_7
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_11
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_9

    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_8
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    :try_start_16
    invoke-virtual {v13, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_12
    invoke-virtual {v3}, Lcom/oneplus/io/BufferedInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1

    goto :goto_5

    .restart local v7    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_3
    move-exception v12

    goto :goto_8
.end method

.method public static getMimeType(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 1146
    if-nez p0, :cond_1

    .line 1148
    const-string v5, "ImageUtils"

    const-string v6, "getMimeType() - No stream"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :cond_0
    :goto_0
    return-object v4

    .line 1151
    :cond_1
    :try_start_0
    new-instance v2, Lcom/oneplus/io/StreamState;

    invoke-direct {v2, p0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v6, 0x0

    .line 1154
    const/16 v5, 0x8

    :try_start_1
    new-array v1, v5, [B

    .line 1155
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-ge v5, v7, :cond_3

    .line 1164
    if-eqz v2, :cond_0

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1165
    .end local v1    # "header":[B
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1167
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v5, "ImageUtils"

    const-string v6, "getMimeType() - Cannot save stream position"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1164
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":[B
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1159
    :cond_3
    :try_start_5
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isJfifHeader([B)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1160
    const-string v5, "image/jpeg"
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1164
    if-eqz v2, :cond_4

    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    :goto_1
    move-object v4, v5

    goto :goto_0

    :catch_2
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 1161
    :cond_6
    :try_start_8
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isPngHeader([B)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1162
    const-string v5, "image/png"
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1164
    if-eqz v2, :cond_7

    if-eqz v4, :cond_8

    :try_start_9
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    :cond_7
    :goto_2
    move-object v4, v5

    goto :goto_0

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    :try_start_a
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    :cond_9
    if-eqz v2, :cond_0

    if-eqz v4, :cond_a

    :try_start_b
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_0

    :catch_4
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_0

    .line 1151
    .end local v1    # "header":[B
    :catch_5
    move-exception v5

    :try_start_d
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1164
    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_3
    if-eqz v2, :cond_b

    if-eqz v6, :cond_c

    :try_start_e
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    :cond_b
    :goto_4
    :try_start_f
    throw v5

    :catch_6
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v6, v4

    goto :goto_3
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1127
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "stream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 1129
    :try_start_1
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->getMimeType(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 1130
    if-eqz v1, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1134
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 1130
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1131
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .end local v2    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1133
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMimeType() - Fail to open \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 1134
    goto :goto_0

    .line 1130
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1127
    :catch_2
    move-exception v5

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1130
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_2
    :try_start_7
    throw v3

    :catch_3
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v5, v4

    goto :goto_1
.end method

.method public static isJfifHeader(Ljava/io/InputStream;)Z
    .locals 9
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x2

    .line 1181
    :try_start_0
    new-instance v2, Lcom/oneplus/io/StreamState;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v4}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v6, 0x0

    .line 1183
    const/4 v4, 0x2

    :try_start_1
    new-array v1, v4, [B

    .line 1184
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v7, :cond_1

    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->isJfifHeader([B)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 1185
    :goto_0
    if-eqz v2, :cond_0

    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1189
    .end local v1    # "header":[B
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_0
    :goto_1
    return v4

    .restart local v1    # "header":[B
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v4, v5

    .line 1184
    goto :goto_0

    .line 1185
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1186
    .end local v1    # "header":[B
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1188
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v4, "ImageUtils"

    const-string v6, "isJfifHeader() - Unknown error"

    invoke-static {v4, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v5

    .line 1189
    goto :goto_1

    .line 1185
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":[B
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1181
    .end local v1    # "header":[B
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1185
    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v4

    move-object v4, v8

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_3
    :try_start_7
    throw v4

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v4

    goto :goto_2
.end method

.method public static isJfifHeader([B)Z
    .locals 4
    .param p0, "header"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1201
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 1203
    :cond_1
    :goto_0
    return v0

    :cond_2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_3

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xd8

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isPngHeader([B)Z
    .locals 5
    .param p0, "header"    # [B

    .prologue
    const/16 v4, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1214
    if-eqz p0, :cond_0

    array-length v2, p0

    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 1216
    :cond_1
    :goto_0
    return v0

    :cond_2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x89

    if-ne v2, v3, :cond_3

    aget-byte v2, p0, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_3

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_3

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x47

    if-ne v2, v3, :cond_3

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_3

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_3

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    if-eq v2, v4, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z
    .locals 9
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    const/4 v7, 0x4

    .line 1237
    :try_start_0
    new-instance v2, Lcom/oneplus/io/StreamState;

    const/4 v4, 0x4

    invoke-direct {v2, p0, v4}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v6, 0x0

    .line 1239
    const/4 v4, 0x4

    :try_start_1
    new-array v1, v4, [B

    .line 1240
    .local v1, "header":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v7, :cond_1

    invoke-static {v1, p1}, Lcom/oneplus/media/ImageUtils;->isTiffHeader([BLcom/oneplus/base/Ref;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 1241
    :goto_0
    if-eqz v2, :cond_0

    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1245
    .end local v1    # "header":[B
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_0
    :goto_1
    return v4

    .restart local v1    # "header":[B
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_1
    move v4, v5

    .line 1240
    goto :goto_0

    .line 1241
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1242
    .end local v1    # "header":[B
    .end local v2    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1244
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v4, "ImageUtils"

    const-string v6, "isTiffHeader() - Unknown error"

    invoke-static {v4, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v5

    .line 1245
    goto :goto_1

    .line 1241
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":[B
    .restart local v2    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1237
    .end local v1    # "header":[B
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1241
    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v4

    move-object v4, v8

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_3
    :try_start_7
    throw v4

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v2}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v4

    goto :goto_2
.end method

.method public static isTiffHeader([BILcom/oneplus/base/Ref;)Z
    .locals 6
    .param p0, "header"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/16 v5, 0x4d

    const/16 v4, 0x2a

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1271
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 1298
    :cond_1
    :goto_0
    return v0

    .line 1273
    :cond_2
    if-gez p1, :cond_3

    .line 1274
    const/4 p1, 0x0

    .line 1275
    :cond_3
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    if-le p1, v2, :cond_4

    .line 1276
    array-length v2, p0

    add-int/lit8 p1, v2, -0x4

    .line 1277
    :cond_4
    aget-byte v2, p0, p1

    if-eq v2, v5, :cond_5

    aget-byte v2, p0, p1

    const/16 v3, 0x49

    if-ne v2, v3, :cond_7

    :cond_5
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v3, p0, p1

    if-ne v2, v3, :cond_7

    .line 1279
    aget-byte v2, p0, p1

    if-ne v2, v5, :cond_6

    .line 1281
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    if-nez v2, :cond_7

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_7

    .line 1283
    if-eqz p2, :cond_1

    .line 1284
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1290
    :cond_6
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_7

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-nez v2, :cond_7

    .line 1292
    if-eqz p2, :cond_1

    .line 1293
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 1298
    goto :goto_0
.end method

.method public static isTiffHeader([BLcom/oneplus/base/Ref;)Z
    .locals 1
    .param p0, "header"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1258
    .local p1, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/oneplus/media/ImageUtils;->isTiffHeader([BILcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method

.method public static readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;
    .locals 15
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 1329
    if-nez p0, :cond_1

    .line 1331
    const-string v8, "ImageUtils"

    const-string v9, "readPhotoMetadata() - No stream to check"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const/4 v8, 0x0

    .line 1362
    :cond_0
    :goto_0
    return-object v8

    .line 1336
    :cond_1
    :try_start_0
    new-instance v6, Lcom/oneplus/io/StreamState;

    invoke-direct {v6, p0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v6, "streamState":Lcom/oneplus/io/StreamState;
    const/4 v9, 0x0

    .line 1339
    :try_start_1
    new-instance v4, Lcom/oneplus/base/SimpleRef;

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1340
    .local v4, "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    new-instance v5, Lcom/oneplus/base/SimpleRef;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 1341
    .local v5, "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    invoke-static {p0, v5}, Lcom/oneplus/media/ImageUtils;->isTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;)Z

    move-result v1

    .line 1342
    .local v1, "fromTiff":Z
    if-eqz v1, :cond_2

    .line 1343
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1346
    :goto_1
    if-eqz v1, :cond_5

    .line 1349
    invoke-interface {v4}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->getSavedStreamPosition()J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 1350
    .local v2, "headerOffset":J
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 1353
    new-instance v8, Lcom/oneplus/media/ExifMetadata;

    invoke-direct {v8, p0}, Lcom/oneplus/media/ExifMetadata;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1355
    if-eqz v6, :cond_0

    if-eqz v9, :cond_4

    :try_start_2
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1356
    .end local v1    # "fromTiff":Z
    .end local v2    # "headerOffset":J
    .end local v4    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v5    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v6    # "streamState":Lcom/oneplus/io/StreamState;
    .end local v7    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1358
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v8, "ImageUtils"

    const-string v9, "readPhotoMetadata() - Unknown error"

    invoke-static {v8, v9, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1359
    const/4 v8, 0x0

    goto :goto_0

    .line 1345
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "fromTiff":Z
    .restart local v4    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .restart local v5    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .restart local v6    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_2
    :try_start_4
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->isJfifHeader(Ljava/io/InputStream;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p0, v4, v5}, Lcom/oneplus/media/ImageUtils;->findTiffHeader(Ljava/io/InputStream;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v8

    if-eqz v8, :cond_3

    const/4 v1, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 1355
    .restart local v2    # "headerOffset":J
    :cond_4
    :try_start_5
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .end local v2    # "headerOffset":J
    :cond_5
    if-eqz v6, :cond_6

    if-eqz v9, :cond_7

    :try_start_6
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 1362
    :cond_6
    :goto_3
    const/4 v8, 0x0

    goto :goto_0

    .line 1355
    :catch_2
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 1336
    .end local v1    # "fromTiff":Z
    .end local v4    # "headerPosition":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    .end local v5    # "isLittleEndian":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    :catch_3
    move-exception v8

    :try_start_8
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1355
    :catchall_0
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_4
    if-eqz v6, :cond_8

    if-eqz v9, :cond_9

    :try_start_9
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    :cond_8
    :goto_5
    :try_start_a
    throw v8

    :catch_4
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v6}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_5

    :catchall_1
    move-exception v8

    goto :goto_4
.end method

.method public static readPhotoMetadata(Ljava/lang/String;)Lcom/oneplus/media/PhotoMetadata;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1311
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1317
    :goto_0
    return-object v1

    .line 1313
    :catch_0
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ImageUtils"

    const-string v2, "readPhotoMetadata() - Fail to read file"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/4 v1, 0x0

    .line 1375
    rem-int/lit16 p1, p1, 0x168

    .line 1376
    if-gez p1, :cond_0

    .line 1377
    add-int/lit16 p1, p1, 0x168

    .line 1378
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move-object v9, p0

    .line 1399
    :goto_0
    return-object v9

    .line 1382
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_3

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_3

    .line 1384
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 1385
    .local v12, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 1386
    .local v8, "height":I
    mul-int v0, v12, v8

    mul-int/lit8 v7, v0, 0x4

    .line 1387
    .local v7, "dataSize":I
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    .line 1388
    .local v11, "srcPixels":Ljava/nio/IntBuffer;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    .line 1389
    .local v10, "rotatedPixels":Ljava/nio/IntBuffer;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v8, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1390
    .local v9, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v11}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 1391
    invoke-static {v11, v12, v8, v10}, Lcom/oneplus/media/ImageUtils;->rotateRgbaImage90(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;)Z

    .line 1392
    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 1397
    .end local v7    # "dataSize":I
    .end local v8    # "height":I
    .end local v9    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "rotatedPixels":Ljava/nio/IntBuffer;
    .end local v11    # "srcPixels":Ljava/nio/IntBuffer;
    .end local v12    # "width":I
    :cond_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1398
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1399
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0
.end method

.method public static rotateNV21Image([BIII)[B
    .locals 4
    .param p0, "srcYuv"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "degrees"    # I

    .prologue
    .line 1413
    sparse-switch p3, :sswitch_data_0

    .line 1424
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid rotation degrees : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1419
    :sswitch_0
    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 1420
    .local v0, "rotatedUV":[B
    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/media/ImageUtils;->rotateNV21Image90([BII[B)Z

    move-object p0, v0

    .line 1421
    .end local v0    # "rotatedUV":[B
    .end local p0    # "srcYuv":[B
    :sswitch_1
    return-object p0

    .line 1413
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method private static native rotateNV21Image90([BII[B)Z
.end method

.method private static native rotateRgbaImage90(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;)Z
.end method
