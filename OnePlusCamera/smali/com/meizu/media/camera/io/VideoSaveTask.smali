.class public Lcom/meizu/media/camera/io/VideoSaveTask;
.super Lcom/meizu/media/camera/io/MediaSaveTask;
.source "VideoSaveTask.java"


# instance fields
.field private final m_Context:Landroid/content/Context;

.field private m_FilePath:Ljava/lang/String;

.field private final m_Size:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Ljava/lang/String;Landroid/util/Size;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/meizu/media/camera/CaptureHandle;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "size"    # Landroid/util/Size;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/io/MediaSaveTask;-><init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;)V

    .line 37
    iput-object p1, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_Context:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_FilePath:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_Size:Landroid/util/Size;

    .line 40
    return-void
.end method


# virtual methods
.method public getMediaSize()J
    .locals 2

    .prologue
    .line 135
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 147
    :goto_0
    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_FilePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 147
    iget-object v0, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onGenerateFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method protected onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "preparedValues"    # Landroid/content/ContentValues;

    .prologue
    .line 56
    iget-object v3, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->TAG:Ljava/lang/String;

    const-string v4, "onInsertToMediaStore() - File path: "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", prepared values: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, p1, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 59
    if-nez v2, :cond_0

    .line 61
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 62
    .local v1, "mSelectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_data=?"

    invoke-virtual {v3, v4, p2, v5, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    iget-object v3, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->TAG:Ljava/lang/String;

    const-string v4, "onInsertToMediaStore() - Video was already inserted by other way, update it."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v1    # "mSelectionArgs":[Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 69
    iget-object v3, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    return-object v2
.end method

.method protected onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-virtual {p0}, Lcom/meizu/media/camera/io/VideoSaveTask;->getLensFacing()Lcom/meizu/media/camera/Camera$LensFacing;

    move-result-object v3

    sget-object v4, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    if-ne v3, v4, :cond_0

    .line 82
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 83
    .local v0, "mediaId":J
    const-string v3, "media_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    const-string v3, "oneplus_flags"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    .end local v0    # "mediaId":J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 95
    iget-object v3, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_Context:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 99
    .local v2, "mp":Landroid/media/MediaPlayer;
    :try_start_0
    const-string v3, "title"

    invoke-static {p1}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "description"

    invoke-static {p1}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v3, "mime_type"

    const-string v6, "video/mp4"

    invoke-virtual {p2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 105
    .local v4, "time":J
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 107
    const-string v3, "date_modified"

    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string v3, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v0    # "file":Ljava/io/File;
    .end local v4    # "time":J
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/meizu/media/camera/io/VideoSaveTask;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 113
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 114
    const-string v3, "latitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 115
    const-string v3, "longitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 117
    :cond_0
    const-string v3, "width"

    iget-object v6, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_Size:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v3, "height"

    iget-object v6, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_Size:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string v3, "resolution"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_Size:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/media/camera/io/VideoSaveTask;->m_Size:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v3, "duration"

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v3, "_data"

    invoke-virtual {p2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    const/4 v3, 0x1

    .line 126
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    return v3

    .end local v1    # "location":Landroid/location/Location;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    throw v3

    .line 110
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method protected onSaveToFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method
