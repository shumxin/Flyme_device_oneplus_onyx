.class public final Lcom/meizu/media/camera/media/MediaListManager;
.super Ljava/lang/Object;
.source "MediaListManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;
    }
.end annotation


# static fields
.field private static final DURATION_CHECK_MEDIA_LISTS:J = 0x3e8L

.field private static final DURATION_CLEAR_MEDIA_LISTS:J = 0xbb8L

.field public static final FLAG_SECURE:I = 0x1

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_QUERY_BASE_CONDITIONS:Ljava/lang/String; = "(media_type=1 OR media_type=3)"

.field private static final MSG_ADD_MEDIA:I = 0x271a

.field private static final MSG_CHECK_MEDIA_LISTS:I = 0x2712

.field private static final MSG_CLEAR_MEDIA_LISTS:I = 0x2710

.field private static final MSG_REFRESH_MEDIA_LISTS:I = 0x2711

.field private static final MSG_REMOVE_MEDIA:I = 0x271b

.field private static final PARTIAL_QUERY_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "MediaListManager"

.field private static final m_ActiveMediaLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_BaseMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/media/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static m_ContentObserver:Landroid/database/ContentObserver;

.field private static volatile m_ContentThread:Landroid/os/HandlerThread;

.field private static volatile m_ContentThreadHandler:Landroid/os/Handler;

.field private static volatile m_Context:Landroid/content/Context;

.field private static final m_Lock:Ljava/lang/Object;

.field private static final m_MediaInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/meizu/media/camera/media/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/media/camera/media/MediaListManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/media/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    .line 86
    new-instance v0, Lcom/meizu/media/camera/media/MediaListManager$1;

    invoke-direct {v0}, Lcom/meizu/media/camera/media/MediaListManager$1;-><init>()V

    sput-object v0, Lcom/meizu/media/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/meizu/media/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/meizu/media/camera/media/MediaListManager;->onMediaListReleased(Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;)V

    return-void
.end method

.method static synthetic access$500(Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Message;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/meizu/media/camera/media/MediaListManager;->handleContentThreadMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/meizu/media/camera/media/MediaListManager;->onMediaStoreContentChanged(Landroid/net/Uri;)V

    return-void
.end method

.method private static addMedia(Ljava/lang/String;J)V
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    .line 408
    sget-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 410
    const-string v2, "MediaListManager"

    const-string v3, "addMedia() - No context"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    sget-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    const-string v2, "MediaListManager"

    const-string v3, "addMedia() - Cancelled"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_2
    const/4 v0, 0x0

    .line 421
    .local v0, "client":Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 425
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 426
    .local v1, "contentUri":Landroid/net/Uri;
    sget-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 427
    sget-object v2, Lcom/meizu/media/camera/media/MediaListManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 431
    invoke-static {v1, v6}, Lcom/meizu/media/camera/media/MediaListManager;->createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/meizu/media/camera/media/MediaInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 432
    .local v11, "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    if-nez v11, :cond_4

    .line 456
    if-eqz v6, :cond_3

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_3
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 436
    :cond_4
    :try_start_1
    sget-object v3, Lcom/meizu/media/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 438
    :try_start_2
    sget-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;

    invoke-static {v2, v11, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v9

    .line 439
    .local v9, "index":I
    if-gez v9, :cond_5

    .line 440
    sget-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    xor-int/lit8 v4, v9, -0x1

    invoke-interface {v2, v4, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 441
    :cond_5
    sget-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_8

    .line 443
    sget-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    .line 444
    .local v10, "list":Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;
    iget-boolean v2, v10, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->isSecureMode:Z

    if-eqz v2, :cond_6

    iget-wide v4, v10, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->creationTime:J

    cmp-long v2, v4, p1

    if-gez v2, :cond_7

    .line 445
    :cond_6
    invoke-virtual {v10, v11}, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->addMedia(Lcom/meizu/media/camera/media/MediaInfo;)V

    .line 441
    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 447
    .end local v10    # "list":Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;
    :cond_8
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 456
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v11    # "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    :cond_9
    if-eqz v6, :cond_a

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_a
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 447
    .restart local v11    # "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 450
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v11    # "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    :catch_0
    move-exception v7

    .line 452
    .local v7, "ex":Ljava/lang/Throwable;
    :try_start_5
    const-string v2, "MediaListManager"

    const-string v3, "addMedia() - Unhandled exception"

    invoke-static {v2, v3, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 456
    if-eqz v6, :cond_b

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_b
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 456
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    if-eqz v6, :cond_c

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_c
    if-eqz v0, :cond_d

    .line 459
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_d
    throw v2
.end method

.method private static checkContentThread(Z)Z
    .locals 4
    .param p0, "createThread"    # Z

    .prologue
    const/4 v0, 0x1

    .line 467
    sget-object v1, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 489
    :goto_0
    return v0

    .line 469
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_0
    sget-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_2

    .line 473
    if-nez p0, :cond_1

    .line 474
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 475
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Media manager content thread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;

    .line 476
    const-string v2, "MediaListManager"

    const-string v3, "checkContentThread() - Start content thread"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    sget-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 478
    new-instance v2, Lcom/meizu/media/camera/media/MediaListManager$2;

    sget-object v3, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/meizu/media/camera/media/MediaListManager$2;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    .line 486
    const-string v2, "MediaListManager"

    const-string v3, "checkContentThread() - Content thread started"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static checkMediaLists()V
    .locals 39

    .prologue
    .line 496
    const-string v6, "MediaListManager"

    const-string v7, "checkMediaLists()"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    sget-object v38, Lcom/meizu/media/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v38

    .line 500
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v13, "addedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v31, "removedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v32, "replacedMedia":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/meizu/media/camera/media/MediaInfo;Lcom/meizu/media/camera/media/MediaInfo;>;>;"
    new-instance v33, Ljava/util/Hashtable;

    invoke-direct/range {v33 .. v33}, Ljava/util/Hashtable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    .local v33, "srcContentIDs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/meizu/media/camera/media/MediaInfo;>;"
    :try_start_1
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v19, v6, -0x1

    .local v19, "i":I
    :goto_0
    if-ltz v19, :cond_0

    .line 510
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/meizu/media/camera/media/MediaInfo;

    .line 511
    .local v28, "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    invoke-virtual/range {v28 .. v28}, Lcom/meizu/media/camera/media/MediaInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .line 514
    .end local v19    # "i":I
    .end local v28    # "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    :catch_0
    move-exception v17

    .line 516
    .local v17, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v6, "MediaListManager"

    const-string v7, "checkMediaLists() - Cannot create media list content IDs"

    move-object/from16 v0, v17

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    monitor-exit v38

    .line 642
    .end local v17    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 521
    .restart local v19    # "i":I
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v36

    .line 522
    .local v36, "totalTime":J
    const/4 v5, 0x0

    .line 523
    .local v5, "contentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 526
    .local v4, "client":Landroid/content/ContentProviderClient;
    :try_start_3
    const-string v6, "external"

    invoke-static {v6}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 527
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v4

    .line 530
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v7, 0x2710

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 532
    const-string v6, "MediaListManager"

    const-string v7, "checkMediaLists() - Cancelled"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 637
    if-eqz v4, :cond_1

    .line 638
    :try_start_4
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 639
    :cond_1
    const-string v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMediaLists() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v36

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms to check media lists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v38

    goto :goto_1

    .line 641
    .end local v4    # "client":Landroid/content/ContentProviderClient;
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v19    # "i":I
    .end local v31    # "removedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    .end local v32    # "replacedMedia":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/meizu/media/camera/media/MediaInfo;Lcom/meizu/media/camera/media/MediaInfo;>;>;"
    .end local v33    # "srcContentIDs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/meizu/media/camera/media/MediaInfo;>;"
    .end local v36    # "totalTime":J
    :catchall_0
    move-exception v6

    monitor-exit v38
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 537
    .restart local v4    # "client":Landroid/content/ContentProviderClient;
    .restart local v5    # "contentUri":Landroid/net/Uri;
    .restart local v19    # "i":I
    .restart local v31    # "removedMedia":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    .restart local v32    # "replacedMedia":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/meizu/media/camera/media/MediaInfo;Lcom/meizu/media/camera/media/MediaInfo;>;>;"
    .restart local v33    # "srcContentIDs":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/meizu/media/camera/media/MediaInfo;>;"
    .restart local v36    # "totalTime":J
    :cond_2
    :try_start_5
    new-instance v15, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v15}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 538
    .local v15, "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    new-instance v14, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v14}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 539
    .local v14, "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    invoke-static {v15, v14}, Lcom/meizu/media/camera/media/MediaListManager;->prepareMediaQueryConditions(Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    .line 543
    .local v34, "time":J
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    invoke-interface {v15}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v14}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const-string v9, "datetaken DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v16

    .line 544
    .local v16, "cursor":Landroid/database/Cursor;
    if-eqz v16, :cond_8

    .line 549
    :cond_3
    :goto_2
    :try_start_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 551
    const-string v6, "_id"

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v6, v7}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 552
    .local v21, "id":Ljava/lang/Integer;
    const-string v6, "date_modified"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v6, v8, v9}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v24

    .line 554
    .local v24, "lastModifiedTime":J
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    .line 556
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/meizu/media/camera/media/MediaInfo;

    .local v30, "oldMedia":Lcom/meizu/media/camera/media/MediaInfo;
    if-eqz v30, :cond_5

    .line 558
    invoke-virtual/range {v30 .. v30}, Lcom/meizu/media/camera/media/MediaInfo;->getLastModifiedTime()J

    move-result-wide v6

    cmp-long v6, v6, v24

    if-eqz v6, :cond_3

    .line 561
    move-object/from16 v0, v16

    invoke-static {v5, v0}, Lcom/meizu/media/camera/media/MediaListManager;->createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/meizu/media/camera/media/MediaInfo;

    move-result-object v29

    .line 562
    .local v29, "newMedia":Lcom/meizu/media/camera/media/MediaInfo;
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 580
    .end local v21    # "id":Ljava/lang/Integer;
    .end local v24    # "lastModifiedTime":J
    .end local v29    # "newMedia":Lcom/meizu/media/camera/media/MediaInfo;
    .end local v30    # "oldMedia":Lcom/meizu/media/camera/media/MediaInfo;
    :catchall_1
    move-exception v6

    :try_start_7
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 631
    .end local v14    # "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    .end local v15    # "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v34    # "time":J
    :catch_1
    move-exception v18

    .line 633
    .local v18, "ex":Ljava/lang/Throwable;
    :try_start_8
    const-string v6, "MediaListManager"

    const-string v7, "checkMediaLists() - Unhandled exception"

    move-object/from16 v0, v18

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 637
    if-eqz v4, :cond_4

    .line 638
    :try_start_9
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 639
    :cond_4
    const-string v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMediaLists() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v36

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms to check media lists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .end local v18    # "ex":Ljava/lang/Throwable;
    :goto_3
    monitor-exit v38
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 566
    .restart local v14    # "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    .restart local v15    # "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v21    # "id":Ljava/lang/Integer;
    .restart local v24    # "lastModifiedTime":J
    .restart local v30    # "oldMedia":Lcom/meizu/media/camera/media/MediaInfo;
    .restart local v34    # "time":J
    :cond_5
    :try_start_a
    move-object/from16 v0, v16

    invoke-static {v5, v0}, Lcom/meizu/media/camera/media/MediaListManager;->createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/meizu/media/camera/media/MediaInfo;

    move-result-object v28

    .line 567
    .restart local v28    # "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    if-eqz v28, :cond_3

    .line 570
    move-object/from16 v0, v28

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 575
    .end local v21    # "id":Ljava/lang/Integer;
    .end local v24    # "lastModifiedTime":J
    .end local v28    # "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    .end local v30    # "oldMedia":Lcom/meizu/media/camera/media/MediaInfo;
    :cond_6
    invoke-virtual/range {v33 .. v33}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/meizu/media/camera/media/MediaInfo;

    .line 576
    .restart local v28    # "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    .line 580
    .end local v28    # "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    :cond_7
    :try_start_b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 585
    .end local v20    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v34, v6, v34

    .line 586
    const-string v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMediaLists() - Take "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms to check, added: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, ", deleted: "

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, ", replaced: "

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v6 .. v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v19, v6, -0x1

    :goto_5
    if-ltz v19, :cond_d

    .line 591
    move/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/meizu/media/camera/media/MediaInfo;

    .line 592
    .local v27, "media":Lcom/meizu/media/camera/media/MediaInfo;
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    sget-object v7, Lcom/meizu/media/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;

    move-object/from16 v0, v27

    invoke-static {v6, v0, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v22

    .line 593
    .local v22, "index":I
    if-gez v22, :cond_a

    .line 594
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    xor-int/lit8 v7, v22, -0x1

    move-object/from16 v0, v27

    invoke-interface {v6, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 597
    :goto_6
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v23, v6, -0x1

    .local v23, "j":I
    :goto_7
    if-ltz v23, :cond_c

    .line 599
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    .line 600
    .local v26, "list":Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;
    move-object/from16 v0, v26

    iget-boolean v6, v0, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->isSecureMode:Z

    if-nez v6, :cond_9

    .line 601
    invoke-virtual/range {v26 .. v27}, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->addMedia(Lcom/meizu/media/camera/media/MediaInfo;)V

    .line 597
    :cond_9
    add-int/lit8 v23, v23, -0x1

    goto :goto_7

    .line 596
    .end local v23    # "j":I
    .end local v26    # "list":Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;
    :cond_a
    const-string v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMediaLists() - Add media with invalid index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_6

    .line 637
    .end local v14    # "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    .end local v15    # "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v22    # "index":I
    .end local v27    # "media":Lcom/meizu/media/camera/media/MediaInfo;
    .end local v34    # "time":J
    :catchall_2
    move-exception v6

    if-eqz v4, :cond_b

    .line 638
    :try_start_c
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 639
    :cond_b
    const-string v7, "MediaListManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkMediaLists() - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v10, v36

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms to check media lists"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 589
    .restart local v14    # "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    .restart local v15    # "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "index":I
    .restart local v23    # "j":I
    .restart local v27    # "media":Lcom/meizu/media/camera/media/MediaInfo;
    .restart local v34    # "time":J
    :cond_c
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_5

    .line 606
    .end local v22    # "index":I
    .end local v23    # "j":I
    .end local v27    # "media":Lcom/meizu/media/camera/media/MediaInfo;
    :cond_d
    :try_start_d
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    move-object/from16 v0, v31

    invoke-interface {v6, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 607
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v19, v6, -0x1

    :goto_8
    if-ltz v19, :cond_e

    .line 609
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    .line 610
    .restart local v26    # "list":Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    # invokes: Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->removeMedia(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->access$600(Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V

    .line 607
    add-int/lit8 v19, v19, -0x1

    goto :goto_8

    .line 614
    .end local v26    # "list":Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;
    :cond_e
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v19, v6, -0x1

    :goto_9
    if-ltz v19, :cond_11

    .line 616
    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/meizu/media/camera/media/MediaInfo;

    .line 617
    .restart local v30    # "oldMedia":Lcom/meizu/media/camera/media/MediaInfo;
    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/meizu/media/camera/media/MediaInfo;

    .line 618
    .restart local v29    # "newMedia":Lcom/meizu/media/camera/media/MediaInfo;
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 619
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    sget-object v7, Lcom/meizu/media/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;

    move-object/from16 v0, v29

    invoke-static {v6, v0, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v22

    .line 620
    .restart local v22    # "index":I
    if-gez v22, :cond_f

    .line 621
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    xor-int/lit8 v7, v22, -0x1

    move-object/from16 v0, v29

    invoke-interface {v6, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 624
    :goto_a
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v23, v6, -0x1

    .restart local v23    # "j":I
    :goto_b
    if-ltz v23, :cond_10

    .line 626
    sget-object v6, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    .line 627
    .restart local v26    # "list":Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;
    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->replaceMedia(Lcom/meizu/media/camera/media/MediaInfo;Lcom/meizu/media/camera/media/MediaInfo;)V

    .line 624
    add-int/lit8 v23, v23, -0x1

    goto :goto_b

    .line 623
    .end local v23    # "j":I
    .end local v26    # "list":Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;
    :cond_f
    const-string v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMediaLists() - Replace media with invalid index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_a

    .line 614
    .restart local v23    # "j":I
    :cond_10
    add-int/lit8 v19, v19, -0x1

    goto :goto_9

    .line 637
    .end local v22    # "index":I
    .end local v23    # "j":I
    .end local v29    # "newMedia":Lcom/meizu/media/camera/media/MediaInfo;
    .end local v30    # "oldMedia":Lcom/meizu/media/camera/media/MediaInfo;
    :cond_11
    if-eqz v4, :cond_12

    .line 638
    :try_start_e
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 639
    :cond_12
    const-string v6, "MediaListManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMediaLists() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v36

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms to check media lists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3
.end method

.method private static clearMediaLists()V
    .locals 3

    .prologue
    .line 648
    sget-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v2

    .line 650
    :try_start_0
    sget-object v1, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 651
    sget-object v1, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    invoke-virtual {v1}, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->clearMedia()V

    .line 650
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 652
    :cond_0
    sget-object v1, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 653
    monitor-exit v2

    .line 654
    return-void

    .line 653
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/meizu/media/camera/media/MediaInfo;
    .locals 3
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 660
    const-string v2, "mime_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-object v1

    .line 663
    :cond_1
    const-string v2, "image/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 664
    new-instance v1, Lcom/meizu/media/camera/media/PhotoMediaInfo;

    invoke-direct {v1, p0, p1}, Lcom/meizu/media/camera/media/PhotoMediaInfo;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V

    goto :goto_0

    .line 665
    :cond_2
    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    new-instance v1, Lcom/meizu/media/camera/media/VideoMediaInfo;

    invoke-direct {v1, p0, p1}, Lcom/meizu/media/camera/media/VideoMediaInfo;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public static createMediaList(Landroid/content/Context;I)Lcom/meizu/media/camera/media/MediaList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x1

    .line 682
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_2

    move v0, v2

    .line 683
    .local v0, "isSecureMode":Z
    :goto_0
    new-instance v1, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    invoke-direct {v1, v0}, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;-><init>(Z)V

    .line 684
    .local v1, "mediaList":Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;
    sget-object v3, Lcom/meizu/media/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v3

    .line 687
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    .line 690
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 694
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 695
    :cond_0
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 697
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/meizu/media/camera/media/MediaListManager;->checkContentThread(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 698
    sget-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 704
    :cond_1
    :goto_1
    monitor-exit v3

    .line 705
    return-object v1

    .line 682
    .end local v0    # "isSecureMode":Z
    .end local v1    # "mediaList":Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 700
    .restart local v0    # "isSecureMode":Z
    .restart local v1    # "mediaList":Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;
    :cond_3
    const-string v2, "MediaListManager"

    const-string v4, "createMediaList() - Fail to start content thread"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 704
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 702
    :cond_4
    if-nez v0, :cond_1

    .line 703
    :try_start_1
    sget-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->addMedia(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static handleContentThreadMessage(Landroid/os/Message;)V
    .locals 4
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 712
    iget v1, p0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 745
    :goto_0
    return-void

    .line 716
    :sswitch_0
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 717
    .local v0, "params":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/meizu/media/camera/media/MediaListManager;->addMedia(Ljava/lang/String;J)V

    goto :goto_0

    .line 722
    .end local v0    # "params":[Ljava/lang/Object;
    :sswitch_1
    invoke-static {}, Lcom/meizu/media/camera/media/MediaListManager;->checkMediaLists()V

    goto :goto_0

    .line 727
    :sswitch_2
    sget-object v1, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/meizu/media/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 729
    const-string v1, "MediaListManager"

    const-string v2, "handleContentThreadMessage() - Unregister content observer"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    sget-object v1, Lcom/meizu/media/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 731
    const/4 v1, 0x0

    sput-object v1, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    .line 733
    :cond_0
    invoke-static {}, Lcom/meizu/media/camera/media/MediaListManager;->clearMediaLists()V

    goto :goto_0

    .line 738
    :sswitch_3
    invoke-static {}, Lcom/meizu/media/camera/media/MediaListManager;->refreshMediaLists()V

    goto :goto_0

    .line 742
    :sswitch_4
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/meizu/media/camera/media/MediaListManager;->removeMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_2
        0x2711 -> :sswitch_3
        0x2712 -> :sswitch_1
        0x271a -> :sswitch_0
        0x271b -> :sswitch_4
    .end sparse-switch
.end method

.method public static notifyFileAdded(Ljava/lang/String;)V
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 754
    if-nez p0, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    invoke-static {v6}, Lcom/meizu/media/camera/media/MediaListManager;->checkContentThread(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    sget-object v0, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static notifyFileDeleted(Ljava/lang/String;)V
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 767
    if-nez p0, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/meizu/media/camera/media/MediaListManager;->checkContentThread(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    sget-object v0, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x271b

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private static onMediaListReleased(Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;)V
    .locals 6
    .param p0, "mediaList"    # Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    .prologue
    .line 788
    sget-object v1, Lcom/meizu/media/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 790
    :try_start_0
    sget-object v0, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    const-string v0, "MediaListManager"

    const-string v2, "onMediaListReleased() - No active media lists, clear media list later"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    sget-object v0, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 794
    sget-object v0, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x2710

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 796
    :cond_0
    monitor-exit v1

    .line 797
    return-void

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static onMediaStoreContentChanged(Landroid/net/Uri;)V
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x2712

    .line 777
    sget-object v0, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    const-string v0, "MediaListManager"

    const-string v1, "onMediaStoreContentChanged() - Check media lists later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    sget-object v0, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 782
    :cond_0
    return-void
.end method

.method private static prepareMediaQueryConditions(Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/base/Ref",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 804
    .local p0, "cond":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .local p1, "condArgs":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    invoke-static {}, Lcom/meizu/media/camera/CameraApplication;->current()Lcom/meizu/media/camera/CameraApplication;

    move-result-object v5

    const-class v6, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v5, v6}, Lcom/meizu/media/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/io/StorageManager;

    .line 811
    .local v4, "storageManager":Lcom/oneplus/io/StorageManager;
    invoke-static {v4}, Lcom/oneplus/io/StorageUtils;->getAllDcimPath(Lcom/oneplus/io/StorageManager;)Ljava/util/List;

    move-result-object v2

    .line 814
    .local v2, "dcimPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v5, "(media_type=1 OR media_type=3)"

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 815
    .local v1, "condBuffer":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .local v0, "condArgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 818
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 819
    const-string v5, " AND (_data LIKE ?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 821
    :cond_2
    const-string v5, " OR _data LIKE ?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 824
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 825
    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 826
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 827
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static refreshMediaLists()V
    .locals 26

    .prologue
    .line 835
    invoke-static {}, Lcom/meizu/media/camera/media/MediaListManager;->clearMediaLists()V

    .line 838
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v5, 0x2712

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 841
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 842
    .local v22, "totalTime":J
    const/4 v3, 0x0

    .line 843
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 846
    .local v2, "client":Landroid/content/ContentProviderClient;
    const/16 v18, 0x0

    .line 847
    .local v18, "rowOffset":I
    :try_start_0
    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 848
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 852
    :cond_0
    :goto_0
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 854
    const-string v4, "MediaListManager"

    const-string v5, "refreshMediaLists() - Cancelled"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 924
    if-eqz v2, :cond_1

    .line 925
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 926
    :cond_1
    const-string v4, "MediaListManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshMediaLists() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v22

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to refresh media lists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :cond_2
    :goto_1
    return-void

    .line 859
    :cond_3
    :try_start_1
    new-instance v9, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v9}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 860
    .local v9, "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    new-instance v8, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v8}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 861
    .local v8, "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    invoke-static {v9, v8}, Lcom/meizu/media/camera/media/MediaListManager;->prepareMediaQueryConditions(Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)V

    .line 864
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 865
    .local v20, "time":J
    const/4 v15, 0x0

    .line 866
    .local v15, "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    invoke-interface {v9}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v8}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "datetaken DESC ,_data DESC LIMIT 64 OFFSET "

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v10

    .line 867
    .local v10, "cursor":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 868
    .local v17, "partialRowCount":I
    if-eqz v10, :cond_6

    move-object/from16 v16, v15

    .line 872
    .end local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    .local v16, "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 875
    invoke-static {v3, v10}, Lcom/meizu/media/camera/media/MediaListManager;->createMediaInfo(Landroid/net/Uri;Landroid/database/Cursor;)Lcom/meizu/media/camera/media/MediaInfo;

    move-result-object v14

    .line 876
    .local v14, "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    if-eqz v14, :cond_4

    .line 880
    if-nez v16, :cond_e

    .line 881
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 882
    .end local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    .restart local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    :goto_3
    :try_start_3
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v16, v15

    .line 883
    .end local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    .restart local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    goto :goto_2

    .line 884
    .end local v14    # "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    :cond_5
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v17

    .line 888
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object/from16 v15, v16

    .line 893
    .end local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    .restart local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    :cond_6
    if-lez v17, :cond_c

    .line 894
    add-int v18, v18, v17

    .line 899
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v20, v4, v20

    .line 900
    const-string v5, "MediaListManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshMediaLists() - Take "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ms to create "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v15, :cond_9

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " media info"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    if-eqz v15, :cond_0

    .line 905
    sget-object v5, Lcom/meizu/media/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 907
    :try_start_6
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 908
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v12, v4, -0x1

    .local v12, "i":I
    :goto_5
    if-ltz v12, :cond_a

    .line 910
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    .line 911
    .local v13, "list":Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;
    iget-boolean v4, v13, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->isSecureMode:Z

    if-nez v4, :cond_7

    .line 912
    invoke-virtual {v13, v15}, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->addMedia(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 908
    :cond_7
    add-int/lit8 v12, v12, -0x1

    goto :goto_5

    .line 888
    .end local v12    # "i":I
    .end local v13    # "list":Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;
    .end local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    .restart local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    :catchall_0
    move-exception v4

    move-object/from16 v15, v16

    .end local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    .restart local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    :goto_6
    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 918
    .end local v8    # "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    .end local v9    # "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    .end local v17    # "partialRowCount":I
    .end local v20    # "time":J
    :catch_0
    move-exception v11

    .line 920
    .local v11, "ex":Ljava/lang/Throwable;
    :try_start_8
    const-string v4, "MediaListManager"

    const-string v5, "refreshMediaLists() - Unhandled exception"

    invoke-static {v4, v5, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 924
    if-eqz v2, :cond_8

    .line 925
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 926
    :cond_8
    const-string v4, "MediaListManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshMediaLists() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v22

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to refresh media lists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    .end local v11    # "ex":Ljava/lang/Throwable;
    :goto_7
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    if-nez v4, :cond_2

    .line 934
    :try_start_9
    const-string v4, "MediaListManager"

    const-string v5, "refreshMediaLists() - Register content observer"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    new-instance v4, Lcom/meizu/media/camera/media/MediaListManager$3;

    sget-object v5, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentThreadHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Lcom/meizu/media/camera/media/MediaListManager$3;-><init>(Landroid/os/Handler;)V

    sput-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    .line 949
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    sget-object v7, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 950
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    sget-object v7, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    .line 952
    :catch_1
    move-exception v11

    .line 954
    .restart local v11    # "ex":Ljava/lang/Throwable;
    const-string v4, "MediaListManager"

    const-string v5, "refreshMediaLists() - Fail to register content observer"

    invoke-static {v4, v5, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 955
    const/4 v4, 0x0

    sput-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_ContentObserver:Landroid/database/ContentObserver;

    goto/16 :goto_1

    .line 900
    .end local v11    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    .restart local v9    # "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    .restart local v17    # "partialRowCount":I
    .restart local v20    # "time":J
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 914
    .restart local v12    # "i":I
    :cond_a
    :try_start_a
    monitor-exit v5

    goto/16 :goto_0

    .end local v12    # "i":I
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v4
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 924
    .end local v8    # "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    .end local v9    # "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    .end local v17    # "partialRowCount":I
    .end local v20    # "time":J
    :catchall_2
    move-exception v4

    if-eqz v2, :cond_b

    .line 925
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 926
    :cond_b
    const-string v5, "MediaListManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshMediaLists() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v24, v24, v22

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms to refresh media lists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 924
    .restart local v8    # "condArgsRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<[Ljava/lang/String;>;"
    .restart local v9    # "condRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    .restart local v17    # "partialRowCount":I
    .restart local v20    # "time":J
    :cond_c
    if-eqz v2, :cond_d

    .line 925
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 926
    :cond_d
    const-string v4, "MediaListManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshMediaLists() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v22

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to refresh media lists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 888
    .restart local v14    # "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    :catchall_3
    move-exception v4

    goto/16 :goto_6

    .end local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    .restart local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    :cond_e
    move-object/from16 v15, v16

    .end local v16    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    .restart local v15    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/media/MediaInfo;>;"
    goto/16 :goto_3
.end method

.method private static removeMedia(Ljava/lang/String;)V
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 964
    sget-object v4, Lcom/meizu/media/camera/media/MediaListManager;->m_Lock:Ljava/lang/Object;

    monitor-enter v4

    .line 967
    const/4 v2, 0x0

    .line 968
    .local v2, "mediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    :try_start_0
    sget-object v3, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 970
    sget-object v3, Lcom/meizu/media/camera/media/MediaListManager;->m_BaseMediaList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/media/MediaInfo;

    .line 971
    .local v0, "candMediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    invoke-virtual {v0}, Lcom/meizu/media/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 973
    move-object v2, v0

    .line 979
    .end local v0    # "candMediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    :cond_0
    if-eqz v2, :cond_2

    .line 981
    sget-object v3, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 982
    sget-object v3, Lcom/meizu/media/camera/media/MediaListManager;->m_ActiveMediaLists:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;

    # invokes: Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->removeMedia(Lcom/meizu/media/camera/media/MediaInfo;)V
    invoke-static {v3, v2}, Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;->access$800(Lcom/meizu/media/camera/media/MediaListManager$MediaListImpl;Lcom/meizu/media/camera/media/MediaInfo;)V

    .line 981
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 968
    .restart local v0    # "candMediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 984
    .end local v0    # "candMediaInfo":Lcom/meizu/media/camera/media/MediaInfo;
    :cond_2
    monitor-exit v4

    .line 985
    return-void

    .line 984
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
