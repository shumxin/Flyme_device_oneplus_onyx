.class final enum Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;
.super Ljava/lang/Enum;
.source "OptionsPanelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/OptionsPanelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OptionsPanelButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

.field public static final enum BACK:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

.field public static final enum FLASH:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

.field public static final enum GRID:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

.field public static final enum LENS_SWITCHING:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

.field public static final enum MORE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

.field public static final enum PHOTO_RESOLUTION:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

.field public static final enum SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

.field public static final enum SELF_TIMER:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

.field public static final enum VIDEO_RESOLUTION:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    new-instance v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    const-string v1, "FLASH"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->FLASH:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 108
    new-instance v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    const-string v1, "SCENE"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 109
    new-instance v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    const-string v1, "LENS_SWITCHING"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->LENS_SWITCHING:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 110
    new-instance v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    const-string v1, "PHOTO_RESOLUTION"

    invoke-direct {v0, v1, v6}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->PHOTO_RESOLUTION:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 111
    new-instance v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    const-string v1, "VIDEO_RESOLUTION"

    invoke-direct {v0, v1, v7}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 112
    new-instance v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    const-string v1, "SELF_TIMER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SELF_TIMER:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 113
    new-instance v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    const-string v1, "GRID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 114
    new-instance v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    const-string v1, "MORE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->MORE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 115
    new-instance v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    const-string v1, "BACK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->BACK:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    .line 105
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->FLASH:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SCENE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->LENS_SWITCHING:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->PHOTO_RESOLUTION:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->VIDEO_RESOLUTION:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->SELF_TIMER:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->GRID:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->MORE:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->BACK:Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->$VALUES:[Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    const-class v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->$VALUES:[Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/ui/OptionsPanelImpl$OptionsPanelButton;

    return-object v0
.end method
