.class public abstract Lcom/oneplus/camera/io/MediaSaveTask;
.super Ljava/lang/Object;
.source "MediaSaveTask.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private volatile m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private volatile m_ContentUri:Landroid/net/Uri;

.field private volatile m_Context:Landroid/content/Context;

.field private volatile m_FilePath:Ljava/lang/String;

.field private volatile m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

.field private volatile m_Location:Landroid/location/Location;

.field private volatile m_StorageType:Lcom/oneplus/io/Storage$Type;

.field protected volatile m_Thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_Context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/oneplus/camera/io/MediaSaveTask;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 61
    return-void
.end method


# virtual methods
.method public final getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method public final getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getDcimPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 90
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v4

    const-class v5, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/io/StorageManager;

    .line 91
    .local v2, "storageManager":Lcom/oneplus/io/StorageManager;
    iget-object v3, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_StorageType:Lcom/oneplus/io/Storage$Type;

    .line 92
    .local v3, "type":Lcom/oneplus/io/Storage$Type;
    invoke-static {v2, v3}, Lcom/oneplus/io/StorageUtils;->findStorage(Lcom/oneplus/io/StorageManager;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v1

    .line 93
    .local v1, "storage":Lcom/oneplus/io/Storage;
    invoke-static {v1}, Lcom/oneplus/io/StorageUtils;->getDcimPath(Lcom/oneplus/io/Storage;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 96
    .end local v0    # "path":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "path":Ljava/lang/String;
    :cond_0
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/camera/io/MediaSaveTask;->onGenerateFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLensFacing()Lcom/oneplus/camera/Camera$LensFacing;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_Location:Landroid/location/Location;

    return-object v0
.end method

.method public abstract getMediaSize()J
.end method

.method public getStorageType()Lcom/oneplus/io/Storage$Type;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_StorageType:Lcom/oneplus/io/Storage$Type;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_Thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final insertToMediaStore()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 164
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 166
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "insertToMediaStore() - No media file path"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return v4

    .line 171
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .local v3, "values":Landroid/content/ContentValues;
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/oneplus/camera/io/MediaSaveTask;->onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 176
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "insertToMediaStore() - Fail to prepare values"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "insertToMediaStore() - Fail to prepare values"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 189
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/oneplus/camera/io/MediaSaveTask;->onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    .line 190
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    if-eqz v5, :cond_3

    .line 191
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "insertToMediaStore() - Content URI : "

    iget-object v7, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    invoke-static {v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    :try_start_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 208
    .local v1, "galleryContentValues":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {p0, v4, v5, v1}, Lcom/oneplus/camera/io/MediaSaveTask;->onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    iget-object v4, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {p0, v4, v5, v1}, Lcom/oneplus/camera/io/MediaSaveTask;->onInsertToGalleryDatabase(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 211
    .local v2, "galleryMediaUri":Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 212
    iget-object v4, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v5, "insertToMediaStore() - Gallery media Uri: "

    invoke-static {v4, v5, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 223
    .end local v1    # "galleryContentValues":Landroid/content/ContentValues;
    .end local v2    # "galleryMediaUri":Landroid/net/Uri;
    :cond_2
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 194
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "insertToMediaStore() - Fail to insert"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 198
    :catch_1
    move-exception v0

    .line 200
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v6, "insertToMediaStore() - Fail to insert"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 214
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "galleryContentValues":Landroid/content/ContentValues;
    .restart local v2    # "galleryMediaUri":Landroid/net/Uri;
    :cond_4
    :try_start_4
    iget-object v4, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v5, "insertToMediaStore() - Fail to insert prepared gallery media content values"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 217
    .end local v1    # "galleryContentValues":Landroid/content/ContentValues;
    .end local v2    # "galleryMediaUri":Landroid/net/Uri;
    :catch_2
    move-exception v0

    .line 219
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v5, "insertToMediaStore() - Fail to insert gallery database"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected abstract onGenerateFilePath()Ljava/lang/String;
.end method

.method protected onInsertToGalleryDatabase(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 18
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "preparedValues"    # Landroid/content/ContentValues;

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "onInsertToGalleryDatabase() - File path: "

    const-string v5, ", content Uri: "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ", content values: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/io/MediaSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/GalleryDatabase;->GALLERY_MEDIA_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 247
    .local v14, "uri":Landroid/net/Uri;
    if-nez v14, :cond_2

    .line 251
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 254
    .local v10, "mediaId":J
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "media_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "oneplus_flags"

    aput-object v3, v4, v2

    .line 255
    .local v4, "projections":[Ljava/lang/String;
    const-string v5, "media_id=?"

    .line 256
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 257
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/io/MediaSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/GalleryDatabase;->GALLERY_MEDIA_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 258
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "onInsertToGalleryDatabase() - Duplicated media id"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 265
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 266
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 267
    .local v12, "oldFlags":I
    const-string v2, "oneplus_flags"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 268
    .local v9, "newFlags":Ljava/lang/Integer;
    if-nez v9, :cond_1

    .line 269
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 270
    :cond_1
    const-string v2, "oneplus_flags"

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    const-string v15, "media_id=?"

    .line 272
    .local v15, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v2

    .line 273
    .local v16, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/io/MediaSaveTask;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/GalleryDatabase;->GALLERY_MEDIA_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v2, v3, v0, v15, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 274
    .local v13, "rowCount":I
    const/4 v2, 0x1

    if-ge v13, v2, :cond_2

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "onInsertToGalleryDatabase() - Cannot update media"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .end local v4    # "projections":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "newFlags":Ljava/lang/Integer;
    .end local v10    # "mediaId":J
    .end local v12    # "oldFlags":I
    .end local v13    # "rowCount":I
    .end local v15    # "where":Ljava/lang/String;
    .end local v16    # "whereArgs":[Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v14

    .line 278
    .restart local v4    # "projections":[Ljava/lang/String;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "mediaId":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "onInsertToGalleryDatabase() - Insert failed and no existed media found"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract onInsertToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected onPrepareFileSave(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
.end method

.method protected abstract onPrepareMediaStoreValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
.end method

.method protected abstract onSaveToFile(Ljava/lang/String;)Z
.end method

.method public final saveMediaToFile()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/io/MediaSaveTask;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    .line 342
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - File path : "

    iget-object v4, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/io/MediaSaveTask;->onPrepareFileSave(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - Fail to prepare media save"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    :goto_0
    return v1

    .line 346
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - No available file path"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 352
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - No available file path"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 365
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 367
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - Fail to prepare media save"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 374
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - Save to file [start]"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_FilePath:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/io/MediaSaveTask;->onSaveToFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 377
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - Fail to save media to file"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 383
    :catch_2
    move-exception v0

    .line 385
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - Fail to save media to file"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 380
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/oneplus/camera/io/MediaSaveTask;->TAG:Ljava/lang/String;

    const-string v3, "saveMediaToFile() - Save to file [end]"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 390
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setLensFacing(Lcom/oneplus/camera/Camera$LensFacing;)V
    .locals 0
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    .line 401
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_Location:Landroid/location/Location;

    .line 411
    return-void
.end method

.method public setStorageType(Lcom/oneplus/io/Storage$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/oneplus/io/Storage$Type;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/oneplus/camera/io/MediaSaveTask;->m_StorageType:Lcom/oneplus/io/Storage$Type;

    .line 421
    return-void
.end method
