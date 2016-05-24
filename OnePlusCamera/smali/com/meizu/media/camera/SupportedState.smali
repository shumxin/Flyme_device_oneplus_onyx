.class public final enum Lcom/meizu/media/camera/SupportedState;
.super Ljava/lang/Enum;
.source "SupportedState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/SupportedState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/SupportedState;

.field public static final enum NOT_SUPPORTED:Lcom/meizu/media/camera/SupportedState;

.field public static final enum SUPPORTED:Lcom/meizu/media/camera/SupportedState;

.field public static final enum UNKNOWN:Lcom/meizu/media/camera/SupportedState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/meizu/media/camera/SupportedState;

    const-string v1, "NOT_SUPPORTED"

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/SupportedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/SupportedState;->NOT_SUPPORTED:Lcom/meizu/media/camera/SupportedState;

    .line 6
    new-instance v0, Lcom/meizu/media/camera/SupportedState;

    const-string v1, "SUPPORTED"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/SupportedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/SupportedState;->SUPPORTED:Lcom/meizu/media/camera/SupportedState;

    .line 7
    new-instance v0, Lcom/meizu/media/camera/SupportedState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/SupportedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/SupportedState;->UNKNOWN:Lcom/meizu/media/camera/SupportedState;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/media/camera/SupportedState;

    sget-object v1, Lcom/meizu/media/camera/SupportedState;->NOT_SUPPORTED:Lcom/meizu/media/camera/SupportedState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/media/camera/SupportedState;->SUPPORTED:Lcom/meizu/media/camera/SupportedState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/SupportedState;->UNKNOWN:Lcom/meizu/media/camera/SupportedState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/media/camera/SupportedState;->$VALUES:[Lcom/meizu/media/camera/SupportedState;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/SupportedState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/meizu/media/camera/SupportedState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/SupportedState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/SupportedState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/meizu/media/camera/SupportedState;->$VALUES:[Lcom/meizu/media/camera/SupportedState;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/SupportedState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/SupportedState;

    return-object v0
.end method
