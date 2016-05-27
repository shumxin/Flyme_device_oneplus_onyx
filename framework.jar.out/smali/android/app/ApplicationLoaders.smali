.class Landroid/app/ApplicationLoaders;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# static fields
.field private static final gApplicationLoaders:Landroid/app/ApplicationLoaders;


# instance fields
.field private final mLoaders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Landroid/app/ApplicationLoaders;

    invoke-direct {v0}, Landroid/app/ApplicationLoaders;-><init>()V

    sput-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    return-void
.end method

.method public static getDefault()Landroid/app/ApplicationLoaders;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-object v0
.end method


# virtual methods
.method public getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 9
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "libPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v8, 0x1

    .line 44
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 47
    .local v0, "baseParent":Ljava/lang/ClassLoader;
    new-instance v2, Lorg/codeaurora/Performance;

    invoke-direct {v2}, Lorg/codeaurora/Performance;-><init>()V

    .line 49
    .local v2, "mPerf":Lorg/codeaurora/Performance;
    iget-object v5, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 50
    if-nez p3, :cond_0

    .line 51
    move-object p3, v0

    .line 59
    :cond_0
    if-ne p3, v0, :cond_3

    .line 60
    :try_start_0
    iget-object v4, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 61
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_1

    .line 62
    monitor-exit v5

    move-object v3, v1

    .line 95
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :goto_0
    return-object v3

    .line 65
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    const-wide/16 v6, 0x40

    invoke-static {v6, v7, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 73
    const/4 v3, 0x0

    .line 75
    .local v3, "pathClassloader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v4, "sys.boot_completed"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v8, v4, :cond_2

    .line 76
    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v8, 0x1e01

    aput v8, v6, v7

    invoke-virtual {v2, v4, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    .line 77
    new-instance v3, Ldalvik/system/PathClassLoader;

    .end local v3    # "pathClassloader":Ldalvik/system/PathClassLoader;
    invoke-direct {v3, p1, p2, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 80
    .restart local v3    # "pathClassloader":Ldalvik/system/PathClassLoader;
    invoke-virtual {v2}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 86
    :goto_1
    const-wide/16 v6, 0x40

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 88
    iget-object v4, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v5

    goto :goto_0

    .line 96
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v3    # "pathClassloader":Ldalvik/system/PathClassLoader;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 82
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    .restart local v3    # "pathClassloader":Ldalvik/system/PathClassLoader;
    :cond_2
    :try_start_1
    new-instance v3, Ldalvik/system/PathClassLoader;

    .end local v3    # "pathClassloader":Ldalvik/system/PathClassLoader;
    invoke-direct {v3, p1, p2, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .restart local v3    # "pathClassloader":Ldalvik/system/PathClassLoader;
    goto :goto_1

    .line 92
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v3    # "pathClassloader":Ldalvik/system/PathClassLoader;
    :cond_3
    const-wide/16 v6, 0x40

    invoke-static {v6, v7, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 93
    new-instance v3, Ldalvik/system/PathClassLoader;

    invoke-direct {v3, p1, p3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 94
    .restart local v3    # "pathClassloader":Ldalvik/system/PathClassLoader;
    const-wide/16 v6, 0x40

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 95
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
