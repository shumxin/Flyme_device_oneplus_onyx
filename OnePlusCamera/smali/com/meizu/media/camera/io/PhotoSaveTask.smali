.class public Lcom/meizu/media/camera/io/PhotoSaveTask;
.super Lcom/meizu/media/camera/io/MediaSaveTask;
.source "PhotoSaveTask.java"


# static fields
.field private static final THUMBNAIL_SIZE:I = 0xc8


# instance fields
.field private m_Bitmap:Landroid/graphics/Bitmap;

.field protected final m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

.field private final m_Context:Landroid/content/Context;

.field private m_EncodedPicture:[B

.field private m_ExifTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_MediaSize:Ljava/lang/Long;

.field private final m_TakenTime:J

.field private m_YuvImage:Landroid/graphics/YuvImage;

.field private m_YuvImageBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Landroid/graphics/Bitmap;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/meizu/media/camera/CaptureHandle;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "e"    # Lcom/meizu/media/camera/CameraCaptureEventArgs;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p4}, Lcom/meizu/media/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V

    .line 73
    iput-object p3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Landroid/graphics/YuvImage;Landroid/graphics/Rect;Ljava/util/Map;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/meizu/media/camera/CaptureHandle;
    .param p3, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p6, "e"    # Lcom/meizu/media/camera/CameraCaptureEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/media/camera/CaptureHandle;",
            "Landroid/graphics/YuvImage;",
            "Landroid/graphics/Rect;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meizu/media/camera/CameraCaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "exifTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p6}, Lcom/meizu/media/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V

    .line 79
    iput-object p3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    .line 80
    if-eqz p4, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    iput-object v0, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_YuvImageBounds:Landroid/graphics/Rect;

    .line 81
    iput-object p5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    .line 82
    return-void

    .line 80
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/meizu/media/camera/CaptureHandle;
    .param p3, "e"    # Lcom/meizu/media/camera/CameraCaptureEventArgs;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/io/MediaSaveTask;-><init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;)V

    .line 61
    iput-object p1, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    .line 62
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->clone()Lcom/oneplus/base/EventArgs;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/CameraCaptureEventArgs;

    :goto_0
    iput-object v0, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    .line 63
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getTakenTime()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_TakenTime:J

    .line 64
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;[BLcom/meizu/media/camera/CameraCaptureEventArgs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/meizu/media/camera/CaptureHandle;
    .param p3, "encodedPicture"    # [B
    .param p4, "e"    # Lcom/meizu/media/camera/CameraCaptureEventArgs;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p4}, Lcom/meizu/media/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Lcom/meizu/media/camera/CameraCaptureEventArgs;)V

    .line 68
    iput-object p3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    .line 69
    return-void
.end method

.method private fillToExif()V
    .locals 10

    .prologue
    .line 89
    iget-object v6, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v6, "ro.product.manufacturer"

    invoke-direct {p0, v6}, Lcom/meizu/media/camera/io/PhotoSaveTask;->getSystemPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "make":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 94
    const-string v6, "Make"

    invoke-direct {p0, v6, v2}, Lcom/meizu/media/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2
    const-string v6, "ro.product.model"

    invoke-direct {p0, v6}, Lcom/meizu/media/camera/io/PhotoSaveTask;->getSystemPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "model":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 98
    const-string v6, "Model"

    invoke-direct {p0, v6, v3}, Lcom/meizu/media/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_3
    const-string v6, "ro.build.description"

    invoke-direct {p0, v6}, Lcom/meizu/media/camera/io/PhotoSaveTask;->getSystemPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "sw":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 102
    const-string v6, "Software"

    invoke-direct {p0, v6, v4}, Lcom/meizu/media/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/media/camera/io/PhotoSaveTask;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 106
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 109
    const-string v6, "GPSLatitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/meizu/media/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v6, "GPSLongitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/meizu/media/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 113
    const-string v6, "GPSAltitude"

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/meizu/media/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_5
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 116
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy:MM:dd"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "dateStamp":Ljava/text/SimpleDateFormat;
    const-string v6, "GPSDateStamp"

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/meizu/media/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 119
    .local v5, "timeStamp":Ljava/text/SimpleDateFormat;
    const-string v6, "GPSTimeStamp"

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/meizu/media/camera/io/PhotoSaveTask;->insertTags(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getSystemPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    if-nez v8, :cond_0

    .line 199
    const/4 v7, 0x0

    .line 225
    :goto_0
    return-object v7

    .line 201
    :cond_0
    const-string v7, ""

    .line 203
    .local v7, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 204
    .local v1, "cl":Ljava/lang/ClassLoader;
    const-string v8, "android.os.SystemProperties"

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 208
    .local v0, "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Class;

    .line 209
    .local v5, "paramTypes":[Ljava/lang/Class;
    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v8

    .line 211
    const-string v8, "get"

    invoke-virtual {v0, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 214
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    .line 215
    .local v6, "params":[Ljava/lang/Object;
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v9, v6, v8

    .line 217
    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "ret":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v7    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v0    # "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "get":Ljava/lang/reflect/Method;
    .end local v5    # "paramTypes":[Ljava/lang/Class;
    .end local v6    # "params":[Ljava/lang/Object;
    .end local v7    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 220
    .local v4, "iAE":Ljava/lang/IllegalArgumentException;
    throw v4

    .line 221
    .end local v4    # "iAE":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, ""

    .restart local v7    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method private insertTags(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 232
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 233
    iget-object v0, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public getMediaSize()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 165
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;

    if-nez v3, :cond_0

    .line 169
    :try_start_0
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    return-wide v6

    .line 171
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    if-eqz v3, :cond_2

    .line 172
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    array-length v3, v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 188
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;

    goto :goto_0

    .line 173
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    if-eqz v3, :cond_3

    .line 174
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    invoke-virtual {v3}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v3

    iget-object v6, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    invoke-virtual {v6}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v6

    mul-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;

    goto :goto_0

    .line 175
    :cond_3
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    if-eqz v3, :cond_5

    .line 177
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    invoke-virtual {v3}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/meizu/media/camera/media/ImagePlane;

    move-result-object v2

    .line 178
    .local v2, "planes":[Lcom/meizu/media/camera/media/ImagePlane;
    const-wide/16 v4, 0x0

    .line 179
    .local v4, "size":J
    array-length v3, v2

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 180
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/meizu/media/camera/media/ImagePlane;->getData()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 179
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 181
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    .end local v2    # "planes":[Lcom/meizu/media/camera/media/ImagePlane;
    .end local v4    # "size":J
    :cond_5
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_MediaSize:Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    .line 128
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 129
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 157
    :goto_0
    return-object v5

    .line 131
    :cond_0
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "getThumbnail() - Step getThumbnail decode memory start"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .local v2, "memoryStream":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 133
    :try_start_1
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 134
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v7, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/16 v8, 0xc8

    const/16 v9, 0xc8

    const/4 v10, 0x1

    invoke-static {v5, v7, v8, v9, v10}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v3

    .line 135
    .local v3, "size":Landroid/util/Size;
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v5, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    .end local v3    # "size":Landroid/util/Size;
    :goto_1
    if-eqz v2, :cond_1

    if-eqz v6, :cond_8

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 155
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "getThumbnail() - Step getThumbnail decode memory end"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :goto_3
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 136
    .restart local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    if-eqz v5, :cond_4

    .line 137
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    const/16 v7, 0xc8

    const/16 v8, 0xc8

    invoke-static {v5, v7, v8}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 132
    :catch_0
    move-exception v5

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    :catchall_0
    move-exception v6

    move-object v11, v6

    move-object v6, v5

    move-object v5, v11

    :goto_4
    if-eqz v2, :cond_3

    if-eqz v6, :cond_9

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_3
    :goto_5
    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v1

    .line 153
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_7
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getThumbnail() - Fail to write "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 155
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "getThumbnail() - Step getThumbnail decode memory end"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 138
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    :try_start_8
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    if-eqz v5, :cond_5

    .line 139
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    iget-object v7, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_YuvImageBounds:Landroid/graphics/Rect;

    const/16 v8, 0x5a

    invoke-virtual {v5, v7, v8, v2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 140
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 141
    .local v0, "bitmapdata":[B
    const/16 v5, 0xc8

    const/16 v7, 0xc8

    invoke-static {v0, v5, v7}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 152
    .end local v0    # "bitmapdata":[B
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 142
    :cond_5
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    if-eqz v5, :cond_7

    .line 143
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    invoke-virtual {v5}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v5

    const/16 v7, 0x100

    if-ne v5, v7, :cond_6

    .line 144
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    invoke-virtual {v5}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/meizu/media/camera/media/ImagePlane;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/meizu/media/camera/media/ImagePlane;->getData()[B

    move-result-object v0

    .line 145
    .restart local v0    # "bitmapdata":[B
    const/16 v5, 0xc8

    const/16 v7, 0xc8

    invoke-static {v0, v5, v7}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 147
    .end local v0    # "bitmapdata":[B
    :cond_6
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getThumbnail() - Unknown picture format : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    invoke-virtual {v8}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 150
    :cond_7
    iget-object v5, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v7, "getThumbnail() - No picture to save"

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 152
    :catch_2
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_2

    .line 155
    .end local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catchall_2
    move-exception v5

    iget-object v6, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v7, "getThumbnail() - Step getThumbnail decode memory end"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 152
    .restart local v2    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_8
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    goto/16 :goto_2

    :catch_3
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_5
.end method

.method protected onGenerateFilePath()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 242
    new-instance v1, Ljava/io/File;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/meizu/media/camera/io/PhotoSaveTask;->getDcimPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, ""

    aput-object v5, v4, v10

    invoke-static {v4}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 245
    iget-object v4, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGenerateFilePath() - Fail to create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v4, 0x0

    .line 257
    :goto_0
    return-object v4

    .line 248
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_TakenTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x1

    .line 251
    .local v3, "suffix":I
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_TakenTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    .restart local v2    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 256
    :cond_1
    iget-object v4, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGenerateFilePath() - Write picture to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method protected onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "preparedValues"    # Landroid/content/ContentValues;

    .prologue
    .line 266
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v4, "onInsertToMediaStore() - File path: "

    const-string v5, ", prepared values: "

    invoke-static {v3, v4, p1, v5, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 269
    .local v2, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 270
    .local v1, "isServiceMode":Z
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    instance-of v3, v3, Lcom/meizu/media/camera/CameraActivity;

    if-eqz v3, :cond_0

    .line 271
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    check-cast v3, Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/meizu/media/camera/CameraActivity;->isServiceMode()Z

    move-result v1

    .line 275
    :cond_0
    if-eqz v1, :cond_1

    .line 281
    :goto_0
    return-object v2

    .line 278
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 280
    iget-object v3, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x1

    .line 291
    invoke-virtual {p0}, Lcom/meizu/media/camera/io/PhotoSaveTask;->getLensFacing()Lcom/meizu/media/camera/Camera$LensFacing;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    if-ne v3, v4, :cond_0

    .line 294
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 295
    .local v0, "mediaId":J
    const-string v3, "media_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 296
    const-string v3, "oneplus_flags"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    .end local v0    # "mediaId":J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 307
    const-string v1, "title"

    invoke-static {p1}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v1, "description"

    invoke-static {p1}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/meizu/media/camera/io/PhotoSaveTask;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 311
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 312
    const-string v1, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 313
    const-string v1, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 315
    :cond_0
    const-string v1, "_data"

    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v1, 0x1

    return v1
.end method

.method protected onSaveToFile(Ljava/lang/String;)Z
    .locals 14
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    const-string v9, "onSaveToFile()"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .local v5, "stream":Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 330
    :try_start_1
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_9

    .line 331
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v4, "memoryStream":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .line 333
    :try_start_2
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_Bitmap:Landroid/graphics/Bitmap;

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x5a

    invoke-virtual {v8, v11, v12, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 334
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 335
    if-eqz v4, :cond_0

    if-eqz v9, :cond_6

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 356
    .end local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    :try_start_4
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSaveToFile() - Picture saved "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 357
    if-eqz v5, :cond_1

    if-eqz v10, :cond_10

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8

    .line 366
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    if-eqz v8, :cond_2

    .line 367
    invoke-direct {p0}, Lcom/meizu/media/camera/io/PhotoSaveTask;->fillToExif()V

    .line 370
    :cond_2
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    .line 374
    :try_start_6
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 375
    .local v1, "exif":Landroid/media/ExifInterface;
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_ExifTags:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 376
    .local v6, "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 379
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 381
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSaveToFile() - Fail to update EXIF to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    const/4 v8, 0x0

    .line 386
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_3
    return v8

    .line 335
    .restart local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 328
    .end local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "x2":Ljava/lang/Throwable;
    :catch_2
    move-exception v8

    :try_start_8
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 357
    :catchall_0
    move-exception v9

    move-object v13, v9

    move-object v9, v8

    move-object v8, v13

    :goto_4
    if-eqz v5, :cond_4

    if-eqz v9, :cond_11

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    :cond_4
    :goto_5
    :try_start_a
    throw v8
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 358
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 360
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSaveToFile() - Fail to write "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    if-eqz v8, :cond_5

    .line 362
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    invoke-virtual {v8}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->recycle()V

    .line 363
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 335
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :cond_6
    :try_start_b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    .line 357
    .end local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v8

    move-object v9, v10

    goto :goto_4

    .line 331
    .restart local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v8

    :try_start_c
    throw v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 335
    :catchall_2
    move-exception v9

    move-object v13, v9

    move-object v9, v8

    move-object v8, v13

    :goto_6
    if-eqz v4, :cond_7

    if-eqz v9, :cond_8

    :try_start_d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_7
    :goto_7
    :try_start_e
    throw v8

    :catch_5
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_7

    .line 337
    .end local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :cond_9
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    if-eqz v8, :cond_a

    .line 338
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_EncodedPicture:[B

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_0

    .line 339
    :cond_a
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    if-eqz v8, :cond_b

    .line 340
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_YuvImage:Landroid/graphics/YuvImage;

    iget-object v9, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_YuvImageBounds:Landroid/graphics/Rect;

    const/16 v11, 0x5a

    invoke-virtual {v8, v9, v11, v5}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    goto/16 :goto_0

    .line 341
    :cond_b
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    if-eqz v8, :cond_e

    .line 343
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    invoke-virtual {v8}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v8

    const/16 v9, 0x100

    if-ne v8, v9, :cond_c

    .line 344
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    invoke-virtual {v8}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/meizu/media/camera/media/ImagePlane;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/meizu/media/camera/media/ImagePlane;->getData()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_0

    .line 347
    :cond_c
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSaveToFile() - Unknown picture format : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->m_CaptureEventArgs:Lcom/meizu/media/camera/CameraCaptureEventArgs;

    invoke-virtual {v11}, Lcom/meizu/media/camera/CameraCaptureEventArgs;->getPictureFormat()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 348
    const/4 v8, 0x0

    .line 357
    if-eqz v5, :cond_3

    if-eqz v10, :cond_d

    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    :try_start_10
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_3

    .line 353
    :cond_e
    :try_start_11
    iget-object v8, p0, Lcom/meizu/media/camera/io/PhotoSaveTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSaveToFile() - No picture to save "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 354
    const/4 v8, 0x0

    .line 357
    if-eqz v5, :cond_3

    if-eqz v10, :cond_f

    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_3

    :catch_7
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    :try_start_13
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_3

    :catch_8
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_10
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1

    :catch_9
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_11
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_5

    .line 377
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_12
    :try_start_14
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0

    .line 386
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_13
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 335
    .restart local v4    # "memoryStream":Ljava/io/ByteArrayOutputStream;
    :catchall_3
    move-exception v8

    goto/16 :goto_6
.end method
