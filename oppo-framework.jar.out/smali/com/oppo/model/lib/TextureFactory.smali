.class public Lcom/oppo/model/lib/TextureFactory;
.super Ljava/lang/Object;
.source "TextureFactory.java"


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "TextureFactory"

.field private static final TEX_DEFAULT_BORDER:I = 0x0

.field private static final TEX_DEFAULT_LEVEL:I = 0x0

.field private static final TEX_ID_ARRAR_LEN:I = 0x1

.field private static final TEX_ID_BASE_VALUE:I = 0x0

.field private static final TEX_ID_INDEX:I = 0x0

.field private static final TEX_ID_INVALID_VALUE:I = -0x1

.field private static final TEX_ID_OFFSET:I = 0x0

.field private static final TEX_SIZE_INVALID:I = 0x0

.field private static final TEX_SIZE_MAX:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "idx"    # I

    .prologue
    .line 300
    if-nez p0, :cond_0

    .line 301
    const-string v4, "TextureFactory"

    const-string v5, "createImage() context null error."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    .line 321
    :goto_0
    return-object v0

    .line 305
    :cond_0
    const/4 v3, 0x0

    .line 306
    .local v3, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 309
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 310
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 315
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "TextureFactory"

    const-string v5, "createImage() is close error."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 312
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 316
    :catch_2
    move-exception v1

    .line 317
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v4, "TextureFactory"

    const-string v5, "createImage() is close error."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 315
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 318
    :goto_1
    throw v4

    .line 316
    :catch_3
    move-exception v1

    .line 317
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "TextureFactory"

    const-string v6, "createImage() is close error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static createImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textureName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 263
    if-nez p0, :cond_0

    .line 264
    const-string v5, "TextureFactory"

    const-string v6, "createImage() context null error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    return-object v1

    .line 267
    :cond_0
    if-nez p1, :cond_1

    .line 268
    const-string v5, "TextureFactory"

    const-string v6, "createImage() textureName null error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 273
    .local v0, "am":Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 274
    .local v4, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 277
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "texture/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/oppo/model/lib/ModelUtils;->msPathToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 278
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 283
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "TextureFactory"

    const-string v6, "createImage() is close error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 280
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 284
    :catch_2
    move-exception v2

    .line 285
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "TextureFactory"

    const-string v6, "createImage() is close error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 283
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 286
    :goto_1
    throw v5

    .line 284
    :catch_3
    move-exception v2

    .line 285
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "TextureFactory"

    const-string v7, "createImage() is close error."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static createScaledBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 385
    if-nez p0, :cond_0

    .line 386
    const-string v3, "TextureFactory"

    const-string v4, "createScaledBitmap() srcBitmap null error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    .line 399
    :goto_0
    return-object v0

    .line 392
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Lcom/oppo/model/lib/TextureFactory;->modifyBitmapSize(I)I

    move-result v2

    .line 393
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Lcom/oppo/model/lib/TextureFactory;->modifyBitmapSize(I)I

    move-result v1

    .line 397
    .local v1, "height":I
    const/4 v3, 0x1

    invoke-static {p0, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 399
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private static createTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;III)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "wrap_s_mode"    # I
    .param p4, "wrap_t_mode"    # I
    .param p5, "texEnvMode"    # I

    .prologue
    const/4 v7, 0x1

    const v6, 0x46180400    # 9729.0f

    const/16 v8, 0xde1

    const/4 v4, 0x0

    .line 337
    if-nez p0, :cond_0

    .line 338
    const-string v5, "TextureFactory"

    const-string v6, "createTexture() context null error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 375
    :goto_0
    return v2

    .line 341
    :cond_0
    if-nez p1, :cond_1

    .line 342
    const-string v5, "TextureFactory"

    const-string v6, "createTexture() gl null error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 343
    goto :goto_0

    .line 345
    :cond_1
    if-nez p2, :cond_2

    .line 346
    const-string v5, "TextureFactory"

    const-string v6, "createTexture() bitmap null error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 347
    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 350
    const-string v5, "TextureFactory"

    const-string v6, "createTexture() error, bitmap recycled."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 351
    goto :goto_0

    .line 354
    :cond_3
    new-array v3, v7, [I

    .line 355
    .local v3, "textures":[I
    invoke-interface {p1, v7, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 356
    aget v2, v3, v4

    .line 357
    .local v2, "textureID":I
    invoke-interface {p1, v8, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 359
    const/16 v5, 0x2801

    invoke-interface {p1, v8, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 360
    const/16 v5, 0x2800

    invoke-interface {p1, v8, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 361
    const/16 v5, 0x2802

    int-to-float v6, p3

    invoke-interface {p1, v8, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 362
    const/16 v5, 0x2803

    int-to-float v6, p4

    invoke-interface {p1, v8, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 363
    const/16 v5, 0x2300

    const/16 v6, 0x2200

    int-to-float v7, p5

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 365
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Lcom/oppo/model/lib/TextureFactory;->needResize(II)Z

    move-result v0

    .line 366
    .local v0, "resize":Z
    invoke-static {p0}, Lcom/oppo/widget/Oppo3DConfiguration;->getTextureResize(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    .line 367
    invoke-static {p2}, Lcom/oppo/model/lib/TextureFactory;->createScaledBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 368
    .local v1, "scaleBitmap":Landroid/graphics/Bitmap;
    invoke-static {v8, v4, v1, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 369
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 372
    .end local v1    # "scaleBitmap":Landroid/graphics/Bitmap;
    :cond_4
    invoke-static {v8, v4, p2, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public static deleteTexture(I)Z
    .locals 3
    .param p0, "textureId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 247
    if-gtz p0, :cond_0

    .line 252
    :goto_0
    return v1

    .line 250
    :cond_0
    new-array v0, v2, [I

    aput p0, v0, v1

    .line 251
    .local v0, "textureArray":[I
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES10;->glDeleteTextures(I[II)V

    move v1, v2

    .line 252
    goto :goto_0
.end method

.method public static deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z
    .locals 4
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "textureId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    if-nez p0, :cond_1

    .line 229
    const-string v2, "TextureFactory"

    const-string v3, "deleteTexture() gl null error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    if-lez p1, :cond_0

    .line 235
    new-array v0, v2, [I

    aput p1, v0, v1

    .line 236
    .local v0, "textureArray":[I
    invoke-interface {p0, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    move v1, v2

    .line 237
    goto :goto_0
.end method

.method public static getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "idx"    # I

    .prologue
    const v0, 0x812f

    .line 138
    invoke-static {p0, p1, p2, v0, v0}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;III)I

    move-result v0

    return v0
.end method

.method public static getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;III)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "idx"    # I
    .param p3, "wrap_s_mode"    # I
    .param p4, "wrap_t_mode"    # I

    .prologue
    .line 153
    invoke-static {p0, p2}, Lcom/oppo/model/lib/TextureFactory;->createImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 154
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/16 v5, 0x1e01

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/oppo/model/lib/TextureFactory;->createTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;III)I

    move-result v6

    .line 155
    .local v6, "textureID":I
    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    const/4 v2, 0x0

    .line 159
    :cond_0
    return v6
.end method

.method public static getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const v0, 0x812f

    .line 171
    invoke-static {p0, p1, p2, v0, v0}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;II)I

    move-result v0

    return v0
.end method

.method public static getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "texEnvMode"    # I

    .prologue
    const v3, 0x812f

    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;III)I

    move-result v0

    return v0
.end method

.method public static getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;II)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "wrap_s_mode"    # I
    .param p4, "wrap_t_mode"    # I

    .prologue
    .line 186
    const/16 v5, 0x1e01

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/oppo/model/lib/TextureFactory;->createTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;III)I

    move-result v6

    .line 187
    .local v6, "textureID":I
    return v6
.end method

.method public static getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;III)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "wrap_s_mode"    # I
    .param p4, "wrap_t_mode"    # I
    .param p5, "texEnvMode"    # I

    .prologue
    .line 216
    invoke-static/range {p0 .. p5}, Lcom/oppo/model/lib/TextureFactory;->createTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;III)I

    move-result v0

    .line 217
    .local v0, "textureID":I
    return v0
.end method

.method public static getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "textureName"    # Ljava/lang/String;

    .prologue
    const v0, 0x812f

    .line 70
    invoke-static {p0, p1, p2, v0, v0}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "textureName"    # Ljava/lang/String;
    .param p3, "texEnvMode"    # I

    .prologue
    const v3, 0x812f

    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;II)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "textureName"    # Ljava/lang/String;
    .param p3, "wrap_s_mode"    # I
    .param p4, "wrap_t_mode"    # I

    .prologue
    .line 85
    invoke-static {p0, p2}, Lcom/oppo/model/lib/TextureFactory;->createImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 86
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/16 v5, 0x1e01

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/oppo/model/lib/TextureFactory;->createTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;III)I

    move-result v6

    .line 87
    .local v6, "textureID":I
    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    const/4 v2, 0x0

    .line 91
    :cond_0
    return v6
.end method

.method public static getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;III)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "textureName"    # Ljava/lang/String;
    .param p3, "wrap_s_mode"    # I
    .param p4, "wrap_t_mode"    # I
    .param p5, "texEnvMode"    # I

    .prologue
    .line 120
    invoke-static {p0, p2}, Lcom/oppo/model/lib/TextureFactory;->createImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 121
    invoke-static/range {v0 .. v5}, Lcom/oppo/model/lib/TextureFactory;->createTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;III)I

    move-result v6

    .line 122
    .local v6, "textureID":I
    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    const/4 v2, 0x0

    .line 126
    :cond_0
    return v6
.end method

.method public static hasTexturePadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p0, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 480
    if-nez p0, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_2

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_2

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gtz v1, :cond_2

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_0

    .line 484
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static modifyBitmapSize(I)I
    .locals 4
    .param p0, "size"    # I

    .prologue
    .line 510
    if-gtz p0, :cond_1

    .line 511
    const-string v1, "TextureFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyBitmapSize() error size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v0, 0x0

    .line 518
    :cond_0
    :goto_0
    return v0

    .line 514
    :cond_1
    invoke-static {p0}, Lcom/oppo/model/lib/ModelUtils;->nextPowerOf2(I)I

    move-result v0

    .line 515
    .local v0, "result":I
    const/16 v1, 0x400

    if-le p0, v1, :cond_0

    .line 516
    const/16 v0, 0x400

    goto :goto_0
.end method

.method public static modifyTexture(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "texture"    # Landroid/graphics/Bitmap;
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 410
    if-nez p0, :cond_0

    .line 445
    :goto_0
    return-object v0

    .line 414
    :cond_0
    const/4 v0, 0x0

    .line 415
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 416
    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 417
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 420
    .local v3, "height":I
    :try_start_0
    invoke-static {p1}, Lcom/oppo/model/lib/TextureFactory;->hasTexturePadding(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 421
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 422
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 423
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    sub-int v9, v6, v9

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v3, v10

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 424
    .local v5, "rect":Landroid/graphics/Rect;
    const/4 v7, 0x0

    invoke-virtual {v1, p0, v5, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 426
    invoke-static {v6}, Lcom/oppo/model/lib/TextureFactory;->modifyBitmapSize(I)I

    move-result v6

    .line 427
    invoke-static {v3}, Lcom/oppo/model/lib/TextureFactory;->modifyBitmapSize(I)I

    move-result v3

    .line 428
    const/4 v7, 0x1

    invoke-static {v4, v6, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 429
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 430
    const/4 v4, 0x0

    .line 431
    goto :goto_0

    .line 432
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_1
    invoke-static {v6}, Lcom/oppo/model/lib/TextureFactory;->modifyBitmapSize(I)I

    move-result v6

    .line 433
    invoke-static {v3}, Lcom/oppo/model/lib/TextureFactory;->modifyBitmapSize(I)I

    move-result v3

    .line 434
    const/4 v7, 0x1

    invoke-static {p0, v6, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v2

    .line 437
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    if-eqz v4, :cond_2

    .line 438
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 439
    const/4 v4, 0x0

    .line 441
    :cond_2
    const/4 v0, 0x0

    .line 442
    const-string v7, "TextureFactory"

    const-string v8, "modifyTexture() OutOfMemoryError."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static needResize(II)Z
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 497
    invoke-static {p0}, Lcom/oppo/model/lib/ModelUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oppo/model/lib/ModelUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    const/4 v0, 0x0

    .line 500
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static needResize(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "texture"    # Landroid/graphics/Bitmap;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 457
    if-nez p0, :cond_1

    .line 458
    const-string v1, "TextureFactory"

    const-string v2, "needResize() context null error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    :goto_0
    return v0

    .line 461
    :cond_1
    if-eqz p1, :cond_0

    .line 464
    invoke-static {p2}, Lcom/oppo/model/lib/TextureFactory;->hasTexturePadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 465
    const/4 v0, 0x1

    goto :goto_0

    .line 467
    :cond_2
    invoke-static {p0}, Lcom/oppo/widget/Oppo3DConfiguration;->getTextureResize(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/model/lib/TextureFactory;->needResize(II)Z

    move-result v0

    goto :goto_0
.end method
