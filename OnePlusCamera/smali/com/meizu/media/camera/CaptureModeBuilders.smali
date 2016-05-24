.class final Lcom/meizu/media/camera/CaptureModeBuilders;
.super Ljava/lang/Object;
.source "CaptureModeBuilders.java"


# static fields
.field public static final BUILDERS:[Lcom/meizu/media/camera/capturemode/CaptureModeBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/meizu/media/camera/capturemode/CaptureModeBuilder;

    const/4 v1, 0x0

    new-instance v2, Lcom/meizu/media/camera/timelapse/TimelapseCaptureModeBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/timelapse/TimelapseCaptureModeBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/meizu/media/camera/slowmotion/SlowMotionCaptureModeBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/slowmotion/SlowMotionCaptureModeBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/meizu/media/camera/capturemode/PhotoCaptureModeBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/capturemode/PhotoCaptureModeBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/meizu/media/camera/capturemode/VideoCaptureModeBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/capturemode/VideoCaptureModeBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/meizu/media/camera/manual/ManualCaptureModeBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/manual/ManualCaptureModeBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/meizu/media/camera/panorama/PanoramaCaptureModeBuilder;

    invoke-direct {v2}, Lcom/meizu/media/camera/panorama/PanoramaCaptureModeBuilder;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/media/camera/CaptureModeBuilders;->BUILDERS:[Lcom/meizu/media/camera/capturemode/CaptureModeBuilder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
