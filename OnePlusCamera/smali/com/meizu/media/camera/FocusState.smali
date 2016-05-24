.class public final enum Lcom/meizu/media/camera/FocusState;
.super Ljava/lang/Enum;
.source "FocusState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/FocusState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/FocusState;

.field public static final enum FOCUSED:Lcom/meizu/media/camera/FocusState;

.field public static final enum INACTIVE:Lcom/meizu/media/camera/FocusState;

.field public static final enum SCANNING:Lcom/meizu/media/camera/FocusState;

.field public static final enum STARTING:Lcom/meizu/media/camera/FocusState;

.field public static final enum UNFOCUSED:Lcom/meizu/media/camera/FocusState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/meizu/media/camera/FocusState;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FocusState;->INACTIVE:Lcom/meizu/media/camera/FocusState;

    .line 15
    new-instance v0, Lcom/meizu/media/camera/FocusState;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FocusState;->STARTING:Lcom/meizu/media/camera/FocusState;

    .line 19
    new-instance v0, Lcom/meizu/media/camera/FocusState;

    const-string v1, "SCANNING"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    .line 23
    new-instance v0, Lcom/meizu/media/camera/FocusState;

    const-string v1, "FOCUSED"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FocusState;->FOCUSED:Lcom/meizu/media/camera/FocusState;

    .line 27
    new-instance v0, Lcom/meizu/media/camera/FocusState;

    const-string v1, "UNFOCUSED"

    invoke-direct {v0, v1, v6}, Lcom/meizu/media/camera/FocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/FocusState;->UNFOCUSED:Lcom/meizu/media/camera/FocusState;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/meizu/media/camera/FocusState;

    sget-object v1, Lcom/meizu/media/camera/FocusState;->INACTIVE:Lcom/meizu/media/camera/FocusState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/media/camera/FocusState;->STARTING:Lcom/meizu/media/camera/FocusState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/FocusState;->FOCUSED:Lcom/meizu/media/camera/FocusState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/media/camera/FocusState;->UNFOCUSED:Lcom/meizu/media/camera/FocusState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/meizu/media/camera/FocusState;->$VALUES:[Lcom/meizu/media/camera/FocusState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/FocusState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/meizu/media/camera/FocusState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/FocusState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/FocusState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/meizu/media/camera/FocusState;->$VALUES:[Lcom/meizu/media/camera/FocusState;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/FocusState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/FocusState;

    return-object v0
.end method
