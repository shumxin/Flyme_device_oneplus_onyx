.class public final enum Lcom/meizu/media/camera/FocusMode;
.super Ljava/lang/Enum;
.source "FocusMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/FocusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/FocusMode;

.field public static final enum CONTINUOUS_AF:Lcom/meizu/media/camera/FocusMode;

.field public static final enum DISABLED:Lcom/meizu/media/camera/FocusMode;

.field public static final enum MANUAL:Lcom/meizu/media/camera/FocusMode;

.field public static final enum NORMAL_AF:Lcom/meizu/media/camera/FocusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/meizu/media/camera/FocusMode;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FocusMode;->DISABLED:Lcom/meizu/media/camera/FocusMode;

    .line 15
    new-instance v0, Lcom/meizu/media/camera/FocusMode;

    const-string v1, "NORMAL_AF"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FocusMode;->NORMAL_AF:Lcom/meizu/media/camera/FocusMode;

    .line 19
    new-instance v0, Lcom/meizu/media/camera/FocusMode;

    const-string v1, "CONTINUOUS_AF"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FocusMode;->CONTINUOUS_AF:Lcom/meizu/media/camera/FocusMode;

    .line 23
    new-instance v0, Lcom/meizu/media/camera/FocusMode;

    const-string v1, "MANUAL"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FocusMode;->MANUAL:Lcom/meizu/media/camera/FocusMode;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/meizu/media/camera/FocusMode;

    sget-object v1, Lcom/meizu/media/camera/FocusMode;->DISABLED:Lcom/meizu/media/camera/FocusMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/media/camera/FocusMode;->NORMAL_AF:Lcom/meizu/media/camera/FocusMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/FocusMode;->CONTINUOUS_AF:Lcom/meizu/media/camera/FocusMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/FocusMode;->MANUAL:Lcom/meizu/media/camera/FocusMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/media/camera/FocusMode;->$VALUES:[Lcom/meizu/media/camera/FocusMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/FocusMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/meizu/media/camera/FocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/FocusMode;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/FocusMode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/meizu/media/camera/FocusMode;->$VALUES:[Lcom/meizu/media/camera/FocusMode;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/FocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/FocusMode;

    return-object v0
.end method
