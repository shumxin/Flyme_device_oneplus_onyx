.class Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$4;
.super Ljava/lang/Object;
.source "BaseSwitchAnimationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;

.field final synthetic val$camera:Lcom/meizu/media/camera/Camera;

.field final synthetic val$previewBounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;Lcom/meizu/media/camera/Camera;Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$4;->this$0:Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl;

    iput-object p2, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$4;->val$camera:Lcom/meizu/media/camera/Camera;

    iput-object p3, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$4;->val$previewBounds:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$4;->val$camera:Lcom/meizu/media/camera/Camera;

    sget-object v1, Lcom/meizu/media/camera/Camera;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$4$1;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$4$1;-><init>(Lcom/meizu/media/camera/ui/BaseSwitchAnimationImpl$4;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 600
    return-void
.end method
