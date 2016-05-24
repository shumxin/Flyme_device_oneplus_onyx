.class public final enum Lcom/meizu/media/camera/manual/ControlType;
.super Ljava/lang/Enum;
.source "ControlType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/manual/ControlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/manual/ControlType;

.field public static final enum AWB:Lcom/meizu/media/camera/manual/ControlType;

.field public static final enum EXPOSURE:Lcom/meizu/media/camera/manual/ControlType;

.field public static final enum FOCUS:Lcom/meizu/media/camera/manual/ControlType;

.field public static final enum ISO:Lcom/meizu/media/camera/manual/ControlType;

.field public static final enum NONE:Lcom/meizu/media/camera/manual/ControlType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/meizu/media/camera/manual/ControlType;

    const-string v1, "AWB"

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/manual/ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/manual/ControlType;->AWB:Lcom/meizu/media/camera/manual/ControlType;

    .line 6
    new-instance v0, Lcom/meizu/media/camera/manual/ControlType;

    const-string v1, "EXPOSURE"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/manual/ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/manual/ControlType;->EXPOSURE:Lcom/meizu/media/camera/manual/ControlType;

    .line 7
    new-instance v0, Lcom/meizu/media/camera/manual/ControlType;

    const-string v1, "FOCUS"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/manual/ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/manual/ControlType;->FOCUS:Lcom/meizu/media/camera/manual/ControlType;

    .line 8
    new-instance v0, Lcom/meizu/media/camera/manual/ControlType;

    const-string v1, "ISO"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/manual/ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/manual/ControlType;->ISO:Lcom/meizu/media/camera/manual/ControlType;

    .line 9
    new-instance v0, Lcom/meizu/media/camera/manual/ControlType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/meizu/media/camera/manual/ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/manual/ControlType;->NONE:Lcom/meizu/media/camera/manual/ControlType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/meizu/media/camera/manual/ControlType;

    sget-object v1, Lcom/meizu/media/camera/manual/ControlType;->AWB:Lcom/meizu/media/camera/manual/ControlType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/media/camera/manual/ControlType;->EXPOSURE:Lcom/meizu/media/camera/manual/ControlType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/manual/ControlType;->FOCUS:Lcom/meizu/media/camera/manual/ControlType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/manual/ControlType;->ISO:Lcom/meizu/media/camera/manual/ControlType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/media/camera/manual/ControlType;->NONE:Lcom/meizu/media/camera/manual/ControlType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/meizu/media/camera/manual/ControlType;->$VALUES:[Lcom/meizu/media/camera/manual/ControlType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/manual/ControlType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/meizu/media/camera/manual/ControlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/manual/ControlType;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/manual/ControlType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/meizu/media/camera/manual/ControlType;->$VALUES:[Lcom/meizu/media/camera/manual/ControlType;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/manual/ControlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/manual/ControlType;

    return-object v0
.end method
