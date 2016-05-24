.class Lcom/meizu/media/camera/ui/OptionsPanelImpl$12;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setupEventHandler()V
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
        "Lcom/meizu/media/camera/scene/SceneEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$12;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

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
    .line 1157
    check-cast p3, Lcom/meizu/media/camera/scene/SceneEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$12;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/scene/SceneEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/meizu/media/camera/scene/SceneEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/meizu/media/camera/scene/SceneEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/scene/SceneEventArgs;",
            ">;",
            "Lcom/meizu/media/camera/scene/SceneEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1161
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/meizu/media/camera/scene/SceneEventArgs;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$12;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    invoke-virtual {p3}, Lcom/meizu/media/camera/scene/SceneEventArgs;->getScene()Lcom/meizu/media/camera/scene/Scene;

    move-result-object v1

    # invokes: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onSceneAdded(Lcom/meizu/media/camera/scene/Scene;)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$1000(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/scene/Scene;)V

    .line 1162
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$12;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    # invokes: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->updateSceneButton()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$1100(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    .line 1163
    return-void
.end method
