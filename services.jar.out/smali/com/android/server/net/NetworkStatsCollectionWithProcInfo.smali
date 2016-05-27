.class public Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;
.super Ljava/lang/Object;
.source "NetworkStatsCollectionWithProcInfo.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    }
.end annotation


# static fields
.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final TAG:Ljava/lang/String; = "NetworkStatsCollectionWithProcInfo"

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3

.field private static final VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final mBucketDuration:J

.field private mDirty:Z

.field private mEndMillis:J

.field private mStartMillis:J

.field private mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "bucketDuration"    # J

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    .line 89
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mBucketDuration:J

    .line 90
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->reset()V

    .line 91
    return-void
.end method

.method private estimateBuckets()I
    .locals 4

    .prologue
    .line 506
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mEndMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb43e9400L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mBucketDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;IIILjava/lang/String;)Landroid/net/NetworkStatsHistory;
    .locals 8
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "procName"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;-><init>(Lcom/android/server/net/NetworkIdentitySet;IIILjava/lang/String;)V

    .line 258
    .local v0, "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    .line 261
    .local v6, "existing":Landroid/net/NetworkStatsHistory;
    const/4 v7, 0x0

    .line 262
    .local v7, "updated":Landroid/net/NetworkStatsHistory;
    if-nez v6, :cond_1

    .line 263
    new-instance v7, Landroid/net/NetworkStatsHistory;

    .end local v7    # "updated":Landroid/net/NetworkStatsHistory;
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mBucketDuration:J

    const/16 v1, 0xa

    invoke-direct {v7, v2, v3, v1}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 268
    .restart local v7    # "updated":Landroid/net/NetworkStatsHistory;
    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    .line 269
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .end local v7    # "updated":Landroid/net/NetworkStatsHistory;
    :goto_1
    return-object v7

    .line 264
    .restart local v7    # "updated":Landroid/net/NetworkStatsHistory;
    :cond_1
    invoke-virtual {v6}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mBucketDuration:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 265
    new-instance v7, Landroid/net/NetworkStatsHistory;

    .end local v7    # "updated":Landroid/net/NetworkStatsHistory;
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mBucketDuration:J

    invoke-direct {v7, v6, v2, v3}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    .restart local v7    # "updated":Landroid/net/NetworkStatsHistory;
    goto :goto_0

    :cond_2
    move-object v7, v6

    .line 272
    goto :goto_1
.end method

.method private noteRecordedHistory(JJJ)V
    .locals 3
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "totalBytes"    # J

    .prologue
    .line 499
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    .line 500
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mEndMillis:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mEndMillis:J

    .line 501
    :cond_1
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mTotalBytes:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mTotalBytes:J

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mDirty:Z

    .line 503
    return-void
.end method

.method private static readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordHistory(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;Landroid/net/NetworkStatsHistory;)V
    .locals 8
    .param p1, "key"    # Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    .param p2, "history"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 232
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->noteRecordedHistory(JJJ)V

    .line 235
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 236
    .local v0, "target":Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_1

    .line 237
    new-instance v0, Landroid/net/NetworkStatsHistory;

    .end local v0    # "target":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    .line 238
    .restart local v0    # "target":Landroid/net/NetworkStatsHistory;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .locals 3
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "identSet"    # Lcom/android/server/net/NetworkIdentitySet;

    .prologue
    .line 562
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 563
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p0, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    const/4 v2, 0x1

    .line 567
    .end local v1    # "ident":Landroid/net/NetworkIdentity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    if-eqz p1, :cond_0

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 279
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearDirty()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mDirty:Z

    .line 131
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 511
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 512
    .local v3, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;>;"
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 513
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 515
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;

    .line 516
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    const-string v4, "ident="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 517
    const-string v4, " uid="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->uid:I

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 518
    const-string v4, " set="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->set:I

    invoke-static {v4}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 519
    const-string v4, " tag="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->tag:I

    invoke-static {v4}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 520
    const-string v4, " procName="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->procName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 522
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 523
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 524
    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 525
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_0

    .line 527
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v2    # "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    :cond_0
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 532
    return-void
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mEndMillis:J

    return-wide v0
.end method

.method public getFirstAtomicBucketMillis()J
    .locals 4

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 110
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 113
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mBucketDuration:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;IIIIJJLjava/lang/String;)Landroid/net/NetworkStatsHistory;
    .locals 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J
    .param p10, "procName"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v2, Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mBucketDuration:J

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->estimateBuckets()I

    move-result v6

    move/from16 v0, p5

    invoke-direct {v2, v4, v5, v6, v0}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 154
    .local v2, "combined":Landroid/net/NetworkStatsHistory;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v8, v4, :cond_3

    .line 155
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;

    .line 156
    .local v9, "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    const/4 v4, -0x1

    if-eq p3, v4, :cond_0

    iget v4, v9, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->set:I

    if-ne v4, p3, :cond_2

    :cond_0
    const/4 v10, 0x1

    .line 157
    .local v10, "setMatches":Z
    :goto_1
    iget v4, v9, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->uid:I

    if-ne v4, p2, :cond_1

    if-eqz v10, :cond_1

    iget v4, v9, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->tag:I

    move/from16 v0, p4

    if-ne v4, v0, :cond_1

    iget-object v4, v9, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v4}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v9, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->procName:Ljava/lang/String;

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .local v3, "value":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    .line 161
    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 154
    .end local v3    # "value":Landroid/net/NetworkStatsHistory;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 156
    .end local v10    # "setMatches":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 164
    .end local v9    # "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    :cond_3
    return-object v2
.end method

.method public getHistory(Landroid/net/NetworkTemplate;IIIILjava/lang/String;)Landroid/net/NetworkStatsHistory;
    .locals 11
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "procName"    # Ljava/lang/String;

    .prologue
    .line 143
    const-wide/high16 v6, -0x8000000000000000L

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->getHistory(Landroid/net/NetworkTemplate;IIIIJJLjava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    return-wide v0
.end method

.method public getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 174
    .local v6, "now":J
    new-instance v11, Landroid/net/NetworkStats;

    sub-long v2, p4, p2

    const/16 v4, 0x18

    invoke-direct {v11, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 175
    .local v11, "stats":Landroid/net/NetworkStats;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/net/NetworkStats;->setContainExtendDataFlag(Z)V

    .line 177
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 178
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    .line 181
    .local v8, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    cmp-long v2, p2, p4

    if-nez v2, :cond_1

    .line 208
    :cond_0
    return-object v11

    .line 183
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v9, v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;

    .line 185
    .local v10, "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    iget-object v2, v10, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .local v1, "value":Landroid/net/NetworkStatsHistory;
    move-wide v2, p2

    move-wide/from16 v4, p4

    .line 187
    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 189
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 190
    iget v2, v10, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->uid:I

    iput v2, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 191
    iget v2, v10, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->set:I

    iput v2, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 192
    iget v2, v10, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->tag:I

    iput v2, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 193
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 194
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 195
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 196
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 197
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 199
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->pid:J

    .line 200
    iget-object v2, v10, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->procName:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 202
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 203
    invoke-virtual {v11, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 183
    .end local v1    # "value":Landroid/net/NetworkStatsHistory;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mTotalBytes:J

    return-wide v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mDirty:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mEndMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logoutData(Ljava/lang/String;)V
    .locals 11
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 535
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 536
    .local v5, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;>;"
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 537
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 539
    const-string v8, "NetworkStatsCollectionWithProcInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] begin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v3, 0x0

    .line 542
    .local v3, "index":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;

    .line 543
    .local v4, "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .local v7, "strBuilder":Ljava/lang/StringBuilder;
    const-string v8, "line["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    add-int/lit8 v3, v3, 0x1

    .line 546
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "firstLine":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 549
    .local v1, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->toString()Ljava/lang/String;

    move-result-object v6

    .line 551
    .local v6, "secondLine":Ljava/lang/String;
    const-string v8, "NetworkStatsCollectionWithProcInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v8, "NetworkStatsCollectionWithProcInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "histroy = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    .end local v0    # "firstLine":Ljava/lang/String;
    .end local v1    # "history":Landroid/net/NetworkStatsHistory;
    .end local v4    # "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    .end local v6    # "secondLine":Ljava/lang/String;
    .end local v7    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    const-string v8, "NetworkStatsCollectionWithProcInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] end."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 17
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 301
    .local v11, "magic":I
    const v14, 0x414e4554

    if-eq v11, v14, :cond_0

    .line 302
    new-instance v14, Ljava/net/ProtocolException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "unexpected magic: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 305
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 306
    .local v13, "version":I
    packed-switch v13, :pswitch_data_0

    .line 331
    new-instance v14, Ljava/net/ProtocolException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "unexpected version: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 308
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 309
    .local v9, "identSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_4

    .line 310
    new-instance v2, Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 312
    .local v2, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 313
    .local v12, "size":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v12, :cond_3

    .line 314
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 315
    .local v3, "uid":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 316
    .local v4, "set":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 317
    .local v5, "tag":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "procName":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_2

    .line 319
    :cond_1
    const-string v14, "NetworkStatsCollectionWithProcInfo"

    const-string v15, "read data error, procName is empty!"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v6, "unKnown"

    .line 323
    :cond_2
    new-instance v1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;-><init>(Lcom/android/server/net/NetworkIdentitySet;IIILjava/lang/String;)V

    .line 324
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    new-instance v7, Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 325
    .local v7, "history":Landroid/net/NetworkStatsHistory;
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->recordHistory(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;Landroid/net/NetworkStatsHistory;)V

    .line 313
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 309
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    .end local v3    # "uid":I
    .end local v4    # "set":I
    .end local v5    # "tag":I
    .end local v6    # "procName":Ljava/lang/String;
    .end local v7    # "history":Landroid/net/NetworkStatsHistory;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 334
    .end local v2    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v10    # "j":I
    .end local v12    # "size":I
    :cond_4
    return-void

    .line 306
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->read(Ljava/io/DataInputStream;)V

    .line 296
    return-void
.end method

.method public readLegacyNetwork(Ljava/io/File;)V
    .locals 14
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 373
    new-instance v10, Landroid/util/AtomicFile;

    invoke-direct {v10, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 375
    .local v10, "inputFile":Landroid/util/AtomicFile;
    const/4 v8, 0x0

    .line 377
    .local v8, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 380
    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v9, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 381
    .local v11, "magic":I
    const v2, 0x414e4554

    if-eq v11, v2, :cond_0

    .line 382
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected magic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    .end local v11    # "magic":I
    :catch_0
    move-exception v2

    move-object v8, v9

    .line 406
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 408
    :goto_1
    return-void

    .line 385
    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "magic":I
    :cond_0
    :try_start_2
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 386
    .local v13, "version":I
    packed-switch v13, :pswitch_data_0

    .line 400
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    .end local v11    # "magic":I
    .end local v13    # "version":I
    :catchall_0
    move-exception v2

    move-object v8, v9

    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :goto_2
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 389
    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "magic":I
    .restart local v13    # "version":I
    :pswitch_0
    :try_start_3
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 390
    .local v12, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v12, :cond_1

    .line 391
    new-instance v1, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v1, v9}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 392
    .local v1, "ident":Lcom/android/server/net/NetworkIdentitySet;
    new-instance v6, Landroid/net/NetworkStatsHistory;

    invoke-direct {v6, v9}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 394
    .local v6, "history":Landroid/net/NetworkStatsHistory;
    new-instance v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v5, "unKnown"

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;-><init>(Lcom/android/server/net/NetworkIdentitySet;IIILjava/lang/String;)V

    .line 395
    .local v0, "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    invoke-direct {p0, v0, v6}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->recordHistory(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;Landroid/net/NetworkStatsHistory;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 406
    .end local v0    # "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    .end local v1    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v6    # "history":Landroid/net/NetworkStatsHistory;
    :cond_1
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v8, v9

    .line 407
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .line 406
    .end local v7    # "i":I
    .end local v11    # "magic":I
    .end local v12    # "size":I
    .end local v13    # "version":I
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 403
    :catch_1
    move-exception v2

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public readLegacyUid(Ljava/io/File;Z)V
    .locals 20
    .param p1, "file"    # Ljava/io/File;
    .param p2, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 412
    new-instance v13, Landroid/util/AtomicFile;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 414
    .local v13, "inputFile":Landroid/util/AtomicFile;
    const/4 v11, 0x0

    .line 416
    .local v11, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v12, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v13}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 419
    .end local v11    # "in":Ljava/io/DataInputStream;
    .local v12, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 420
    .local v15, "magic":I
    const v7, 0x414e4554

    if-eq v15, v7, :cond_0

    .line 421
    new-instance v7, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected magic: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    .end local v15    # "magic":I
    :catch_0
    move-exception v7

    move-object v11, v12

    .line 471
    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 473
    :goto_1
    return-void

    .line 424
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    .restart local v15    # "magic":I
    :cond_0
    :try_start_2
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 425
    .local v17, "version":I
    packed-switch v17, :pswitch_data_0

    .line 465
    new-instance v7, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected version: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 471
    .end local v15    # "magic":I
    .end local v17    # "version":I
    :catchall_0
    move-exception v7

    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :goto_2
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    .line 443
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    .restart local v15    # "magic":I
    .restart local v17    # "version":I
    :pswitch_0
    :try_start_3
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 444
    .local v10, "identSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v10, :cond_5

    .line 445
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v3, v12}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 447
    .local v3, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 448
    .local v16, "size":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    .line 449
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 450
    .local v4, "uid":I
    const/4 v7, 0x4

    move/from16 v0, v17

    if-lt v0, v7, :cond_2

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 452
    .local v5, "set":I
    :goto_5
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 454
    .local v6, "tag":I
    new-instance v2, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;

    const-string v7, "unKnown"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;-><init>(Lcom/android/server/net/NetworkIdentitySet;IIILjava/lang/String;)V

    .line 455
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    new-instance v8, Landroid/net/NetworkStatsHistory;

    invoke-direct {v8, v12}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 457
    .local v8, "history":Landroid/net/NetworkStatsHistory;
    if-nez v6, :cond_3

    const/4 v7, 0x1

    :goto_6
    move/from16 v0, p2

    if-eq v7, v0, :cond_1

    .line 458
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->recordHistory(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;Landroid/net/NetworkStatsHistory;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 448
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 450
    .end local v2    # "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    .end local v5    # "set":I
    .end local v6    # "tag":I
    .end local v8    # "history":Landroid/net/NetworkStatsHistory;
    :cond_2
    const/4 v5, 0x0

    goto :goto_5

    .line 457
    .restart local v2    # "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    .restart local v5    # "set":I
    .restart local v6    # "tag":I
    .restart local v8    # "history":Landroid/net/NetworkStatsHistory;
    :cond_3
    const/4 v7, 0x0

    goto :goto_6

    .line 444
    .end local v2    # "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    .end local v4    # "uid":I
    .end local v5    # "set":I
    .end local v6    # "tag":I
    .end local v8    # "history":Landroid/net/NetworkStatsHistory;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 471
    .end local v3    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v9    # "i":I
    .end local v10    # "identSize":I
    .end local v14    # "j":I
    .end local v16    # "size":I
    :cond_5
    :pswitch_1
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v11, v12

    .line 472
    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .line 471
    .end local v15    # "magic":I
    .end local v17    # "version":I
    :catchall_1
    move-exception v7

    goto :goto_2

    .line 468
    :catch_1
    move-exception v7

    goto :goto_0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public recordCollection(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;)V
    .locals 4
    .param p1, "another"    # Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    .prologue
    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 249
    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;

    .line 250
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    iget-object v3, p1, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 251
    .local v2, "value":Landroid/net/NetworkStatsHistory;
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->recordHistory(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;Landroid/net/NetworkStatsHistory;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    .end local v2    # "value":Landroid/net/NetworkStatsHistory;
    :cond_0
    return-void
.end method

.method public recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .locals 21
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 216
    move-object/from16 v0, p9

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->pid:J

    move-wide/from16 v18, v0

    .line 217
    .local v18, "pid":J
    move-object/from16 v0, p9

    iget-object v7, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 218
    .local v7, "comm":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 219
    :cond_0
    const-string v2, "NetworkStatsCollectionWithProcInfo"

    const-string v3, "recordData:comm illegal!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    :cond_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 223
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;IIILjava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v9

    .local v9, "history":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-object/from16 v14, p9

    .line 224
    invoke-virtual/range {v9 .. v14}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 225
    invoke-virtual {v9}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v12

    invoke-virtual {v9}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v14

    move-object/from16 v0, p9

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p9

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v16, v2, v4

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->noteRecordedHistory(JJJ)V

    goto :goto_0
.end method

.method public removeUids([I)V
    .locals 11
    .param p1, "uids"    # [I

    .prologue
    const/4 v3, 0x0

    .line 479
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 480
    .local v8, "knownKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 483
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;

    .line 484
    .local v7, "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    iget v0, v7, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->uid:I

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget v0, v7, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->tag:I

    if-nez v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkStatsHistory;

    .line 488
    .local v10, "uidHistory":Landroid/net/NetworkStatsHistory;
    iget-object v1, v7, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v2, -0x4

    iget-object v5, v7, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->procName:Ljava/lang/String;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;IIILjava/lang/String;)Landroid/net/NetworkStatsHistory;

    move-result-object v9

    .line 490
    .local v9, "removedHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v9, v10}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 492
    .end local v9    # "removedHistory":Landroid/net/NetworkStatsHistory;
    .end local v10    # "uidHistory":Landroid/net/NetworkStatsHistory;
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mDirty:Z

    goto :goto_0

    .line 496
    .end local v7    # "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 95
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStartMillis:J

    .line 96
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mEndMillis:J

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mTotalBytes:J

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mDirty:Z

    .line 99
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 339
    .local v6, "keysByIdent":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;>;>;"
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;

    .line 340
    .local v4, "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    iget-object v7, v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 341
    .local v5, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;>;"
    if-nez v5, :cond_0

    .line 342
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 343
    iget-object v7, v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 348
    .end local v4    # "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    .end local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;>;"
    :cond_1
    const v7, 0x414e4554

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 349
    const/16 v7, 0x10

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 351
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 352
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    .line 353
    .local v3, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 354
    .restart local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;>;"
    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 356
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 357
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;

    .line 358
    .restart local v4    # "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 359
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->uid:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 360
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->set:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 361
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->tag:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 362
    iget-object v7, v4, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;->procName:Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V

    goto :goto_1

    .line 368
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v4    # "key":Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;
    .end local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollectionWithProcInfo$KeyWithProcInfo;>;"
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 369
    return-void
.end method
