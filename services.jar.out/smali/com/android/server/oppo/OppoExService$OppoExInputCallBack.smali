.class Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;
.super Ljava/lang/Object;
.source "OppoExService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oppo/OppoExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppoExInputCallBack"
.end annotation


# instance fields
.field private mCallBack:Landroid/os/IOppoExInputCallBack;

.field final synthetic this$0:Lcom/android/server/oppo/OppoExService;


# direct methods
.method constructor <init>(Lcom/android/server/oppo/OppoExService;Landroid/os/IOppoExInputCallBack;)V
    .locals 1
    .param p2, "callBack"    # Landroid/os/IOppoExInputCallBack;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->this$0:Lcom/android/server/oppo/OppoExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->mCallBack:Landroid/os/IOppoExInputCallBack;

    .line 206
    iput-object p2, p0, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->mCallBack:Landroid/os/IOppoExInputCallBack;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;)Landroid/os/IOppoExInputCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->mCallBack:Landroid/os/IOppoExInputCallBack;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->this$0:Lcom/android/server/oppo/OppoExService;

    # getter for: Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/oppo/OppoExService;->access$200(Lcom/android/server/oppo/OppoExService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 211
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->mCallBack:Landroid/os/IOppoExInputCallBack;

    .line 212
    iget-object v0, p0, Lcom/android/server/oppo/OppoExService$OppoExInputCallBack;->this$0:Lcom/android/server/oppo/OppoExService;

    # getter for: Lcom/android/server/oppo/OppoExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/oppo/OppoExService;->access$200(Lcom/android/server/oppo/OppoExService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 213
    monitor-exit v1

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
