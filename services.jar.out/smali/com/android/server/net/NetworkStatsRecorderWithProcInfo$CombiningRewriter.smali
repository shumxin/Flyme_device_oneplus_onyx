.class Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;
.super Ljava/lang/Object;
.source "NetworkStatsRecorderWithProcInfo.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsRecorderWithProcInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombiningRewriter"
.end annotation


# instance fields
.field private final mCollection:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;)V
    .locals 1
    .param p1, "collection"    # Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const-string v0, "missing NetworkStatsCollectionWithProcInfo"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    .line 380
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->read(Ljava/io/InputStream;)V

    .line 390
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public shouldWrite()Z
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

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
    .line 399
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->write(Ljava/io/DataOutputStream;)V

    .line 400
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderWithProcInfo$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionWithProcInfo;->reset()V

    .line 401
    return-void
.end method
