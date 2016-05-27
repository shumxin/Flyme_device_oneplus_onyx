.class public Lcom/oppo/kinect/GestureManager;
.super Ljava/lang/Object;
.source "GestureManager.java"


# static fields
.field public static final ACTION_BRINGTOEAR:I = 0x4

.field public static final ACTION_LEAN:I = 0x2

.field public static final ACTION_OVERLAP:I = 0x1

.field public static final ACTION_PICKUP:I = 0x5

.field public static final ACTION_REMIND:I = 0x6

.field public static final ACTION_STATIC:I = 0x3

.field public static final ACTION_TURN:I = 0x0

.field public static final BroadCastName:[Ljava/lang/String;

.field private static final MSG_CONNECTSERVICE:I = 0x0

.field private static final MSG_DISABLE:I = 0x2

.field private static final MSG_ENABLE:I = 0x1

.field private static final MSG_SETPARAMETER:I = 0x3

.field private static final MSG_UNBIND:I = 0x4

.field private static mGestureManager:Lcom/oppo/kinect/GestureManager;


# instance fields
.field private Mutex:Ljava/lang/Integer;

.field private connection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mService:Lcom/oppo/kinect/IOppoKinectService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.oppo.kinect.ACTION_TURN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.oppo.kinect.ACTION_OVERLAP"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.oppo.kinect.ACTION_LEAN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.oppo.kinect.ACTION_STATIC"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.oppo.kinect.ACTION_BRINGTOEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.oppo.kinect.ACTION_PICKUP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.oppo.kinect.ACTION_REMIND"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/kinect/GestureManager;->BroadCastName:[Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/kinect/GestureManager;->mGestureManager:Lcom/oppo/kinect/GestureManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/oppo/kinect/GestureManager;->mContext:Landroid/content/Context;

    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;

    .line 46
    iput-object v2, p0, Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;

    .line 47
    iput-object v2, p0, Lcom/oppo/kinect/GestureManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 48
    iput-object v2, p0, Lcom/oppo/kinect/GestureManager;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/oppo/kinect/GestureManager$1;

    invoke-direct {v0, p0}, Lcom/oppo/kinect/GestureManager$1;-><init>(Lcom/oppo/kinect/GestureManager;)V

    iput-object v0, p0, Lcom/oppo/kinect/GestureManager;->connection:Landroid/content/ServiceConnection;

    .line 73
    iput-object p1, p0, Lcom/oppo/kinect/GestureManager;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GestureManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/kinect/GestureManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 75
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 76
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/kinect/GestureManager;->initHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/kinect/GestureManager;->mHandler:Landroid/os/Handler;

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v3, v2}, Lcom/oppo/kinect/GestureManager;->sendMsg(IIILjava/lang/Object;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/kinect/GestureManager;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/kinect/GestureManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager;->Mutex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/IOppoKinectService;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/kinect/GestureManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oppo/kinect/GestureManager;Lcom/oppo/kinect/IOppoKinectService;)Lcom/oppo/kinect/IOppoKinectService;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/kinect/GestureManager;
    .param p1, "x1"    # Lcom/oppo/kinect/IOppoKinectService;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/oppo/kinect/GestureManager;->mService:Lcom/oppo/kinect/IOppoKinectService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oppo/kinect/GestureManager;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/kinect/GestureManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager;->connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/kinect/GestureManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/kinect/GestureManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oppo/kinect/GestureManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oppo/kinect/GestureManager;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/kinect/GestureManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/oppo/kinect/GestureManager;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$402(Lcom/oppo/kinect/GestureManager;)Lcom/oppo/kinect/GestureManager;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/kinect/GestureManager;

    .prologue
    .line 16
    sput-object p0, Lcom/oppo/kinect/GestureManager;->mGestureManager:Lcom/oppo/kinect/GestureManager;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/oppo/kinect/GestureManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const-class v1, Lcom/oppo/kinect/GestureManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oppo/kinect/GestureManager;->mGestureManager:Lcom/oppo/kinect/GestureManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/oppo/kinect/GestureManager;

    invoke-direct {v0, p0}, Lcom/oppo/kinect/GestureManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oppo/kinect/GestureManager;->mGestureManager:Lcom/oppo/kinect/GestureManager;

    .line 84
    :cond_0
    sget-object v0, Lcom/oppo/kinect/GestureManager;->mGestureManager:Lcom/oppo/kinect/GestureManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 122
    new-instance v0, Lcom/oppo/kinect/GestureManager$2;

    invoke-direct {v0, p0, p1}, Lcom/oppo/kinect/GestureManager$2;-><init>(Lcom/oppo/kinect/GestureManager;Landroid/os/Looper;)V

    .line 220
    .local v0, "handler":Landroid/os/Handler;
    return-object v0
.end method


# virtual methods
.method public disable(Lcom/oppo/kinect/GestureStateCallback;I)V
    .locals 2
    .param p1, "cb"    # Lcom/oppo/kinect/GestureStateCallback;
    .param p2, "gesture"    # I

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/oppo/kinect/GestureManager;->sendMsg(IIILjava/lang/Object;)V

    .line 104
    :cond_0
    return-void
.end method

.method public enable(Lcom/oppo/kinect/GestureStateCallback;I)V
    .locals 2
    .param p1, "cb"    # Lcom/oppo/kinect/GestureStateCallback;
    .param p2, "gesture"    # I

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/oppo/kinect/GestureManager;->sendMsg(IIILjava/lang/Object;)V

    .line 98
    :cond_0
    return-void
.end method

.method public getBroadcastName(I)Ljava/lang/String;
    .locals 1
    .param p1, "gesture"    # I

    .prologue
    .line 88
    if-ltz p1, :cond_0

    sget-object v0, Lcom/oppo/kinect/GestureManager;->BroadCastName:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 89
    sget-object v0, Lcom/oppo/kinect/GestureManager;->BroadCastName:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMsg(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/oppo/kinect/GestureManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 117
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 118
    return-void
.end method

.method public setparameter(I[F)V
    .locals 2
    .param p1, "gesture"    # I
    .param p2, "parameter"    # [F

    .prologue
    .line 112
    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/oppo/kinect/GestureManager;->sendMsg(IIILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method public unbindService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 108
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/oppo/kinect/GestureManager;->sendMsg(IIILjava/lang/Object;)V

    .line 109
    return-void
.end method
