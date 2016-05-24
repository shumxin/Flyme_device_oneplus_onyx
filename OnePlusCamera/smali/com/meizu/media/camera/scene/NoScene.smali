.class final Lcom/meizu/media/camera/scene/NoScene;
.super Lcom/meizu/media/camera/InvalidMode;
.source "NoScene.java"

# interfaces
.implements Lcom/meizu/media/camera/scene/Scene;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/media/camera/InvalidMode",
        "<",
        "Lcom/meizu/media/camera/scene/Scene;",
        ">;",
        "Lcom/meizu/media/camera/scene/Scene;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/meizu/media/camera/InvalidMode;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImage(Lcom/meizu/media/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "usage"    # Lcom/meizu/media/camera/scene/Scene$ImageUsage;

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "(No scene)"

    return-object v0
.end method
