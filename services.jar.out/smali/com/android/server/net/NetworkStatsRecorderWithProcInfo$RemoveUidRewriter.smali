.class public Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;
.super Ljava/lang/Object;
.source "NetworkStatsRecorderWithProcInfo.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveUidRewriter"
.end annotation


# instance fields
.field private final mTemp:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

.field private final mUids:[I


# direct methods
.method public constructor <init>(J[I)V
    .locals 1
    .param p1, "bucketDuration"    # J
    .param p3, "uids"    # [I

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    .line 414
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;->mUids:[I

    .line 415
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->read(Ljava/io/InputStream;)V

    .line 425
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->clearDirty()V

    .line 426
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;->mUids:[I

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->removeUids([I)V

    .line 427
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->reset()V

    .line 420
    return-void
.end method

.method public shouldWrite()Z
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->isDirty()Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$RemoveUidRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->write(Ljava/io/DataOutputStream;)V

    .line 437
    return-void
.end method
