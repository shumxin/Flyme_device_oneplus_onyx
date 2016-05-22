.class public Lcom/oneplus/camera/media/PhotoMediaInfo;
.super Lcom/oneplus/camera/media/MediaInfo;
.source "PhotoMediaInfo.java"


# static fields
.field public static final DETAILS_APERTURE:Ljava/lang/String; = "Aperture"

.field public static final DETAILS_CAMERA_MAKER:Ljava/lang/String; = "CameraMaker"

.field public static final DETAILS_CAMERA_MODEL:Ljava/lang/String; = "CameraModel"

.field public static final DETAILS_FLASH:Ljava/lang/String; = "Flash"

.field public static final DETAILS_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final DETAILS_ISO:Ljava/lang/String; = "ISO"

.field public static final DETAILS_SHUTTER_SPEED:Ljava/lang/String; = "ShutterSpeed"

.field public static final DETAILS_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final WHITE_BALANCE_AUTO:I = 0x0

.field public static final WHITE_BALANCE_MANUAL:I = 0x1


# instance fields
.field private final m_ActualHeight:I

.field private final m_ActualWidth:I

.field private final m_Orientation:I

.field private final m_TakenTime:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 88
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v4, p2}, Lcom/oneplus/camera/media/MediaInfo;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 91
    if-eqz p2, :cond_2

    .line 93
    const-string v4, "orientation"

    invoke-static {p2, v4, v5}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    .line 94
    const-string v4, "datetaken"

    invoke-static {p2, v4, v6, v7}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_TakenTime:J

    .line 103
    :goto_0
    invoke-super {p0}, Lcom/oneplus/camera/media/MediaInfo;->getWidth()I

    move-result v3

    .line 104
    .local v3, "width":I
    invoke-super {p0}, Lcom/oneplus/camera/media/MediaInfo;->getHeight()I

    move-result v1

    .line 105
    .local v1, "height":I
    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 109
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 110
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 111
    invoke-super {p0}, Lcom/oneplus/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 112
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 113
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    iput v3, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualWidth:I

    .line 121
    iput v1, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualHeight:I

    .line 122
    return-void

    .line 98
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_2
    iput v5, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    .line 99
    iput-wide v6, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_TakenTime:J

    goto :goto_0

    .line 115
    .restart local v1    # "height":I
    .restart local v3    # "width":I
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v4, "PhotoMediaInfo"

    const-string v5, "PhotoMediaInfo() - Fail to get photo size"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 130
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 224
    if-nez p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-object v2

    .line 228
    :cond_1
    const/16 v3, 0x2f

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    .line 229
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 230
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/oneplus/camera/media/PhotoMediaInfo;->toRational(Ljava/lang/String;Z)Landroid/util/Rational;

    move-result-object v1

    .line 231
    .local v1, "r":Landroid/util/Rational;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 233
    .end local v1    # "r":Landroid/util/Rational;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private toGeoCoordinate([Landroid/util/Rational;)Ljava/lang/Double;
    .locals 10
    .param p1, "value"    # [Landroid/util/Rational;

    .prologue
    const/4 v5, 0x0

    .line 243
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-object v5

    .line 248
    :cond_1
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p1, v6

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v2

    .line 249
    .local v2, "coord":D
    const/16 v0, 0x3c

    .line 250
    .local v0, "coeff":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    array-length v6, p1

    if-ge v4, v6, :cond_2

    .line 252
    aget-object v6, p1, v4

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    int-to-double v8, v0

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 253
    mul-int/lit8 v0, v0, 0x3c

    .line 250
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 256
    .end local v0    # "coeff":I
    .end local v2    # "coord":D
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 258
    .local v1, "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 260
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "coeff":I
    .restart local v2    # "coord":D
    .restart local v4    # "i":I
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_0
.end method

.method private toRational(Ljava/lang/String;Z)Landroid/util/Rational;
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reduction"    # Z

    .prologue
    const/4 v7, 0x0

    .line 267
    if-nez p1, :cond_0

    .line 291
    :goto_0
    return-object v7

    .line 269
    :cond_0
    const/16 v8, 0x2e

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 272
    .local v5, "index":I
    if-ltz v5, :cond_3

    .line 274
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 275
    .local v2, "doubleValue":D
    const/4 v0, 0x1

    .line 276
    .local v0, "d":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_1
    if-le v4, v5, :cond_1

    .line 277
    mul-int/lit8 v0, v0, 0xa

    .line 276
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 278
    :cond_1
    int-to-double v8, v0

    mul-double/2addr v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v6, v8

    .line 279
    .local v6, "n":I
    if-eqz p2, :cond_2

    const/4 v8, 0x1

    if-le v6, v8, :cond_2

    if-ge v6, v0, :cond_2

    .line 281
    div-int/2addr v0, v6

    .line 282
    const/4 v6, 0x1

    .line 284
    :cond_2
    new-instance v8, Landroid/util/Rational;

    invoke-direct {v8, v6, v0}, Landroid/util/Rational;-><init>(II)V

    move-object v7, v8

    goto :goto_0

    .line 287
    .end local v0    # "d":I
    .end local v2    # "doubleValue":D
    .end local v4    # "i":I
    .end local v6    # "n":I
    :cond_3
    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 289
    :catch_0
    move-exception v1

    .line 291
    .local v1, "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private toRationals(Ljava/lang/String;Z)[Landroid/util/Rational;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reduction"    # Z

    .prologue
    const/4 v4, 0x0

    .line 299
    if-nez p1, :cond_1

    move-object v3, v4

    .line 310
    :cond_0
    :goto_0
    return-object v3

    .line 301
    :cond_1
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "elements":[Ljava/lang/String;
    array-length v5, v0

    new-array v3, v5, [Landroid/util/Rational;

    .line 303
    .local v3, "result":[Landroid/util/Rational;
    array-length v5, v0

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 305
    aget-object v5, v0, v1

    invoke-direct {p0, v5, p2}, Lcom/oneplus/camera/media/PhotoMediaInfo;->toRational(Ljava/lang/String;Z)Landroid/util/Rational;

    move-result-object v2

    .line 306
    .local v2, "r":Landroid/util/Rational;
    if-nez v2, :cond_2

    move-object v3, v4

    .line 307
    goto :goto_0

    .line 308
    :cond_2
    aput-object v2, v3, v1

    .line 303
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getDetails(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/oneplus/camera/media/MediaInfo;->getDetails(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 143
    .local v0, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 147
    .restart local v0    # "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/media/PhotoMediaInfo;->hasFilePath()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/media/PhotoMediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->readPhotoMetadata(Ljava/lang/String;)Lcom/oneplus/media/PhotoMetadata;

    move-result-object v2

    .line 153
    .local v2, "metaData":Lcom/oneplus/media/PhotoMetadata;
    sget-object v3, Lcom/oneplus/media/PhotoMetadata;->PROP_FLASH_DATA:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/media/FlashData;

    .line 154
    .local v1, "flashData":Lcom/oneplus/media/FlashData;
    const-string v3, "Flash"

    invoke-virtual {v1}, Lcom/oneplus/media/FlashData;->isFlashFired()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 155
    const-string v3, "Location"

    sget-object v4, Lcom/oneplus/media/PhotoMetadata;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 156
    const-string v3, "Aperture"

    sget-object v4, Lcom/oneplus/media/PhotoMetadata;->PROP_APERTURE_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 157
    const-string v3, "CameraMaker"

    sget-object v4, Lcom/oneplus/media/PhotoMetadata;->PROP_MAKE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 158
    const-string v3, "CameraModel"

    sget-object v4, Lcom/oneplus/media/PhotoMetadata;->PROP_MODEL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 159
    const-string v3, "FocalLength"

    sget-object v4, Lcom/oneplus/media/PhotoMetadata;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 160
    const-string v3, "ISO"

    sget-object v4, Lcom/oneplus/media/PhotoMetadata;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 161
    const-string v3, "ShutterSpeed"

    sget-object v4, Lcom/oneplus/media/PhotoMetadata;->PROP_EXPOSURE_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 162
    const-string v3, "WhiteBalance"

    sget-object v4, Lcom/oneplus/media/PhotoMetadata;->PROP_WHITE_BALANCE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v4}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/oneplus/camera/media/PhotoMediaInfo;->addToDetails(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "flashData":Lcom/oneplus/media/FlashData;
    .end local v2    # "metaData":Lcom/oneplus/media/PhotoMetadata;
    :cond_1
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    sparse-switch v0, :sswitch_data_0

    .line 183
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualHeight:I

    :goto_0
    return v0

    .line 181
    :sswitch_0
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualWidth:I

    goto :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    return v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_TakenTime:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_Orientation:I

    sparse-switch v0, :sswitch_data_0

    .line 216
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualWidth:I

    :goto_0
    return v0

    .line 214
    :sswitch_0
    iget v0, p0, Lcom/oneplus/camera/media/PhotoMediaInfo;->m_ActualHeight:I

    goto :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method
