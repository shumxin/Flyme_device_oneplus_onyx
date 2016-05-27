.class public Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;
.super Ljava/lang/Object;
.source "NetworkStatsRecorderWithProcInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;,
        Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;
    }
.end annotation


# static fields
.field private static final DUMP_BEFORE_DELETE:Z = true

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsRecorderWithProcInfo"

.field private static final TAG_NETSTATS_DUMP:Ljava/lang/String; = "netstats_dump"


# instance fields
.field private mActiveIfacesHasInit:Z

.field private final mBucketDuration:J

.field private mComplete:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCookie:Ljava/lang/String;

.field private final mDropBox:Landroid/os/DropBoxManager;

.field private mLastSnapshot:Landroid/net/NetworkStats;

.field private final mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnlyTags:Z

.field private final mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

.field private final mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;

.field private mPersistThresholdBytes:J

.field private final mRotator:Lcom/android/internal/util/FileRotator;

.field private final mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V
    .locals 3
    .param p1, "rotator"    # Lcom/android/internal/util/FileRotator;
    .param p3, "dropBox"    # Landroid/os/DropBoxManager;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "bucketDuration"    # J
    .param p7, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FileRotator;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/DropBoxManager;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPersistThresholdBytes:J

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mActiveIfacesHasInit:Z

    .line 92
    const-string v0, "missing FileRotator"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/FileRotator;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    .line 93
    const-string v0, "missing NonMonotonicObserver"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$NonMonotonicObserver;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    .line 94
    const-string v0, "missing DropBoxManager"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mDropBox:Landroid/os/DropBoxManager;

    .line 95
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mCookie:Ljava/lang/String;

    .line 97
    iput-wide p5, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mBucketDuration:J

    .line 98
    iput-boolean p7, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mOnlyTags:Z

    .line 100
    new-instance v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    .line 101
    new-instance v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-direct {v0, p5, p6}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    .line 103
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;

    .line 104
    return-void
.end method

.method private getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator;->getPrefix()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recoverFromWtf()V
    .locals 4

    .prologue
    .line 493
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 495
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/FileRotator;->dumpAll(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 504
    :goto_0
    const-string v2, "NetworkStatsRecorderWithProcInfo"

    const-string v3, "recoverFromWtf."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 508
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method


# virtual methods
.method public dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "fullHistory"    # Z

    .prologue
    .line 477
    const-string v0, "Pending bytes: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 478
    if-eqz p2, :cond_0

    .line 479
    const-string v0, "Complete history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 485
    :goto_0
    return-void

    .line 482
    :cond_0
    const-string v0, "History since boot:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0
.end method

.method public forcePersistLocked(J)V
    .locals 3
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPendingRewriter:Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 323
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 324
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    const-string v2, "problem persisting pending stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->recoverFromWtf()V

    goto :goto_0

    .line 328
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "NetworkStatsRecorderWithProcInfo"

    const-string v2, "problem persisting pending stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->recoverFromWtf()V

    goto :goto_0
.end method

.method public getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    .locals 8

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    move-object v6, v0

    .line 139
    .local v6, "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :goto_0
    if-nez v6, :cond_4

    .line 140
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "NetworkStatsRecorderWithProcInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrLoadCompleteLocked() reading from disk for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mCookie:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mBucketDuration:J

    invoke-direct {v1, v2, v3}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;-><init>(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v6    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    .local v1, "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V

    .line 148
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_1

    .line 149
    const-string v0, "pid-complete-before-record"

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->logoutData(Ljava/lang/String;)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->recordCollection(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;)V

    .line 154
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_2

    .line 155
    const-string v0, "pid-complete-after-record"

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->logoutData(Ljava/lang/String;)V

    .line 158
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    .end local v1    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :goto_1
    return-object v1

    .line 138
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 159
    .restart local v6    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :catch_0
    move-exception v7

    move-object v1, v6

    .line 160
    .end local v6    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    .local v7, "e":Ljava/io/IOException;
    :goto_2
    const-string v0, "NetworkStatsRecorderWithProcInfo"

    const-string v2, "problem completely reading network stats"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->recoverFromWtf()V

    goto :goto_1

    .line 164
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v6    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :cond_4
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v0, :cond_5

    .line 165
    const-string v0, "NetworkStatsRecorderWithProcInfo"

    const-string v2, "getOrLoadCompleteLocked() return complete directly."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v1, v6

    .local v1, "complete":Ljava/lang/Object;
    goto :goto_1

    .line 159
    .end local v6    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    .local v1, "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method public getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public importLegacyNetworkLocked(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 444
    new-instance v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mBucketDuration:J

    invoke-direct {v0, v6, v7}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;-><init>(J)V

    .line 445
    .local v0, "collection":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->readLegacyNetwork(Ljava/io/File;)V

    .line 447
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->getStartMillis()J

    move-result-wide v4

    .line 448
    .local v4, "startMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->getEndMillis()J

    move-result-wide v2

    .line 450
    .local v2, "endMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v6, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;)V

    invoke-virtual {v1, v6, v4, v5}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 454
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 456
    :cond_0
    return-void
.end method

.method public importLegacyUidLocked(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1}, Lcom/android/internal/util/FileRotator;->deleteAll()V

    .line 462
    new-instance v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mBucketDuration:J

    invoke-direct {v0, v6, v7}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;-><init>(J)V

    .line 463
    .local v0, "collection":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    iget-boolean v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mOnlyTags:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->readLegacyUid(Ljava/io/File;Z)V

    .line 465
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->getStartMillis()J

    move-result-wide v4

    .line 466
    .local v4, "startMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->getEndMillis()J

    move-result-wide v2

    .line 468
    .local v2, "endMillis":J
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v6, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;-><init>(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;)V

    invoke-virtual {v1, v6, v4, v5}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 472
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    .line 474
    :cond_0
    return-void
.end method

.method public maybePersistLocked(J)V
    .locals 5
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 307
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->getTotalBytes()J

    move-result-wide v0

    .line 308
    .local v0, "pendingBytes":J
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPersistThresholdBytes:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->forcePersistLocked(J)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V

    goto :goto_0
.end method

.method public recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V
    .locals 17
    .param p1, "snapshot"    # Landroid/net/NetworkStats;
    .param p3, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, "ifaceIdent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v15

    .line 181
    .local v15, "unknownIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 182
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_0

    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordSnapshotLocked."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":snapshot is null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_2

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 188
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordSnapshotLocked."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":snapshot size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    if-nez v3, :cond_4

    .line 196
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 197
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordSnapshotLocked."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":first snapshot is bootstrap and don\'t record."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_0

    .line 200
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordSnapshotLocked."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " first snapshot is bootstrap, content is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    const-string v5, "first-snapshot"

    invoke-virtual {v3, v5}, Landroid/net/NetworkStats;->logoutData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :cond_3
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordSnapshotLocked."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":snapshot is empty."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 206
    :cond_4
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_5

    .line 207
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordSnapshotLocked."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mLastSnapshot is bellow:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    const-string v5, "pid-lastSnapshot"

    invoke-virtual {v3, v5}, Landroid/net/NetworkStats;->logoutData(Ljava/lang/String;)V

    .line 211
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    move-object v2, v3

    .line 212
    .local v2, "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mCookie:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3, v5, v6}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v13

    .line 215
    .local v13, "delta":Landroid/net/NetworkStats;
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_6

    .line 216
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordSnapshotLocked."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " delta is bellow:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-delta"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/net/NetworkStats;->logoutData(Ljava/lang/String;)V

    .line 220
    :cond_6
    move-wide/from16 v10, p3

    .line 221
    .local v10, "end":J
    invoke-virtual {v13}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v6

    sub-long v8, v10, v6

    .line 223
    .local v8, "start":J
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_7

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    const-string v5, "mPending-01"

    invoke-virtual {v3, v5}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->logoutData(Ljava/lang/String;)V

    .line 225
    const-string v5, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordSnapshotLocked."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " mSinceBoot is null ? :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    if-nez v3, :cond_c

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_7
    const/4 v12, 0x0

    .line 229
    .local v12, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    invoke-virtual {v13}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v14, v3, :cond_16

    .line 230
    invoke-virtual {v13, v14, v12}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v12

    .line 231
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_8

    .line 232
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordSnapshotLocked:process entry["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_8
    iget-object v3, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkIdentitySet;

    .line 235
    .local v4, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v4, :cond_d

    .line 236
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_9

    .line 237
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordSnapshotLocked:entry["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] has unknownIfaces, ignore."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_9
    iget-object v3, v12, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_a
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 211
    .end local v2    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    .end local v4    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v8    # "start":J
    .end local v10    # "end":J
    .end local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v13    # "delta":Landroid/net/NetworkStats;
    .end local v14    # "i":I
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 225
    .restart local v2    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    .restart local v8    # "start":J
    .restart local v10    # "end":J
    .restart local v13    # "delta":Landroid/net/NetworkStats;
    :cond_c
    const/4 v3, 0x0

    goto :goto_3

    .line 244
    .restart local v4    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .restart local v12    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v14    # "i":I
    :cond_d
    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 245
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_a

    .line 246
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordSnapshotLocked:entry["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is empty, ignore."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 252
    :cond_e
    iget v3, v12, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v3, :cond_14

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mOnlyTags:Z

    if-eq v3, v5, :cond_15

    .line 253
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_f

    .line 254
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordData to mPending-01, entry["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    iget v5, v12, Landroid/net/NetworkStats$Entry;->uid:I

    iget v6, v12, Landroid/net/NetworkStats$Entry;->set:I

    iget v7, v12, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    .line 257
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_10

    .line 258
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordData to mPending-02, entry["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    if-eqz v3, :cond_12

    .line 263
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_11

    .line 264
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordData to mSinceBoot-01, entry["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    iget v5, v12, Landroid/net/NetworkStats$Entry;->uid:I

    iget v6, v12, Landroid/net/NetworkStats$Entry;->set:I

    iget v7, v12, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    .line 267
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_12

    .line 268
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordData to mSinceBoot-02, entry["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_12
    if-eqz v2, :cond_a

    .line 274
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_13

    .line 275
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordData to complete-01, entry["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_13
    iget v5, v12, Landroid/net/NetworkStats$Entry;->uid:I

    iget v6, v12, Landroid/net/NetworkStats$Entry;->set:I

    iget v7, v12, Landroid/net/NetworkStats$Entry;->tag:I

    move-object v3, v2

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V

    .line 278
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_a

    .line 279
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordData to complete-02, entry["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 252
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 283
    :cond_15
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_a

    .line 284
    const-string v3, "NetworkStatsRecorderWithProcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordSnapshotLocked:entry["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] tag not suit.entry.tag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mOnlyTags"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 289
    .end local v4    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    :cond_16
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOG_NET_STATS:Z

    if-eqz v3, :cond_17

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    const-string v5, "mPending-02"

    invoke-virtual {v3, v5}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->logoutData(Ljava/lang/String;)V

    .line 293
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mActiveIfacesHasInit:Z

    if-eqz v3, :cond_0

    .line 294
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    goto/16 :goto_0
.end method

.method public removeUidsLocked([I)V
    .locals 6
    .param p1, "uids"    # [I

    .prologue
    .line 342
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v3, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mBucketDuration:J

    invoke-direct {v3, v4, v5, p1}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;-><init>(J[I)V

    invoke-virtual {v2, v3}, Lcom/android/internal/util/FileRotator;->rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 352
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->removeUids([I)V

    .line 353
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->removeUids([I)V

    .line 356
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v2, p1}, Landroid/net/NetworkStats;->withoutUids([I)Landroid/net/NetworkStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    move-object v0, v2

    .line 361
    .local v0, "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :goto_1
    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->removeUids([I)V

    .line 364
    :cond_1
    return-void

    .line 343
    .end local v0    # "complete":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem removing UIDs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->recoverFromWtf()V

    goto :goto_0

    .line 346
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "NetworkStatsRecorderWithProcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem removing UIDs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->recoverFromWtf()V

    goto :goto_0

    .line 360
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public resetLastSnapshot(Landroid/net/NetworkStats;)V
    .locals 0
    .param p1, "snapshotAfterReset"    # Landroid/net/NetworkStats;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 125
    return-void
.end method

.method public resetLocked()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 118
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPending:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->reset()V

    .line 119
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->reset()V

    .line 120
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 121
    return-void
.end method

.method public setActiveIfacesInitState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mActiveIfacesHasInit:Z

    .line 368
    return-void
.end method

.method public setPersistThreshold(J)V
    .locals 7
    .param p1, "thresholdBytes"    # J

    .prologue
    .line 112
    const-wide/16 v2, 0x400

    const-wide/32 v4, 0x6400000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;->mPersistThresholdBytes:J

    .line 114
    return-void
.end method
