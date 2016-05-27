.class Landroid/net/NetworkStats$DataComparator;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataComparator"
.end annotation


# instance fields
.field private mProcessRootUid:Z

.field private mTotalSize:I

.field final synthetic this$0:Landroid/net/NetworkStats;


# direct methods
.method public constructor <init>(Landroid/net/NetworkStats;ZI)V
    .locals 1
    .param p2, "processRootUid"    # Z
    .param p3, "totalSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 1236
    iput-object p1, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1233
    iput-boolean v0, p0, Landroid/net/NetworkStats$DataComparator;->mProcessRootUid:Z

    .line 1234
    iput v0, p0, Landroid/net/NetworkStats$DataComparator;->mTotalSize:I

    .line 1237
    iput-boolean p2, p0, Landroid/net/NetworkStats$DataComparator;->mProcessRootUid:Z

    .line 1238
    iput p3, p0, Landroid/net/NetworkStats$DataComparator;->mTotalSize:I

    .line 1239
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12
    .param p1, "first"    # Ljava/lang/Object;
    .param p2, "second"    # Ljava/lang/Object;

    .prologue
    .line 1246
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "first":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1247
    .local v0, "firstIndex":I
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "second":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1248
    .local v4, "secondIndex":I
    iget v8, p0, Landroid/net/NetworkStats$DataComparator;->mTotalSize:I

    if-ge v0, v8, :cond_0

    iget v8, p0, Landroid/net/NetworkStats$DataComparator;->mTotalSize:I

    if-lt v4, v8, :cond_1

    .line 1249
    :cond_0
    const-string v8, "DataComparator"

    const-string v9, "compare, index out of index!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const/4 v8, 0x1

    .line 1306
    :goto_0
    return v8

    .line 1254
    :cond_1
    if-ltz v0, :cond_2

    if-gez v4, :cond_3

    .line 1257
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 1260
    :cond_3
    const-wide/16 v2, 0x0

    .line 1261
    .local v2, "firstTotal":J
    const-wide/16 v6, 0x0

    .line 1262
    .local v6, "secondTotal":J
    iget-object v8, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    # getter for: Landroid/net/NetworkStats;->uid:[I
    invoke-static {v8}, Landroid/net/NetworkStats;->access$000(Landroid/net/NetworkStats;)[I

    move-result-object v8

    aget v1, v8, v0

    .line 1263
    .local v1, "firstUid":I
    iget-object v8, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    # getter for: Landroid/net/NetworkStats;->uid:[I
    invoke-static {v8}, Landroid/net/NetworkStats;->access$000(Landroid/net/NetworkStats;)[I

    move-result-object v8

    aget v5, v8, v4

    .line 1264
    .local v5, "secondUid":I
    iget-boolean v8, p0, Landroid/net/NetworkStats$DataComparator;->mProcessRootUid:Z

    if-eqz v8, :cond_9

    .line 1265
    if-nez v1, :cond_6

    if-nez v5, :cond_6

    .line 1266
    iget-object v8, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    # getter for: Landroid/net/NetworkStats;->rxBytes:[J
    invoke-static {v8}, Landroid/net/NetworkStats;->access$100(Landroid/net/NetworkStats;)[J

    move-result-object v8

    aget-wide v8, v8, v0

    iget-object v10, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    # getter for: Landroid/net/NetworkStats;->txBytes:[J
    invoke-static {v10}, Landroid/net/NetworkStats;->access$200(Landroid/net/NetworkStats;)[J

    move-result-object v10

    aget-wide v10, v10, v0

    add-long v2, v8, v10

    .line 1267
    iget-object v8, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    # getter for: Landroid/net/NetworkStats;->rxBytes:[J
    invoke-static {v8}, Landroid/net/NetworkStats;->access$100(Landroid/net/NetworkStats;)[J

    move-result-object v8

    aget-wide v8, v8, v4

    iget-object v10, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    # getter for: Landroid/net/NetworkStats;->txBytes:[J
    invoke-static {v10}, Landroid/net/NetworkStats;->access$200(Landroid/net/NetworkStats;)[J

    move-result-object v10

    aget-wide v10, v10, v4

    add-long v6, v8, v10

    .line 1269
    cmp-long v8, v2, v6

    if-lez v8, :cond_4

    .line 1270
    const/4 v8, -0x1

    goto :goto_0

    .line 1271
    :cond_4
    cmp-long v8, v2, v6

    if-nez v8, :cond_5

    .line 1272
    const/4 v8, 0x0

    goto :goto_0

    .line 1274
    :cond_5
    const/4 v8, 0x1

    goto :goto_0

    .line 1276
    :cond_6
    if-nez v1, :cond_7

    if-eqz v5, :cond_7

    .line 1278
    const/4 v8, -0x1

    goto :goto_0

    .line 1279
    :cond_7
    if-eqz v1, :cond_8

    if-nez v5, :cond_8

    .line 1281
    const/4 v8, 0x1

    goto :goto_0

    .line 1284
    :cond_8
    const/4 v8, 0x0

    goto :goto_0

    .line 1287
    :cond_9
    if-eqz v1, :cond_c

    if-eqz v5, :cond_c

    .line 1288
    iget-object v8, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    # getter for: Landroid/net/NetworkStats;->rxBytes:[J
    invoke-static {v8}, Landroid/net/NetworkStats;->access$100(Landroid/net/NetworkStats;)[J

    move-result-object v8

    aget-wide v8, v8, v0

    iget-object v10, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    # getter for: Landroid/net/NetworkStats;->txBytes:[J
    invoke-static {v10}, Landroid/net/NetworkStats;->access$200(Landroid/net/NetworkStats;)[J

    move-result-object v10

    aget-wide v10, v10, v0

    add-long v2, v8, v10

    .line 1289
    iget-object v8, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    # getter for: Landroid/net/NetworkStats;->rxBytes:[J
    invoke-static {v8}, Landroid/net/NetworkStats;->access$100(Landroid/net/NetworkStats;)[J

    move-result-object v8

    aget-wide v8, v8, v4

    iget-object v10, p0, Landroid/net/NetworkStats$DataComparator;->this$0:Landroid/net/NetworkStats;

    # getter for: Landroid/net/NetworkStats;->txBytes:[J
    invoke-static {v10}, Landroid/net/NetworkStats;->access$200(Landroid/net/NetworkStats;)[J

    move-result-object v10

    aget-wide v10, v10, v4

    add-long v6, v8, v10

    .line 1291
    cmp-long v8, v2, v6

    if-lez v8, :cond_a

    .line 1292
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 1293
    :cond_a
    cmp-long v8, v2, v6

    if-nez v8, :cond_b

    .line 1294
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1296
    :cond_b
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1298
    :cond_c
    if-eqz v1, :cond_d

    if-nez v5, :cond_d

    .line 1300
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 1301
    :cond_d
    if-nez v1, :cond_e

    if-eqz v5, :cond_e

    .line 1303
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1306
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public isProcessRootUid()Z
    .locals 1

    .prologue
    .line 1242
    iget-boolean v0, p0, Landroid/net/NetworkStats$DataComparator;->mProcessRootUid:Z

    return v0
.end method
