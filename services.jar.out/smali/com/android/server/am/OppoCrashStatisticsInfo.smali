.class public Lcom/android/server/am/OppoCrashStatisticsInfo;
.super Ljava/lang/Object;
.source "OppoCrashStatisticsInfo.java"


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "OppoCrashStatisticsInfo"


# instance fields
.field protected mCurStartTime:J

.field protected mFirstCrashTime:J

.field protected mPkgName:Ljava/lang/String;

.field protected mProcessName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OppoCrashStatisticsInfo;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "firstTime"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mProcessName:Ljava/lang/String;

    .line 42
    iput-wide p2, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mFirstCrashTime:J

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "firstTime"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mProcessName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mPkgName:Ljava/lang/String;

    .line 37
    iput-wide p3, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mFirstCrashTime:J

    .line 38
    return-void
.end method


# virtual methods
.method public getCurStartTime()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mCurStartTime:J

    return-wide v0
.end method

.method public getFirstStartTime()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mFirstCrashTime:J

    return-wide v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public setCurStartTime(J)V
    .locals 1
    .param p1, "curStartTime"    # J

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mCurStartTime:J

    .line 75
    return-void
.end method

.method public setFirstStartTime(J)V
    .locals 1
    .param p1, "firstStartTime"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mFirstCrashTime:J

    .line 67
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mPkgName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mProcessName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoCrashStatisticsInfo { mProcessName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mFirstCrashTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OppoCrashStatisticsInfo;->mFirstCrashTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
