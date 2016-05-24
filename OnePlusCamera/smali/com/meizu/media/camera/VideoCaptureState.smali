.class public final enum Lcom/meizu/media/camera/VideoCaptureState;
.super Ljava/lang/Enum;
.source "VideoCaptureState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/VideoCaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/VideoCaptureState;

.field public static final enum CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

.field public static final enum PAUSED:Lcom/meizu/media/camera/VideoCaptureState;

.field public static final enum PAUSING:Lcom/meizu/media/camera/VideoCaptureState;

.field public static final enum PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

.field public static final enum READY:Lcom/meizu/media/camera/VideoCaptureState;

.field public static final enum RESUMING:Lcom/meizu/media/camera/VideoCaptureState;

.field public static final enum REVIEWING:Lcom/meizu/media/camera/VideoCaptureState;

.field public static final enum STARTING:Lcom/meizu/media/camera/VideoCaptureState;

.field public static final enum STOPPING:Lcom/meizu/media/camera/VideoCaptureState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/meizu/media/camera/VideoCaptureState;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    .line 15
    new-instance v0, Lcom/meizu/media/camera/VideoCaptureState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    .line 19
    new-instance v0, Lcom/meizu/media/camera/VideoCaptureState;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/VideoCaptureState;->STARTING:Lcom/meizu/media/camera/VideoCaptureState;

    .line 23
    new-instance v0, Lcom/meizu/media/camera/VideoCaptureState;

    const-string v1, "CAPTURING"

    invoke-direct {v0, v1, v6}, Lcom/meizu/media/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    .line 27
    new-instance v0, Lcom/meizu/media/camera/VideoCaptureState;

    const-string v1, "PAUSING"

    invoke-direct {v0, v1, v7}, Lcom/meizu/media/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/VideoCaptureState;->PAUSING:Lcom/meizu/media/camera/VideoCaptureState;

    .line 31
    new-instance v0, Lcom/meizu/media/camera/VideoCaptureState;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/VideoCaptureState;->PAUSED:Lcom/meizu/media/camera/VideoCaptureState;

    .line 35
    new-instance v0, Lcom/meizu/media/camera/VideoCaptureState;

    const-string v1, "RESUMING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/VideoCaptureState;->RESUMING:Lcom/meizu/media/camera/VideoCaptureState;

    .line 39
    new-instance v0, Lcom/meizu/media/camera/VideoCaptureState;

    const-string v1, "STOPPING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/VideoCaptureState;->STOPPING:Lcom/meizu/media/camera/VideoCaptureState;

    .line 43
    new-instance v0, Lcom/meizu/media/camera/VideoCaptureState;

    const-string v1, "REVIEWING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/VideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/VideoCaptureState;->REVIEWING:Lcom/meizu/media/camera/VideoCaptureState;

    .line 6
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/meizu/media/camera/VideoCaptureState;

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->STARTING:Lcom/meizu/media/camera/VideoCaptureState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->PAUSING:Lcom/meizu/media/camera/VideoCaptureState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/media/camera/VideoCaptureState;->PAUSED:Lcom/meizu/media/camera/VideoCaptureState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/meizu/media/camera/VideoCaptureState;->RESUMING:Lcom/meizu/media/camera/VideoCaptureState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/meizu/media/camera/VideoCaptureState;->STOPPING:Lcom/meizu/media/camera/VideoCaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/meizu/media/camera/VideoCaptureState;->REVIEWING:Lcom/meizu/media/camera/VideoCaptureState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/media/camera/VideoCaptureState;->$VALUES:[Lcom/meizu/media/camera/VideoCaptureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/VideoCaptureState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/meizu/media/camera/VideoCaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/VideoCaptureState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/VideoCaptureState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/meizu/media/camera/VideoCaptureState;->$VALUES:[Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/VideoCaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/VideoCaptureState;

    return-object v0
.end method
