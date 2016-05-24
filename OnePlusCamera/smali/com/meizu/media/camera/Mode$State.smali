.class public final enum Lcom/meizu/media/camera/Mode$State;
.super Ljava/lang/Enum;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/Mode$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/Mode$State;

.field public static final enum DISABLED:Lcom/meizu/media/camera/Mode$State;

.field public static final enum ENTERED:Lcom/meizu/media/camera/Mode$State;

.field public static final enum ENTERING:Lcom/meizu/media/camera/Mode$State;

.field public static final enum EXITED:Lcom/meizu/media/camera/Mode$State;

.field public static final enum EXITING:Lcom/meizu/media/camera/Mode$State;

.field public static final enum RELEASED:Lcom/meizu/media/camera/Mode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/meizu/media/camera/Mode$State;

    const-string v1, "ENTERING"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/Mode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/Mode$State;->ENTERING:Lcom/meizu/media/camera/Mode$State;

    .line 44
    new-instance v0, Lcom/meizu/media/camera/Mode$State;

    const-string v1, "ENTERED"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/Mode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/Mode$State;->ENTERED:Lcom/meizu/media/camera/Mode$State;

    .line 48
    new-instance v0, Lcom/meizu/media/camera/Mode$State;

    const-string v1, "EXITING"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/Mode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/Mode$State;->EXITING:Lcom/meizu/media/camera/Mode$State;

    .line 52
    new-instance v0, Lcom/meizu/media/camera/Mode$State;

    const-string v1, "EXITED"

    invoke-direct {v0, v1, v6}, Lcom/meizu/media/camera/Mode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/Mode$State;->EXITED:Lcom/meizu/media/camera/Mode$State;

    .line 56
    new-instance v0, Lcom/meizu/media/camera/Mode$State;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v7}, Lcom/meizu/media/camera/Mode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/Mode$State;->DISABLED:Lcom/meizu/media/camera/Mode$State;

    .line 60
    new-instance v0, Lcom/meizu/media/camera/Mode$State;

    const-string v1, "RELEASED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/Mode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/Mode$State;->RELEASED:Lcom/meizu/media/camera/Mode$State;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/meizu/media/camera/Mode$State;

    sget-object v1, Lcom/meizu/media/camera/Mode$State;->ENTERING:Lcom/meizu/media/camera/Mode$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/Mode$State;->ENTERED:Lcom/meizu/media/camera/Mode$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/Mode$State;->EXITING:Lcom/meizu/media/camera/Mode$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/media/camera/Mode$State;->EXITED:Lcom/meizu/media/camera/Mode$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/media/camera/Mode$State;->DISABLED:Lcom/meizu/media/camera/Mode$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/media/camera/Mode$State;->RELEASED:Lcom/meizu/media/camera/Mode$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/media/camera/Mode$State;->$VALUES:[Lcom/meizu/media/camera/Mode$State;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/Mode$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/meizu/media/camera/Mode$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/Mode$State;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/Mode$State;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/meizu/media/camera/Mode$State;->$VALUES:[Lcom/meizu/media/camera/Mode$State;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/Mode$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/Mode$State;

    return-object v0
.end method
