.class public final enum Lcom/meizu/media/camera/PhotoCaptureState;
.super Ljava/lang/Enum;
.source "PhotoCaptureState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/PhotoCaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/PhotoCaptureState;

.field public static final enum CAPTURING:Lcom/meizu/media/camera/PhotoCaptureState;

.field public static final enum PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

.field public static final enum READY:Lcom/meizu/media/camera/PhotoCaptureState;

.field public static final enum REVIEWING:Lcom/meizu/media/camera/PhotoCaptureState;

.field public static final enum STARTING:Lcom/meizu/media/camera/PhotoCaptureState;

.field public static final enum STOPPING:Lcom/meizu/media/camera/PhotoCaptureState;


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
    new-instance v0, Lcom/meizu/media/camera/PhotoCaptureState;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/PhotoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    .line 15
    new-instance v0, Lcom/meizu/media/camera/PhotoCaptureState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/PhotoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    .line 19
    new-instance v0, Lcom/meizu/media/camera/PhotoCaptureState;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/PhotoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/PhotoCaptureState;->STARTING:Lcom/meizu/media/camera/PhotoCaptureState;

    .line 23
    new-instance v0, Lcom/meizu/media/camera/PhotoCaptureState;

    const-string v1, "CAPTURING"

    invoke-direct {v0, v1, v6}, Lcom/meizu/media/camera/PhotoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/PhotoCaptureState;->CAPTURING:Lcom/meizu/media/camera/PhotoCaptureState;

    .line 27
    new-instance v0, Lcom/meizu/media/camera/PhotoCaptureState;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v7}, Lcom/meizu/media/camera/PhotoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/PhotoCaptureState;->STOPPING:Lcom/meizu/media/camera/PhotoCaptureState;

    .line 31
    new-instance v0, Lcom/meizu/media/camera/PhotoCaptureState;

    const-string v1, "REVIEWING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/PhotoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/PhotoCaptureState;->REVIEWING:Lcom/meizu/media/camera/PhotoCaptureState;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/meizu/media/camera/PhotoCaptureState;

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->STARTING:Lcom/meizu/media/camera/PhotoCaptureState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->CAPTURING:Lcom/meizu/media/camera/PhotoCaptureState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->STOPPING:Lcom/meizu/media/camera/PhotoCaptureState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/media/camera/PhotoCaptureState;->REVIEWING:Lcom/meizu/media/camera/PhotoCaptureState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/media/camera/PhotoCaptureState;->$VALUES:[Lcom/meizu/media/camera/PhotoCaptureState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/PhotoCaptureState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/PhotoCaptureState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/PhotoCaptureState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/meizu/media/camera/PhotoCaptureState;->$VALUES:[Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/PhotoCaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/PhotoCaptureState;

    return-object v0
.end method
