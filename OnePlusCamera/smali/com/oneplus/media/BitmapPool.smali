.class public Lcom/oneplus/media/BitmapPool;
.super Ljava/lang/Object;
.source "BitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/media/BitmapPool$DecodingHandle;,
        Lcom/oneplus/media/BitmapPool$BitmapInfo;,
        Lcom/oneplus/media/BitmapPool$Callback;
    }
.end annotation


# static fields
.field public static final DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

.field public static final DEFAULT_THUMBNAIL_BAR_SMALL:Lcom/oneplus/media/BitmapPool;

.field public static final DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

.field public static final FLAG_ASYNC:I = 0x1

.field public static final FLAG_NO_EMBEDDED_THUMB:I = 0x10

.field public static final FLAG_PREFER_QUALITY_OVER_SPEED:I = 0x4

.field public static final FLAG_URGENT:I = 0x2

.field public static final FLAG_USE_EMBEDDED_THUMB_ONLY:I = 0x20

.field private static final MAX_RETRY_TIME:J = 0xbb8L

.field public static final MEDIA_TYPE_PHOTO:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x3

.field private static final PRINT_TRACE_LOG:Z

.field private static final VIDEO_DECODE_SEMAPHORE:Ljava/util/concurrent/Semaphore;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final m_ActivateHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_BitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final m_BitmapInfos:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Lcom/oneplus/media/BitmapPool$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

.field private volatile m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

.field private final m_CanUseEmbeddedThumbnail:Z

.field private final m_Capacity:J

.field private volatile m_ContentResolver:Landroid/content/ContentResolver;

.field private volatile m_CurrentSize:J

.field private volatile m_DecodingExecutor:Ljava/util/concurrent/Executor;

.field private final m_DecodingRunnable:Ljava/lang/Runnable;

.field private final m_DecodingThreadCount:I

.field private final m_IdleCapacity:J

.field private final m_Lock:Ljava/lang/Object;

.field private final m_PendingDecodingQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/media/BitmapPool$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PreferQualityOverSpeed:Z

.field private final m_UseEmbeddedThumbnailOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 73
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string v1, "ThumbnailBitmapPool"

    const-wide/32 v2, 0x4000000

    const-wide/32 v4, 0x1000000

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V

    sput-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    .line 77
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string v1, "SmallThumbnailBitmapPool"

    const-wide/32 v2, 0x2000000

    const-wide/32 v4, 0x1000000

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    const/4 v8, 0x4

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V

    sput-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    .line 81
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string v1, "SmallThumbnailBarBitmapPool"

    const-wide/32 v2, 0x40000

    const-wide/32 v4, 0x40000

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V

    sput-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_BAR_SMALL:Lcom/oneplus/media/BitmapPool;

    .line 85
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/oneplus/media/BitmapPool;->VIDEO_DECODE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "capacity"    # J
    .param p4, "idleCapacity"    # J
    .param p6, "config"    # Landroid/graphics/Bitmap$Config;
    .param p7, "decodingThreadCount"    # I
    .param p8, "flags"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    .line 99
    new-instance v0, Lcom/oneplus/media/BitmapPool$1;

    invoke-direct {v0, p0}, Lcom/oneplus/media/BitmapPool$1;-><init>(Lcom/oneplus/media/BitmapPool;)V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingRunnable:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    .line 257
    cmp-long v0, p2, v4

    if-gez v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid capacity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    cmp-long v0, p4, v4

    if-gez v0, :cond_1

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid idle capacity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    if-nez p6, :cond_2

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bitmap configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2
    if-gtz p7, :cond_3

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid decoding count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_3
    if-eqz p1, :cond_4

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    .line 266
    iput-wide p2, p0, Lcom/oneplus/media/BitmapPool;->m_Capacity:J

    .line 267
    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/media/BitmapPool;->m_IdleCapacity:J

    .line 268
    iput-object p6, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 269
    iput p7, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingThreadCount:I

    .line 270
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_PreferQualityOverSpeed:Z

    .line 271
    and-int/lit8 v0, p8, 0x10

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_CanUseEmbeddedThumbnail:Z

    .line 272
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_7

    :goto_3
    iput-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_UseEmbeddedThumbnailOnly:Z

    .line 273
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_CanUseEmbeddedThumbnail:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_UseEmbeddedThumbnailOnly:Z

    if-eqz v0, :cond_8

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use both FLAG_NO_EMBEDDED_THUMB and FLAG_USE_EMBEDDED_THUMB_ONLY flags."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    .restart local p1    # "name":Ljava/lang/String;
    :cond_4
    const-string p1, "BitmapPool"

    goto :goto_0

    .end local p1    # "name":Ljava/lang/String;
    :cond_5
    move v0, v2

    .line 270
    goto :goto_1

    :cond_6
    move v0, v2

    .line 271
    goto :goto_2

    :cond_7
    move v1, v2

    .line 272
    goto :goto_3

    .line 275
    :cond_8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;I)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "capacity"    # J
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;
    .param p5, "decodingThreadCount"    # I

    .prologue
    .line 218
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;II)V

    .line 219
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;II)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "capacity"    # J
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;
    .param p5, "decodingThreadCount"    # I
    .param p6, "flags"    # I

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/media/BitmapPool;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/media/BitmapPool;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/media/BitmapPool;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/media/BitmapPool;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/media/BitmapPool;
    .param p1, "x1"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->decodeBitmap(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$DecodingHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/media/BitmapPool;
    .param p1, "x1"    # Lcom/oneplus/media/BitmapPool$DecodingHandle;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->cancelDecoding(Lcom/oneplus/media/BitmapPool$DecodingHandle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/media/BitmapPool;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->deactivate(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method private addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    .locals 1
    .param p1, "bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 308
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object p1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-nez v0, :cond_1

    .line 311
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 312
    :cond_1
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 313
    return-void
.end method

.method private callOnBitmapDecoded(Lcom/oneplus/media/BitmapPool$DecodingHandle;Z)V
    .locals 7
    .param p1, "handle"    # Lcom/oneplus/media/BitmapPool$DecodingHandle;
    .param p2, "async"    # Z

    .prologue
    .line 320
    iget-object v4, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callback:Lcom/oneplus/media/BitmapPool$Callback;

    if-nez v4, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v2, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 323
    .local v2, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-eqz v2, :cond_0

    iget-boolean v4, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-eqz v4, :cond_0

    .line 327
    iget-object v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 328
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 330
    iget v4, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxWidth:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lt v4, v5, :cond_2

    iget v4, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxHeight:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 331
    :cond_2
    iget v4, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxWidth:I

    iget v5, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->maxHeight:I

    invoke-static {v1, v4, v5}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 335
    :cond_3
    iget-object v3, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callbackHandler:Landroid/os/Handler;

    .line 336
    .local v3, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_5

    if-nez p2, :cond_4

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v4, v5, :cond_5

    .line 338
    :cond_4
    move-object v0, v1

    .line 339
    .local v0, "actualBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/oneplus/media/BitmapPool$3;

    invoke-direct {v4, p0, v2, p1, v0}, Lcom/oneplus/media/BitmapPool$3;-><init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;Lcom/oneplus/media/BitmapPool$DecodingHandle;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 360
    .end local v0    # "actualBitmap":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v5, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v5

    .line 362
    :try_start_0
    iget-boolean v4, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-eqz v4, :cond_6

    .line 364
    iget-object v4, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 365
    iget-object v6, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callback:Lcom/oneplus/media/BitmapPool$Callback;

    iget-object v4, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, p1, v4, v1}, Lcom/oneplus/media/BitmapPool$Callback;->onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 369
    :cond_6
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 370
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 366
    :cond_7
    :try_start_1
    iget-object v4, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    instance-of v4, v4, Landroid/net/Uri;

    if-eqz v4, :cond_6

    .line 367
    iget-object v6, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->callback:Lcom/oneplus/media/BitmapPool$Callback;

    iget-object v4, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v6, p1, v4, v1}, Lcom/oneplus/media/BitmapPool$Callback;->onBitmapDecoded(Lcom/oneplus/base/Handle;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private cancelDecoding(Lcom/oneplus/media/BitmapPool$DecodingHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/media/BitmapPool$DecodingHandle;

    .prologue
    .line 378
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 380
    :try_start_0
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$DecodingHandle;->bitmapInfo:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 381
    .local v0, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-nez v1, :cond_1

    .line 382
    :cond_0
    monitor-exit v2

    .line 388
    :goto_0
    return-void

    .line 383
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 384
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    iget-object v3, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 386
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 387
    monitor-exit v2

    goto :goto_0

    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkDecodingExecutor()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 409
    iget v0, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingThreadCount:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    .line 410
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private deactivate(Lcom/oneplus/base/Handle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 417
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    const-string v2, "deactivate()"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-wide v2, p0, Lcom/oneplus/media/BitmapPool;->m_IdleCapacity:J

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/media/BitmapPool;->shrink(J)V

    .line 424
    :cond_0
    monitor-exit v1

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private decode(Landroid/content/Context;Ljava/lang/Object;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "mediaType"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "flags"    # I
    .param p7, "callback"    # Lcom/oneplus/media/BitmapPool$Callback;
    .param p8, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 515
    if-nez p2, :cond_0

    .line 517
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    const-string v3, "decode() - No media source"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x0

    .line 631
    :goto_0
    return-object v0

    .line 520
    :cond_0
    instance-of v1, p2, Landroid/net/Uri;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 522
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    const-string v3, "decode() - No context"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const/4 v0, 0x0

    goto :goto_0

    .line 525
    :cond_1
    if-eqz p4, :cond_2

    if-nez p5, :cond_3

    .line 527
    :cond_2
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode() - Invalid size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const/4 v0, 0x0

    goto :goto_0

    .line 530
    :cond_3
    if-nez p7, :cond_4

    .line 531
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    const-string v3, "decode() - No call-back"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_4
    if-gez p4, :cond_5

    .line 533
    const p4, 0x7fffffff

    .line 534
    :cond_5
    if-gez p5, :cond_6

    .line 535
    const p5, 0x7fffffff

    .line 539
    :cond_6
    iget-object v9, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v9

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 547
    .local v2, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-eqz v2, :cond_9

    .line 549
    invoke-direct {p0, v2}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 550
    iget-boolean v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-eqz v1, :cond_b

    .line 553
    iget v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    if-lt v1, p4, :cond_8

    iget v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    if-lt v1, p5, :cond_8

    .line 557
    new-instance v0, Lcom/oneplus/media/BitmapPool$DecodingHandle;

    move-object v1, p0

    move v3, p4

    move v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool$DecodingHandle;-><init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;IILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)V

    .line 558
    .local v0, "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    iget-object v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-direct {p0, v2}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 560
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 564
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 567
    :cond_7
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 568
    monitor-exit v9

    goto/16 :goto_0

    .line 628
    .end local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    .end local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 574
    .restart local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :cond_8
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 575
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_9
    :goto_1
    if-nez v2, :cond_e

    .line 603
    new-instance v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .end local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    invoke-direct {v2, p2, p3}, Lcom/oneplus/media/BitmapPool$BitmapInfo;-><init>(Ljava/lang/Object;I)V

    .line 606
    .restart local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :goto_2
    iput p4, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    .line 607
    iput p5, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    .line 608
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-direct {p0, v2}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 612
    new-instance v0, Lcom/oneplus/media/BitmapPool$DecodingHandle;

    move-object v1, p0

    move v3, p4

    move v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool$DecodingHandle;-><init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;IILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)V

    .line 613
    .restart local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    iget-object v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool;->checkDecodingExecutor()V

    .line 619
    and-int/lit8 v1, p6, 0x2

    if-nez v1, :cond_f

    .line 620
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 623
    :goto_3
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 626
    instance-of v1, p2, Landroid/net/Uri;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_ContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_a

    .line 627
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_ContentResolver:Landroid/content/ContentResolver;

    .line 628
    :cond_a
    monitor-exit v9

    goto/16 :goto_0

    .line 580
    .end local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    :cond_b
    iget-object v7, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 581
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_d

    iget v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    if-lt v1, p4, :cond_d

    iget v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    if-lt v1, p5, :cond_d

    .line 585
    new-instance v0, Lcom/oneplus/media/BitmapPool$DecodingHandle;

    move-object v1, p0

    move v3, p4

    move v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool$DecodingHandle;-><init>(Lcom/oneplus/media/BitmapPool;Lcom/oneplus/media/BitmapPool$BitmapInfo;IILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)V

    .line 586
    .restart local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    invoke-direct {p0, v2}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 587
    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/oneplus/media/BitmapPool;->callOnBitmapDecoded(Lcom/oneplus/media/BitmapPool$DecodingHandle;Z)V

    .line 588
    monitor-exit v9

    goto/16 :goto_0

    .line 587
    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    .line 594
    .end local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 595
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    if-eqz v7, :cond_9

    .line 597
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    neg-int v1, v1

    int-to-long v4, v1

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(J)V

    goto/16 :goto_1

    .line 605
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_e
    new-instance v8, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    invoke-direct {v8, v2}, Lcom/oneplus/media/BitmapPool$BitmapInfo;-><init>(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .end local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .local v8, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    move-object v2, v8

    .end local v8    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .restart local v2    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    goto/16 :goto_2

    .line 622
    .restart local v0    # "handle":Lcom/oneplus/media/BitmapPool$DecodingHandle;
    :cond_f
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private decodeBitmap(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    .locals 12
    .param p1, "bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .prologue
    .line 732
    iget-object v9, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v9

    .line 734
    :try_start_0
    iget-boolean v8, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-nez v8, :cond_0

    .line 735
    monitor-exit v9

    .line 873
    :goto_0
    return-void

    .line 736
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    iget-object v5, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    .line 740
    .local v5, "source":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 741
    .local v3, "filePath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 742
    .local v1, "contentUri":Landroid/net/Uri;
    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_3

    move-object v3, v5

    .line 743
    check-cast v3, Ljava/lang/String;

    .line 759
    :goto_1
    const/4 v0, 0x0

    .line 760
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 765
    .local v6, "startTime":J
    :goto_2
    :try_start_1
    iget v8, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->mediaType:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    packed-switch v8, :pswitch_data_0

    .line 814
    :cond_1
    :goto_3
    :pswitch_0
    if-nez v0, :cond_2

    iget-boolean v8, p0, Lcom/oneplus/media/BitmapPool;->m_UseEmbeddedThumbnailOnly:Z

    if-eqz v8, :cond_a

    .line 833
    :cond_2
    iget-object v9, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v9

    .line 835
    :try_start_2
    iget-boolean v8, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-eqz v8, :cond_e

    .line 842
    if-eqz v0, :cond_b

    .line 843
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v8

    int-to-long v10, v8

    invoke-direct {p0, v10, v11}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(J)V

    .line 846
    :goto_4
    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    .line 847
    iput-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 850
    iget-object v8, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    .line 852
    iget-object v8, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_5
    if-ltz v4, :cond_c

    .line 853
    iget-object v8, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/media/BitmapPool$DecodingHandle;

    const/4 v10, 0x0

    invoke-direct {p0, v8, v10}, Lcom/oneplus/media/BitmapPool;->callOnBitmapDecoded(Lcom/oneplus/media/BitmapPool$DecodingHandle;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 852
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 736
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "source":Ljava/lang/Object;
    .end local v6    # "startTime":J
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 744
    .restart local v1    # "contentUri":Landroid/net/Uri;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v5    # "source":Ljava/lang/Object;
    :cond_3
    instance-of v8, v5, Landroid/net/Uri;

    if-eqz v8, :cond_4

    move-object v1, v5

    .line 745
    check-cast v1, Landroid/net/Uri;

    goto :goto_1

    .line 748
    :cond_4
    iget-object v8, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decodeBitmap() - Unknown source : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "startTime":J
    :pswitch_1
    if-eqz v3, :cond_5

    .line 770
    :try_start_4
    iget v8, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    iget v9, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    invoke-virtual {p0, v3, v8, v9}, Lcom/oneplus/media/BitmapPool;->decodePhoto(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 771
    :cond_5
    if-eqz v1, :cond_1

    .line 772
    iget-object v8, p0, Lcom/oneplus/media/BitmapPool;->m_ContentResolver:Landroid/content/ContentResolver;

    iget v9, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    iget v10, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    invoke-virtual {p0, v8, v1, v9, v10}, Lcom/oneplus/media/BitmapPool;->decodePhoto(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 778
    :pswitch_2
    sget-object v8, Lcom/oneplus/media/BitmapPool;->VIDEO_DECODE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v8}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result v8

    if-eqz v8, :cond_8

    .line 782
    if-eqz v3, :cond_7

    .line 783
    :try_start_5
    iget v8, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    iget v9, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    invoke-virtual {p0, v3, v8, v9}, Lcom/oneplus/media/BitmapPool;->decodeVideo(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 789
    :cond_6
    :goto_6
    :try_start_6
    sget-object v8, Lcom/oneplus/media/BitmapPool;->VIDEO_DECODE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v8}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 810
    :catch_0
    move-exception v2

    .line 812
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decodeBitmap() - Fail to decode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 784
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_7
    if-eqz v1, :cond_6

    .line 785
    :try_start_7
    iget-object v8, p0, Lcom/oneplus/media/BitmapPool;->m_ContentResolver:Landroid/content/ContentResolver;

    iget v9, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetlWidth:I

    iget v10, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->maxTargetHeight:I

    invoke-virtual {p0, v8, v1, v9, v10}, Lcom/oneplus/media/BitmapPool;->decodeVideo(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    goto :goto_6

    .line 789
    :catchall_1
    move-exception v8

    :try_start_8
    sget-object v9, Lcom/oneplus/media/BitmapPool;->VIDEO_DECODE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->release()V

    throw v8

    .line 796
    :cond_8
    iget-object v9, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 798
    :try_start_9
    iget-boolean v8, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    if-eqz v8, :cond_9

    .line 800
    iget-object v8, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v8, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 801
    iget-object v8, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    iget-object v10, p0, Lcom/oneplus/media/BitmapPool;->m_DecodingRunnable:Ljava/lang/Runnable;

    invoke-interface {v8, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 803
    :cond_9
    monitor-exit v9

    goto/16 :goto_0

    .line 804
    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v8
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 816
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v10, 0xbb8

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 818
    iget-object v8, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decodeBitmap() - Fail to decode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", retry"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-wide/16 v8, 0x64

    :try_start_b
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_2

    .line 823
    :catch_1
    move-exception v8

    goto/16 :goto_2

    .line 845
    :cond_b
    :try_start_c
    iget-object v8, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decodeBitmap() - Fail to decode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 872
    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v8

    .line 854
    .restart local v4    # "i":I
    :cond_c
    :try_start_d
    iget-object v8, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->decodingHandles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 858
    .end local v4    # "i":I
    :cond_d
    if-nez v0, :cond_e

    .line 862
    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 863
    iget-object v8, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 872
    :cond_e
    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_0

    .line 765
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getCachedBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 901
    if-nez p1, :cond_0

    .line 914
    :goto_0
    return-object v1

    .line 903
    :cond_0
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 905
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 906
    .local v0, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-eqz v0, :cond_1

    .line 908
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 909
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 910
    iget-boolean v3, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-nez v3, :cond_1

    .line 911
    iget-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    monitor-exit v2

    goto :goto_0

    .line 913
    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private invalidate(Ljava/lang/Object;)V
    .locals 6
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 968
    if-nez p1, :cond_0

    .line 996
    :goto_0
    return-void

    .line 970
    :cond_0
    iget-object v3, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v3

    .line 972
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 973
    .local v0, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    if-nez v0, :cond_1

    .line 974
    monitor-exit v3

    goto :goto_0

    .line 995
    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 975
    .restart local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isValid:Z

    .line 976
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 978
    iget-boolean v2, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-eqz v2, :cond_3

    .line 982
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 983
    new-instance v1, Lcom/oneplus/media/BitmapPool$BitmapInfo;

    invoke-direct {v1, v0}, Lcom/oneplus/media/BitmapPool$BitmapInfo;-><init>(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 984
    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .local v1, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    invoke-direct {p0, v1}, Lcom/oneplus/media/BitmapPool;->addToQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V

    .line 986
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_PendingDecodingQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    move-object v0, v1

    .line 995
    .end local v1    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .restart local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :cond_2
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 992
    :cond_3
    iget-object v2, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 993
    iget-object v2, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    neg-int v2, v2

    int-to-long v4, v2

    invoke-direct {p0, v4, v5}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    .locals 3
    .param p1, "bitmapInfo"    # Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .prologue
    const/4 v2, 0x0

    .line 1012
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-ne v0, p1, :cond_0

    .line 1013
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueHead:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-ne v0, p1, :cond_1

    .line 1015
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1016
    :cond_1
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-eqz v0, :cond_2

    .line 1017
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iget-object v1, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1018
    :cond_2
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    if-eqz v0, :cond_3

    .line 1019
    iget-object v0, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iget-object v1, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    iput-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1020
    :cond_3
    iput-object v2, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1021
    iput-object v2, p1, Lcom/oneplus/media/BitmapPool$BitmapInfo;->next:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1022
    return-void
.end method

.method private updateCurrentSize(J)V
    .locals 3
    .param p1, "diff"    # J

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/oneplus/media/BitmapPool;->m_IdleCapacity:J

    :goto_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(JJ)V

    .line 1039
    return-void

    .line 1038
    :cond_0
    iget-wide v0, p0, Lcom/oneplus/media/BitmapPool;->m_Capacity:J

    goto :goto_0
.end method

.method private updateCurrentSize(JJ)V
    .locals 11
    .param p1, "capacity"    # J
    .param p3, "diff"    # J

    .prologue
    .line 1042
    iget-object v5, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v5

    .line 1045
    :try_start_0
    iget-wide v2, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    .line 1046
    .local v2, "oldSize":J
    iget-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    add-long/2addr v6, p3

    iput-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    .line 1051
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapQueueTail:Lcom/oneplus/media/BitmapPool$BitmapInfo;

    .line 1052
    .local v0, "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :goto_0
    iget-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    cmp-long v4, v6, p1

    if-lez v4, :cond_1

    if-eqz v0, :cond_1

    .line 1054
    iget-object v1, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->previous:Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1057
    .local v1, "prevBitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    :try_start_1
    iget-boolean v4, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->isDecoding:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 1061
    iget-wide v2, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    .line 1062
    iget-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    iget-object v4, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v8, v4

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/oneplus/media/BitmapPool;->m_CurrentSize:J

    .line 1063
    iget-object v4, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapInfos:Ljava/util/Hashtable;

    iget-object v6, v0, Lcom/oneplus/media/BitmapPool$BitmapInfo;->source:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    invoke-direct {p0, v0}, Lcom/oneplus/media/BitmapPool;->removeFromQueue(Lcom/oneplus/media/BitmapPool$BitmapInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    :cond_0
    move-object v0, v1

    .line 1072
    goto :goto_0

    .line 1071
    :catchall_0
    move-exception v4

    move-object v0, v1

    :try_start_2
    throw v4

    .line 1074
    .end local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .end local v1    # "prevBitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .end local v2    # "oldSize":J
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .restart local v0    # "bitmapInfo":Lcom/oneplus/media/BitmapPool$BitmapInfo;
    .restart local v2    # "oldSize":J
    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1075
    return-void
.end method


# virtual methods
.method public final activate()Lcom/oneplus/base/Handle;
    .locals 4

    .prologue
    .line 284
    new-instance v0, Lcom/oneplus/media/BitmapPool$2;

    const-string v1, "ActivateBitmapPool"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/media/BitmapPool$2;-><init>(Lcom/oneplus/media/BitmapPool;Ljava/lang/String;)V

    .line 292
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_ActivateHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 296
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->TAG:Ljava/lang/String;

    const-string v3, "activate()"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_0
    monitor-exit v2

    .line 298
    return-object v0

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canUseEmbeddedThumbnail()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_CanUseEmbeddedThumbnail:Z

    return v0
.end method

.method public decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "mediaType"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "flags"    # I
    .param p7, "callback"    # Lcom/oneplus/media/BitmapPool$Callback;
    .param p8, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 507
    invoke-direct/range {p0 .. p8}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Ljava/lang/Object;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public decode(Landroid/content/Context;Landroid/net/Uri;IIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "mediaType"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "callback"    # Lcom/oneplus/media/BitmapPool$Callback;
    .param p7, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 481
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/lang/String;IIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .param p4, "flags"    # I
    .param p5, "callback"    # Lcom/oneplus/media/BitmapPool$Callback;
    .param p6, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 459
    invoke-static {p1}, Lcom/oneplus/io/FileUtils;->isVideoFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    .line 460
    .local v3, "mediaType":I
    :goto_0
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Ljava/lang/Object;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0

    .line 459
    .end local v3    # "mediaType":I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public decode(Ljava/lang/String;IILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .param p4, "callback"    # Lcom/oneplus/media/BitmapPool$Callback;
    .param p5, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 439
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method protected decodePhoto(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 665
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .local v1, "stream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 667
    :try_start_0
    iget-boolean v3, p0, Lcom/oneplus/media/BitmapPool;->m_PreferQualityOverSpeed:Z

    if-eqz v3, :cond_4

    .line 669
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapPool;->getDecodeFlags()I

    move-result v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p3, p4, v3, v5}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 670
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v3, v5, :cond_2

    .line 675
    if-eqz v1, :cond_0

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 672
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 675
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 674
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapPool;->getDecodeFlags()I

    move-result v3

    iget-object v5, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p3, p4, v3, v5}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/io/InputStream;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 675
    if-eqz v1, :cond_0

    if-eqz v4, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 665
    :catch_3
    move-exception v3

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 675
    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_1
    if-eqz v1, :cond_6

    if-eqz v4, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    :goto_2
    throw v3

    :catch_4
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v3

    goto :goto_1
.end method

.method protected decodePhoto(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 644
    iget-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_PreferQualityOverSpeed:Z

    if-eqz v1, :cond_1

    .line 646
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapPool;->getDecodeFlags()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v1, v2}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 647
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 651
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 649
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 651
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/media/BitmapPool;->getDecodeFlags()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v1, v2}, Lcom/oneplus/media/ImageUtils;->decodeBitmap(Ljava/lang/String;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected decodeVideo(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 713
    const/4 v1, 0x0

    .line 714
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    const-string v4, "r"

    invoke-virtual {p1, p2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    .line 716
    :try_start_1
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 717
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 718
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, p3, p4}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v4

    .line 719
    if-eqz v0, :cond_0

    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 722
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 723
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_1
    return-object v4

    .line 719
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 722
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    move-object v1, v2

    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_1
    if-eqz v1, :cond_2

    .line 723
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_2
    throw v4

    .line 719
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_3
    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 714
    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_1
    move-exception v4

    :goto_2
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 719
    :catchall_1
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    :goto_3
    if-eqz v0, :cond_4

    if-eqz v5, :cond_5

    :try_start_7
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_4
    :goto_4
    :try_start_8
    throw v4

    .line 722
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_2
    move-exception v4

    goto :goto_1

    .line 719
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_3
    move-exception v4

    goto :goto_3

    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_3

    .line 714
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_3
    move-exception v4

    move-object v1, v2

    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_2
.end method

.method protected decodeVideo(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 688
    const/4 v0, 0x0

    .line 691
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/oneplus/media/ImageUtils;->createThumbnailImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 697
    if-eqz v1, :cond_0

    .line 698
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_0
    return-object v2

    .line 697
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_1
    throw v2

    .line 697
    .end local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_0
.end method

.method public getCachedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 894
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->getCachedBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 883
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->getCachedBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDecodeFlags()I
    .locals 2

    .prologue
    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_PreferQualityOverSpeed:Z

    if-eqz v1, :cond_0

    .line 926
    or-int/lit8 v0, v0, 0x1

    .line 927
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_CanUseEmbeddedThumbnail:Z

    if-nez v1, :cond_2

    .line 928
    or-int/lit8 v0, v0, 0x2

    .line 931
    :cond_1
    :goto_0
    return v0

    .line 929
    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/media/BitmapPool;->m_UseEmbeddedThumbnailOnly:Z

    if-eqz v1, :cond_1

    .line 930
    or-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public getTargetConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool;->m_BitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public invalidate(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 961
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/Object;)V

    .line 962
    return-void
.end method

.method public invalidate(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 951
    invoke-direct {p0, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/Object;)V

    .line 952
    return-void
.end method

.method public preferQualityOverSpeed()Z
    .locals 1

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_PreferQualityOverSpeed:Z

    return v0
.end method

.method public shrink(J)V
    .locals 3
    .param p1, "targetSize"    # J

    .prologue
    .line 1031
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/media/BitmapPool;->updateCurrentSize(JJ)V

    .line 1032
    return-void
.end method

.method public useEmbeddedThumbnailOnly()Z
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool;->m_UseEmbeddedThumbnailOnly:Z

    return v0
.end method
