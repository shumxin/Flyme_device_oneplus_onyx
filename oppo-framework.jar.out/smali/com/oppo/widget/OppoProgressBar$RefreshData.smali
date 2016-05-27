.class Lcom/oppo/widget/OppoProgressBar$RefreshData;
.super Ljava/lang/Object;
.source "OppoProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshData"
.end annotation


# static fields
.field private static final POOL_MAX:I = 0x18

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Lcom/oppo/widget/OppoProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fromUser:Z

.field public id:I

.field public progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 506
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/oppo/widget/OppoProgressBar$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IIZ)Lcom/oppo/widget/OppoProgressBar$RefreshData;
    .locals 2
    .param p0, "id"    # I
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 514
    sget-object v1, Lcom/oppo/widget/OppoProgressBar$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoProgressBar$RefreshData;

    .line 515
    .local v0, "rd":Lcom/oppo/widget/OppoProgressBar$RefreshData;
    if-nez v0, :cond_0

    .line 516
    new-instance v0, Lcom/oppo/widget/OppoProgressBar$RefreshData;

    .end local v0    # "rd":Lcom/oppo/widget/OppoProgressBar$RefreshData;
    invoke-direct {v0}, Lcom/oppo/widget/OppoProgressBar$RefreshData;-><init>()V

    .line 518
    .restart local v0    # "rd":Lcom/oppo/widget/OppoProgressBar$RefreshData;
    :cond_0
    iput p0, v0, Lcom/oppo/widget/OppoProgressBar$RefreshData;->id:I

    .line 519
    iput p1, v0, Lcom/oppo/widget/OppoProgressBar$RefreshData;->progress:I

    .line 520
    iput-boolean p2, v0, Lcom/oppo/widget/OppoProgressBar$RefreshData;->fromUser:Z

    .line 521
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    .line 525
    sget-object v0, Lcom/oppo/widget/OppoProgressBar$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 526
    return-void
.end method
