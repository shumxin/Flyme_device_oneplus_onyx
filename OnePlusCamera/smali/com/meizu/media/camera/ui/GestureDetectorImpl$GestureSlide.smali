.class final enum Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;
.super Ljava/lang/Enum;
.source "GestureDetectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/GestureDetectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GestureSlide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

.field public static final enum SLIDE_BOTTOM:Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

.field public static final enum SLIDE_LEFT:Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

.field public static final enum SLIDE_RIGHT:Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

.field public static final enum SLIDE_TOP:Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    new-instance v0, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    const-string v1, "SLIDE_BOTTOM"

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_BOTTOM:Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    .line 184
    new-instance v0, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    const-string v1, "SLIDE_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_LEFT:Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    .line 185
    new-instance v0, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    const-string v1, "SLIDE_RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_RIGHT:Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    .line 186
    new-instance v0, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    const-string v1, "SLIDE_TOP"

    invoke-direct {v0, v1, v5}, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_TOP:Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    .line 181
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    sget-object v1, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_BOTTOM:Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_LEFT:Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_RIGHT:Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;->SLIDE_TOP:Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;->$VALUES:[Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

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
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    const-class v0, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;->$VALUES:[Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/ui/GestureDetectorImpl$GestureSlide;

    return-object v0
.end method
