.class Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLockTimeoutRecord"
.end annotation


# instance fields
.field isForcestopReported:Z

.field mPkgName:Ljava/lang/String;

.field mTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mUid:I

.field needWarning:Z

.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;IJLjava/lang/String;)V
    .locals 3
    .param p2, "uid"    # I
    .param p3, "hold"    # J
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    .line 4346
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->this$1:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->isForcestopReported:Z

    .line 4342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->needWarning:Z

    .line 4344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mTag:Ljava/util/HashMap;

    .line 4347
    iput p2, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mUid:I

    .line 4348
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mTag:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4349
    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;
    .param p1, "x1"    # Z

    .prologue
    .line 4339
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->getReportString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getReportString(Z)Ljava/lang/String;
    .locals 6
    .param p1, "withIntervalScreenOff"    # Z

    .prologue
    .line 4386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4387
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "[ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4390
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mTag:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4391
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v3, "{ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " }    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4397
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    if-eqz p1, :cond_1

    .line 4398
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->this$1:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    # getter for: Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->intervalScreenoff:J
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->access$7700(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4402
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getWarningString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 4361
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->needWarning:Z

    if-nez v4, :cond_0

    .line 4362
    const/4 v4, 0x0

    .line 4382
    :goto_0
    return-object v4

    .line 4365
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4366
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mPkgName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 4367
    const-string v4, "unknown app (uid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4368
    const-string v4, "), has hold "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4375
    :goto_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mTag:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4376
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v4, "wakelock ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4377
    const-string v4, ") for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4378
    const-string v4, "s, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4370
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->this$1:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mPkgName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mUid:I

    # invokes: Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getAppLabel(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v4, v5, v6}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->access$7600(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4371
    .local v0, "appLable":Ljava/lang/String;
    const-string v4, "pkgName("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4372
    const-string v4, "), applabel("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4373
    const-string v4, "), has hold "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4380
    .end local v0    # "appLable":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v4, "when screen off!!!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4381
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->needWarning:Z

    .line 4382
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public updatePkgNameNotLocked()V
    .locals 2

    .prologue
    .line 4357
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->this$1:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mUid:I

    # invokes: Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->getPkgNameForUid(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->access$7500(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mPkgName:Ljava/lang/String;

    .line 4358
    return-void
.end method

.method public updateTagLocked(JLjava/lang/String;)V
    .locals 3
    .param p1, "hold"    # J
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 4352
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->mTag:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WakeLockTimeoutRecord;->needWarning:Z

    .line 4354
    return-void
.end method
