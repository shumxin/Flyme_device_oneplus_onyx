.class public final enum Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;
.super Ljava/lang/Enum;
.source "Viewfinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/Viewfinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreviewRenderingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;

.field public static final enum DIRECT:Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;

.field public static final enum OPENGL:Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;

    const-string v1, "DIRECT"

    invoke-direct {v0, v1, v2}, Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;->DIRECT:Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;

    .line 56
    new-instance v0, Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;

    const-string v1, "OPENGL"

    invoke-direct {v0, v1, v3}, Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;->OPENGL:Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;

    sget-object v1, Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;->DIRECT:Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;->OPENGL:Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;->$VALUES:[Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;

    return-object v0
.end method

.method public static values()[Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;->$VALUES:[Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;

    invoke-virtual {v0}, [Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/media/camera/ui/Viewfinder$PreviewRenderingMode;

    return-object v0
.end method
