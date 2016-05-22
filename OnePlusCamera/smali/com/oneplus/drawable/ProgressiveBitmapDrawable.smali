.class public Lcom/oneplus/drawable/ProgressiveBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressiveBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;,
        Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;,
        Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;
    }
.end annotation


# static fields
.field private static final DECODING_TILE_BITMAP:Landroid/graphics/Bitmap;

.field private static final EXTRA_DECODING_PADDING:I = 0x2

.field private static final INVALID_TILE_BITMAP:Landroid/graphics/Bitmap;

.field private static final MAX_ACTIVE_TILE_COUNT:I = 0x80

.field private static final MSG_BITMAP_DECODER_READY:I = 0x2711

.field private static final MSG_INVALIDATE:I = 0x2710

.field private static final MSG_UPDATE_BITMAP_INFO:I = 0x2712

.field private static final MSG_UPDATE_BITMAP_TILE:I = 0x271a

.field private static final MSG_UPDATE_FULL_SIZE_BITMAP:I = 0x271b

.field private static final PRINT_TRACE_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "ProgressiveBitmapDrawable"

.field private static final TILE_SIZE:I = 0x100

.field private static final m_DecodingExecutors:Ljava/util/concurrent/Executor;


# instance fields
.field private m_BitmapConfig:Landroid/graphics/Bitmap$Config;

.field private m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

.field private m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

.field private m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

.field private m_ContentResolver:Landroid/content/ContentResolver;

.field private final m_DestDrawingBounds:Landroid/graphics/RectF;

.field private final m_DrawingBounds:Landroid/graphics/Rect;

.field private volatile m_FullSizeBitmap:Landroid/graphics/Bitmap;

.field private volatile m_Handler:Landroid/os/Handler;

.field private m_IsBitmapDecoderReady:Z

.field private m_IsHighQualityBitmapEnabled:Z

.field private volatile m_IsReleased:Z

.field private volatile m_Orientation:I

.field private volatile m_OriginalHeight:I

.field private volatile m_OriginalWidth:I

.field private m_Paint:Landroid/graphics/Paint;

.field private m_SampleSize:I

.field private m_Source:Ljava/lang/Object;

.field private final m_SrcDrawingBounds:Landroid/graphics/Rect;

.field private m_ThumbnailBitmap:Landroid/graphics/Bitmap;

.field private m_TileDecodingQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_TileUsageQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_Tiles:[[Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->INVALID_TILE_BITMAP:Landroid/graphics/Bitmap;

    .line 39
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->DECODING_TILE_BITMAP:Landroid/graphics/Bitmap;

    .line 48
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 147
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    .line 62
    iput-boolean v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    .line 65
    iput v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 66
    iput v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 68
    iput v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    .line 148
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ContentResolver:Landroid/content/ContentResolver;

    .line 149
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->initialize(Ljava/lang/Object;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 135
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    .line 62
    iput-boolean v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    .line 65
    iput v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 66
    iput v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 68
    iput v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->initialize(Ljava/lang/Object;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->decodeBitmapInfoAsync()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->initializeBitmapDecoder()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable;
    .param p1, "x1"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;
    .param p2, "x2"    # Landroid/graphics/BitmapRegionDecoder;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/util/LinkedList;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->decodeTilesAsync(Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private cancelDecodingBitmapTiles()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 161
    iget-object v2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    .line 162
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    .line 164
    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    .line 165
    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    .line 166
    check-cast v0, [[Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    .line 167
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 169
    :cond_0
    return-void

    .line 162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private decodeBitmapInfoAsync()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/16 v12, 0x10e

    const/16 v11, 0x5a

    const/4 v10, 0x1

    .line 175
    const/4 v5, 0x0

    .line 176
    .local v5, "width":I
    const/4 v1, 0x0

    .line 177
    .local v1, "height":I
    const/4 v4, 0x0

    .line 180
    .local v4, "orientation":I
    :try_start_0
    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 182
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 183
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 184
    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 185
    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/lang/String;)I

    move-result v4

    .line 186
    if-eq v4, v11, :cond_0

    if-ne v4, v12, :cond_2

    .line 188
    :cond_0
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 189
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v8, 0x2712

    new-array v9, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v5, v1, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 228
    :goto_1
    return-void

    .line 193
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :try_start_1
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 194
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0

    .line 197
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v7, v7, Landroid/net/Uri;

    if-eqz v7, :cond_9

    .line 199
    iget-object v9, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v9, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 201
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 202
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 203
    const/4 v9, 0x0

    invoke-static {v2, v9, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 204
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/io/InputStream;)I

    move-result v4

    .line 205
    if-eq v4, v11, :cond_4

    if-ne v4, v12, :cond_5

    .line 207
    :cond_4
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 208
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    :goto_2
    if-eqz v2, :cond_1

    if-eqz v8, :cond_6

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 223
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 225
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v7, "ProgressiveBitmapDrawable"

    const-string v8, "decodeBitmapInfoAsync() - Unknown error"

    invoke-static {v7, v8, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 212
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_5
    :try_start_5
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 213
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 215
    :cond_6
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 199
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v7

    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 215
    :catchall_0
    move-exception v8

    move-object v13, v8

    move-object v8, v7

    move-object v7, v13

    :goto_3
    if-eqz v2, :cond_7

    if-eqz v8, :cond_8

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :cond_7
    :goto_4
    :try_start_9
    throw v7

    :catch_3
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 219
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :cond_9
    const-string v7, "ProgressiveBitmapDrawable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeBitmapInfoAsync() - Unknown source : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    .line 215
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    goto :goto_3
.end method

.method private decodeTilesAsync(Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V
    .locals 21
    .param p1, "task"    # Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;
    .param p2, "decoder"    # Landroid/graphics/BitmapRegionDecoder;
    .param p3, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;",
            "Landroid/graphics/BitmapRegionDecoder;",
            "I",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p4, "decodingQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v3, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Sample size : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    if-eqz p2, :cond_a

    .line 245
    :try_start_0
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 246
    .local v9, "decodeRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 249
    .local v7, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, p3

    mul-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    .line 250
    .local v16, "tileSize":I
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 251
    .local v12, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v12, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 252
    const/4 v3, 0x1

    iput-boolean v3, v12, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    iput-object v3, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 254
    move/from16 v0, p3

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 255
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 256
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    .line 258
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 259
    .local v14, "originalWidth":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 269
    .local v13, "originalHeight":I
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v3, :cond_4

    .line 271
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Sample size : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ", cancelled"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "decodeRect":Landroid/graphics/Rect;
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "originalHeight":I
    .end local v14    # "originalWidth":I
    .end local v16    # "tileSize":I
    :goto_2
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - End"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v9    # "decodeRect":Landroid/graphics/Rect;
    .restart local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v16    # "tileSize":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 264
    .restart local v14    # "originalWidth":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .restart local v13    # "originalHeight":I
    goto :goto_1

    .line 277
    :cond_4
    monitor-enter p4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    :try_start_2
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 280
    .local v15, "position":Ljava/lang/Integer;
    if-nez v15, :cond_5

    .line 282
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->wait()V

    .line 283
    monitor-exit p4

    goto :goto_1

    .line 287
    .end local v15    # "position":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 357
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "decodeRect":Landroid/graphics/Rect;
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "originalHeight":I
    .end local v14    # "originalWidth":I
    .end local v16    # "tileSize":I
    :catch_0
    move-exception v10

    .line 359
    .local v10, "ex":Ljava/lang/Throwable;
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Unknown error"

    invoke-static {v3, v4, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 285
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v9    # "decodeRect":Landroid/graphics/Rect;
    .restart local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "originalHeight":I
    .restart local v14    # "originalWidth":I
    .restart local v15    # "position":Ljava/lang/Integer;
    .restart local v16    # "tileSize":I
    :cond_5
    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shr-int/lit8 v17, v3, 0x10

    .line 286
    .local v17, "tileX":I
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0xffff

    and-int v18, v3, v4

    .line 287
    .local v18, "tileY":I
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 292
    :try_start_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    sparse-switch v3, :sswitch_data_0

    .line 314
    mul-int v3, v17, v16

    mul-int v4, v18, v16

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 315
    iget v3, v9, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v16

    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 316
    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v16

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 320
    :goto_3
    monitor-enter p2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 322
    :try_start_6
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v3, :cond_6

    .line 324
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Sample size : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ", cancelled before decoding tile"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    monitor-exit p2

    goto :goto_2

    .line 328
    :catchall_1
    move-exception v3

    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3

    .line 295
    :sswitch_0
    mul-int v3, v18, v16

    add-int/lit8 v4, v17, 0x1

    mul-int v4, v4, v16

    sub-int v4, v13, v4

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 296
    iget v3, v9, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v16

    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 297
    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v16

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 298
    const/4 v3, 0x0

    iget v4, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 301
    :sswitch_1
    add-int/lit8 v3, v18, 0x1

    mul-int v3, v3, v16

    sub-int v3, v14, v3

    mul-int v4, v17, v16

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 302
    iget v3, v9, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v16

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 303
    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v16

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 304
    const/4 v3, 0x0

    iget v4, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 307
    :sswitch_2
    add-int/lit8 v3, v17, 0x1

    mul-int v3, v3, v16

    sub-int v3, v14, v3

    add-int/lit8 v4, v18, 0x1

    mul-int v4, v4, v16

    sub-int v4, v13, v4

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 308
    iget v3, v9, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v16

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 309
    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v16

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 310
    const/4 v3, 0x0

    iget v4, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 311
    const/4 v3, 0x0

    iget v4, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v9, Landroid/graphics/Rect;->top:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_3

    .line 327
    :cond_6
    :try_start_8
    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v12}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 328
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 331
    :try_start_9
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v3, :cond_7

    .line 333
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Sample size : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ", cancelled"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 338
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    if-eqz v3, :cond_8

    .line 340
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 341
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-eqz v3, :cond_8

    .line 343
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Sample size : "

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ", cancelled"

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 349
    :cond_8
    if-nez v2, :cond_9

    .line 351
    sget-object v2, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->INVALID_TILE_BITMAP:Landroid/graphics/Bitmap;

    .line 352
    const-string v3, "ProgressiveBitmapDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeTilesAsync() - Fail to decode tile ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v4, 0x271a

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v4, v0, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    .line 364
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "decodeRect":Landroid/graphics/Rect;
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "originalHeight":I
    .end local v14    # "originalWidth":I
    .end local v15    # "position":Ljava/lang/Integer;
    .end local v16    # "tileSize":I
    .end local v17    # "tileX":I
    .end local v18    # "tileY":I
    :cond_a
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Decode directly"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x1000

    const/16 v5, 0x1000

    const/4 v6, 0x3

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5, v6, v8}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 386
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_b
    :goto_4
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;->isCancelled:Z

    if-nez v3, :cond_0

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v4, 0x271b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 370
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v3, v3, Landroid/net/Uri;

    if-eqz v3, :cond_10

    .line 372
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v11

    .local v11, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 374
    const/16 v3, 0x1000

    const/16 v5, 0x1000

    const/4 v6, 0x3

    :try_start_b
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v3, v5, v6, v8}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-object v2

    .line 375
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_b

    if-eqz v4, :cond_d

    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_4

    :catch_1
    move-exception v19

    .local v19, "x2":Ljava/lang/Throwable;
    :try_start_d
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_4

    .line 376
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v19    # "x2":Ljava/lang/Throwable;
    :catch_2
    move-exception v10

    .line 378
    .restart local v10    # "ex":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 379
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    const-string v3, "ProgressiveBitmapDrawable"

    const-string v4, "decodeTilesAsync() - Unknown error"

    invoke-static {v3, v4, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 375
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :cond_d
    :try_start_e
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_4

    .line 372
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v3

    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 375
    :catchall_2
    move-exception v4

    move-object/from16 v20, v4

    move-object v4, v3

    move-object/from16 v3, v20

    :goto_5
    if-eqz v11, :cond_e

    if-eqz v4, :cond_f

    :try_start_10
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4

    :cond_e
    :goto_6
    :try_start_11
    throw v3

    :catch_4
    move-exception v19

    .restart local v19    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v19    # "x2":Ljava/lang/Throwable;
    :cond_f
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_6

    .line 383
    .end local v11    # "inputStream":Ljava/io/InputStream;
    :cond_10
    const/4 v2, 0x0

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 375
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :catchall_3
    move-exception v3

    goto :goto_5

    .line 292
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 651
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 654
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    invoke-direct {p0, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->onBitmapDecoderReady(Landroid/graphics/BitmapRegionDecoder;)V

    goto :goto_0

    .line 658
    :sswitch_1
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    goto :goto_0

    .line 663
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 664
    .local v0, "params":[Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    aget-object v1, v0, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->onBitmapInfoUpdated(III)V

    goto :goto_0

    .line 670
    .end local v0    # "params":[Ljava/lang/Object;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 671
    .restart local v0    # "params":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    aget-object v2, v0, v4

    if-ne v1, v2, :cond_0

    .line 672
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v3, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->onBitmapTileUpdated(IILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 651
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_1
        0x2711 -> :sswitch_0
        0x2712 -> :sswitch_2
        0x271a -> :sswitch_3
    .end sparse-switch
.end method

.method private initialize(Ljava/lang/Object;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 689
    if-nez p1, :cond_0

    .line 690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bitmap source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_0
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    .line 694
    iput-object p2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 695
    iput-object p3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 698
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 699
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 702
    new-instance v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;)V

    iput-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    .line 710
    return-void
.end method

.method private initializeBitmapDecoder()V
    .locals 10

    .prologue
    .line 716
    const-string v6, "ProgressiveBitmapDrawable"

    const-string v7, "initializeBitmapDecoder()"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 718
    .local v4, "time":J
    const/4 v0, 0x0

    .line 721
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 722
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 737
    :cond_0
    :goto_0
    const-string v6, "ProgressiveBitmapDrawable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeBitmapDecoder() - Take "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v7, 0x2711

    invoke-static {v6, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 739
    return-void

    .line 723
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    instance-of v6, v6, Landroid/net/Uri;

    if-eqz v6, :cond_5

    .line 725
    iget-object v7, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 727
    const/4 v6, 0x1

    :try_start_2
    invoke-static {v2, v6}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 728
    if-eqz v2, :cond_0

    if-eqz v7, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 733
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 735
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v6, "initializeBitmapDecoder()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to create region decoder for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 728
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 725
    :catch_2
    move-exception v7

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 728
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_3

    if-eqz v7, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_1
    :try_start_8
    throw v6

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 731
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :cond_5
    const-string v6, "ProgressiveBitmapDrawable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeBitmapDecoder() - Unknown source : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0
.end method

.method private onBitmapDecoderReady(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .param p1, "decoder"    # Landroid/graphics/BitmapRegionDecoder;

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    if-eqz v0, :cond_1

    .line 747
    if-eqz p1, :cond_0

    .line 748
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsBitmapDecoderReady:Z

    .line 753
    if-eqz p1, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method private onBitmapInfoUpdated(III)V
    .locals 0
    .param p1, "originalWidth"    # I
    .param p2, "originalHeight"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 761
    iput p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 762
    iput p2, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 763
    iput p3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Orientation:I

    .line 764
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 765
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 766
    return-void
.end method

.method private onBitmapTileUpdated(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 772
    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 773
    .local v0, "position":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    aget-object v1, v1, p2

    aput-object p3, v1, p1

    .line 778
    sget-object v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->INVALID_TILE_BITMAP:Landroid/graphics/Bitmap;

    if-eq p3, v1, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method private startDecodingBitmapTiles()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    .line 869
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 872
    iget-boolean v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    if-gtz v3, :cond_1

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    int-to-double v4, v3

    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 877
    .local v0, "tileCountX":I
    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    int-to-double v4, v3

    iget v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 878
    .local v1, "tileCountY":I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    .line 879
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    .line 880
    new-array v3, v1, [[Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    .line 881
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 882
    iget-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    new-array v4, v0, [Landroid/graphics/Bitmap;

    aput-object v4, v3, v2

    .line 881
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 885
    :cond_2
    new-instance v3, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    iget-object v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    iget v5, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    iget-object v6, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Landroid/graphics/BitmapRegionDecoder;ILjava/util/LinkedList;)V

    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    .line 886
    sget-object v3, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 401
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 406
    .local v7, "clipBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 407
    .local v6, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_0

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v25, v34, v35

    .line 417
    .local v25, "relativeSrcLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v27, v34, v35

    .line 418
    .local v27, "relativeSrcTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v26, v34, v35

    .line 419
    .local v26, "relativeSrcRight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v24, v34, v35

    .line 420
    .local v24, "relativeSrcBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    if-eqz v34, :cond_2

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v25

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v36, v36, v27

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v37, v37, v26

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->round(F)I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v24

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->round(F)I

    move-result v38

    invoke-virtual/range {v34 .. v38}, Landroid/graphics/Rect;->set(IIII)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 432
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    if-eqz v34, :cond_3

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v25

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v36, v36, v27

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v37, v37, v26

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->round(F)I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v24

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->round(F)I

    move-result v38

    invoke-virtual/range {v34 .. v38}, Landroid/graphics/Rect;->set(IIII)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 445
    :cond_3
    const/4 v9, 0x0

    .line 446
    .local v9, "drawLater":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    move-object/from16 v34, v0

    if-nez v34, :cond_4

    .line 448
    new-instance v34, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    .line 449
    sget-object v34, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapInfoDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapInfoDecodingTask;

    move-object/from16 v35, v0

    invoke-interface/range {v34 .. v35}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 450
    const/4 v9, 0x1

    .line 454
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsBitmapDecoderReady:Z

    move/from16 v34, v0

    if-nez v34, :cond_6

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    move-object/from16 v34, v0

    if-nez v34, :cond_5

    .line 458
    new-instance v34, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;-><init>(Lcom/oneplus/drawable/ProgressiveBitmapDrawable;Lcom/oneplus/drawable/ProgressiveBitmapDrawable$1;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    .line 459
    sget-object v34, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DecodingExecutors:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoderInitTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapDecoderInitTask;

    move-object/from16 v35, v0

    invoke-interface/range {v34 .. v35}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 461
    :cond_5
    const/4 v9, 0x1

    .line 465
    :cond_6
    if-nez v9, :cond_0

    .line 469
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    move/from16 v34, v0

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    move/from16 v34, v0

    if-lez v34, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    move/from16 v34, v0

    if-lez v34, :cond_0

    .line 473
    const/16 v28, 0x2

    .line 474
    .local v28, "sampleSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    move/from16 v34, v0

    div-int v8, v34, v28

    .line 475
    .local v8, "displayWidth":I
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v34

    move/from16 v0, v34

    if-lt v8, v0, :cond_7

    const/16 v34, 0x100

    move/from16 v0, v28

    move/from16 v1, v34

    if-gt v0, v1, :cond_7

    .line 477
    shl-int/lit8 v28, v28, 0x1

    .line 478
    shr-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 480
    :cond_7
    shr-int/lit8 v28, v28, 0x1

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    .line 485
    const-string v34, "ProgressiveBitmapDrawable"

    const-string v35, "draw() - Change sample size from "

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const-string v37, " to "

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-static/range {v34 .. v38}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 486
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 487
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SampleSize:I

    .line 491
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapTilesDecodingTask:Lcom/oneplus/drawable/ProgressiveBitmapDrawable$BitmapTilesDecodingTask;

    move-object/from16 v34, v0

    if-nez v34, :cond_9

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->startDecodingBitmapTiles()V

    .line 495
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    move/from16 v34, v0

    div-int v18, v34, v28

    .line 496
    .local v18, "originalWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    move/from16 v34, v0

    div-int v17, v34, v28

    .line 497
    .local v17, "originalHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v25

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v36, v36, v27

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v37, v37, v26

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->round(F)I

    move-result v37

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v24

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->round(F)I

    move-result v38

    invoke-virtual/range {v34 .. v38}, Landroid/graphics/Rect;->set(IIII)V

    .line 503
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x43800000    # 256.0f

    div-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    add-int/lit8 v12, v34, -0x1

    .line 504
    .local v12, "maxTileX":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x43800000    # 256.0f

    div-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    add-int/lit8 v13, v34, -0x1

    .line 505
    .local v13, "maxTileY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x100

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->floor(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v29, v0

    .line 506
    .local v29, "startTileX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x100

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->floor(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v30, v0

    .line 507
    .local v30, "startTileY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x100

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 508
    .local v10, "endTileX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x100

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 509
    .local v11, "endTileY":I
    const/16 v34, 0x0

    add-int/lit8 v35, v29, -0x2

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 510
    .local v21, "paddingStartX":I
    const/16 v34, 0x0

    add-int/lit8 v35, v30, -0x2

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 511
    .local v22, "paddingStartY":I
    add-int/lit8 v34, v10, 0x2

    move/from16 v0, v34

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 512
    .local v19, "paddingEndX":I
    add-int/lit8 v34, v11, 0x2

    move/from16 v0, v34

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 513
    .local v20, "paddingEndY":I
    move/from16 v33, v20

    .local v33, "y":I
    :goto_2
    move/from16 v0, v33

    move/from16 v1, v22

    if-lt v0, v1, :cond_e

    .line 515
    move/from16 v32, v19

    .local v32, "x":I
    :goto_3
    move/from16 v0, v32

    move/from16 v1, v21

    if-lt v0, v1, :cond_d

    .line 517
    move/from16 v0, v33

    move/from16 v1, v30

    if-lt v0, v1, :cond_a

    move/from16 v0, v33

    if-gt v0, v11, :cond_a

    move/from16 v0, v32

    move/from16 v1, v29

    if-lt v0, v1, :cond_a

    move/from16 v0, v32

    if-le v0, v10, :cond_c

    .line 519
    :cond_a
    shl-int/lit8 v34, v32, 0x10

    or-int v34, v34, v33

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 520
    .local v23, "position":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    aget-object v34, v34, v33

    aget-object v34, v34, v32

    if-nez v34, :cond_c

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 527
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->notifyAll()V

    .line 529
    monitor-exit v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    aget-object v34, v34, v33

    sget-object v35, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->DECODING_TILE_BITMAP:Landroid/graphics/Bitmap;

    aput-object v35, v34, v32

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_b

    .line 535
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/LinkedList;->size()I

    move-result v34

    const/16 v35, 0x80

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_b

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 538
    .local v14, "oldPosition":I
    shr-int/lit8 v15, v14, 0x10

    .line 539
    .local v15, "oldX":I
    const v34, 0xffff

    and-int v16, v14, v34

    .line 540
    .local v16, "oldY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    aget-object v34, v34, v16

    const/16 v35, 0x0

    aput-object v35, v34, v15

    goto :goto_4

    .line 529
    .end local v14    # "oldPosition":I
    .end local v15    # "oldX":I
    .end local v16    # "oldY":I
    :catchall_0
    move-exception v34

    :try_start_1
    monitor-exit v35
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v34

    .line 543
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 515
    .end local v23    # "position":Ljava/lang/Integer;
    :cond_c
    add-int/lit8 v32, v32, -0x1

    goto/16 :goto_3

    .line 513
    :cond_d
    add-int/lit8 v33, v33, -0x1

    goto/16 :goto_2

    .line 550
    .end local v32    # "x":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 551
    move/from16 v33, v11

    :goto_5
    move/from16 v0, v33

    move/from16 v1, v30

    if-lt v0, v1, :cond_0

    .line 553
    move/from16 v32, v10

    .restart local v32    # "x":I
    :goto_6
    move/from16 v0, v32

    move/from16 v1, v29

    if-lt v0, v1, :cond_13

    .line 556
    shl-int/lit8 v34, v32, 0x10

    or-int v34, v34, v33

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 557
    .restart local v23    # "position":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    aget-object v34, v34, v33

    aget-object v31, v34, v32

    .line 558
    .local v31, "tileBitmap":Landroid/graphics/Bitmap;
    sget-object v34, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->DECODING_TILE_BITMAP:Landroid/graphics/Bitmap;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_11

    .line 560
    if-eqz v31, :cond_10

    .line 562
    sget-object v34, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->INVALID_TILE_BITMAP:Landroid/graphics/Bitmap;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_f

    .line 553
    :goto_7
    add-int/lit8 v32, v32, -0x1

    goto :goto_6

    .line 564
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x43800000    # 256.0f

    mul-float v36, v36, v37

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v36, v36, v37

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    add-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v37, v0

    const/high16 v38, 0x43800000    # 256.0f

    mul-float v37, v37, v38

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v37, v37, v38

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v37, v37, v38

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    add-int v36, v36, v37

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v37, v0

    add-int/lit8 v38, v32, 0x1

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x43800000    # 256.0f

    mul-float v38, v38, v39

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v39, v0

    div-float v38, v38, v39

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    add-int/lit8 v39, v33, 0x1

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    const/high16 v40, 0x43800000    # 256.0f

    mul-float v39, v39, v40

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v39, v39, v40

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    add-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    invoke-virtual/range {v34 .. v38}, Landroid/graphics/RectF;->set(FFFF)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v35, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(FF)F

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v35, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(FF)F

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_SrcDrawingBounds:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_DestDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 598
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_12

    .line 600
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/LinkedList;->size()I

    move-result v34

    const/16 v35, 0x80

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_12

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 603
    .restart local v14    # "oldPosition":I
    shr-int/lit8 v15, v14, 0x10

    .line 604
    .restart local v15    # "oldX":I
    const v34, 0xffff

    and-int v16, v14, v34

    .line 605
    .restart local v16    # "oldY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    aget-object v34, v34, v16

    const/16 v35, 0x0

    aput-object v35, v34, v15

    goto :goto_9

    .line 578
    .end local v14    # "oldPosition":I
    .end local v15    # "oldX":I
    .end local v16    # "oldY":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 582
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->notifyAll()V

    .line 584
    monitor-exit v35
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Tiles:[[Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    aget-object v34, v34, v33

    sget-object v35, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->DECODING_TILE_BITMAP:Landroid/graphics/Bitmap;

    aput-object v35, v34, v32

    goto :goto_8

    .line 584
    :catchall_1
    move-exception v34

    :try_start_3
    monitor-exit v35
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v34

    .line 590
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 592
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileDecodingQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 594
    monitor-exit v35

    goto/16 :goto_8

    :catchall_2
    move-exception v34

    monitor-exit v35
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v34

    .line 610
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_TileUsageQueue:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 551
    .end local v23    # "position":Ljava/lang/Integer;
    .end local v31    # "tileBitmap":Landroid/graphics/Bitmap;
    :cond_13
    add-int/lit8 v33, v33, -0x1

    goto/16 :goto_5
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    if-lez v0, :cond_0

    .line 621
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalHeight:I

    .line 624
    :goto_0
    return v0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 624
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    if-lez v0, :cond_0

    .line 641
    iget v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_OriginalWidth:I

    .line 644
    :goto_0
    return v0

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 644
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 788
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 789
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot called from another thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    if-eqz v0, :cond_2

    .line 805
    :cond_1
    :goto_0
    return-void

    .line 792
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsReleased:Z

    .line 793
    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 794
    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_FullSizeBitmap:Landroid/graphics/Bitmap;

    .line 795
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 796
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_1

    .line 798
    iget-object v1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v1

    .line 800
    :try_start_0
    const-string v0, "ProgressiveBitmapDrawable"

    const-string v2, "release() - Release decoder"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 802
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    iput-object v3, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_BitmapDecoder:Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0

    .line 802
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 812
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 813
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 820
    iget-object v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 821
    return-void
.end method

.method public setHighQualityBitmapEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    if-eq v0, p1, :cond_0

    .line 832
    const-string v0, "ProgressiveBitmapDrawable"

    const-string v1, "setHighQualityBitmapEnabled() - "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 833
    iput-boolean p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_IsHighQualityBitmapEnabled:Z

    .line 834
    if-eqz p1, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 837
    :cond_0
    return-void
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 846
    iput-object p1, p0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 847
    invoke-virtual {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->invalidateSelf()V

    .line 848
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 855
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    if-nez p1, :cond_0

    .line 858
    invoke-direct {p0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->cancelDecodingBitmapTiles()V

    .line 859
    :cond_0
    const/4 v0, 0x1

    .line 861
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
