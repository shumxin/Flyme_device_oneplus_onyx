.class Lcom/meizu/media/camera/ui/TouchFocusExposureUI$4;
.super Ljava/lang/Object;
.source "TouchFocusExposureUI.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/TouchFocusExposureUI;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/meizu/media/camera/ui/MotionEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/TouchFocusExposureUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/TouchFocusExposureUI;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$4;->this$0:Lcom/meizu/media/camera/ui/TouchFocusExposureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 276
    check-cast p3, Lcom/meizu/media/camera/ui/MotionEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$4;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/ui/MotionEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/ui/MotionEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/meizu/media/camera/ui/MotionEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/ui/MotionEventArgs;",
            ">;",
            "Lcom/meizu/media/camera/ui/MotionEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/ui/MotionEventArgs;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$4;->this$0:Lcom/meizu/media/camera/ui/TouchFocusExposureUI;

    # invokes: Lcom/meizu/media/camera/ui/TouchFocusExposureUI;->onTouch(Lcom/meizu/media/camera/ui/MotionEventArgs;)V
    invoke-static {v0, p3}, Lcom/meizu/media/camera/ui/TouchFocusExposureUI;->access$300(Lcom/meizu/media/camera/ui/TouchFocusExposureUI;Lcom/meizu/media/camera/ui/MotionEventArgs;)V

    .line 281
    return-void
.end method
