.class Lcom/meizu/media/camera/SensorFocusControllerImpl$3;
.super Ljava/lang/Object;
.source "SensorFocusControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/SensorFocusControllerImpl;->onInitialize()V
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
        "Lcom/oneplus/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/SensorFocusControllerImpl;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$3;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;",
            "Lcom/oneplus/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/EventArgs;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$3;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lcom/meizu/media/camera/SensorFocusControllerImpl;->m_LastTouchTime:J
    invoke-static {v0, v2, v3}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$602(Lcom/meizu/media/camera/SensorFocusControllerImpl;J)J

    .line 264
    iget-object v0, p0, Lcom/meizu/media/camera/SensorFocusControllerImpl$3;->this$0:Lcom/meizu/media/camera/SensorFocusControllerImpl;

    # invokes: Lcom/meizu/media/camera/SensorFocusControllerImpl;->resetAfState()V
    invoke-static {v0}, Lcom/meizu/media/camera/SensorFocusControllerImpl;->access$300(Lcom/meizu/media/camera/SensorFocusControllerImpl;)V

    .line 265
    return-void
.end method
