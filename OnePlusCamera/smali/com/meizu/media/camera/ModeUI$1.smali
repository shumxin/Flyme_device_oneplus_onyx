.class Lcom/meizu/media/camera/ModeUI$1;
.super Ljava/lang/Object;
.source "ModeUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<TTController;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ModeUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ModeUI;)V
    .locals 0

    .prologue
    .line 23
    .local p0, "this":Lcom/meizu/media/camera/ModeUI$1;, "Lcom/meizu/media/camera/ModeUI.1;"
    iput-object p1, p0, Lcom/meizu/media/camera/ModeUI$1;->this$0:Lcom/meizu/media/camera/ModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 23
    .local p0, "this":Lcom/meizu/media/camera/ModeUI$1;, "Lcom/meizu/media/camera/ModeUI.1;"
    check-cast p1, Lcom/meizu/media/camera/ModeController;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/ModeUI$1;->onComponentFound(Lcom/meizu/media/camera/ModeController;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/ModeController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTController;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/meizu/media/camera/ModeUI$1;, "Lcom/meizu/media/camera/ModeUI.1;"
    .local p1, "component":Lcom/meizu/media/camera/ModeController;, "TTController;"
    iget-object v0, p0, Lcom/meizu/media/camera/ModeUI$1;->this$0:Lcom/meizu/media/camera/ModeUI;

    # invokes: Lcom/meizu/media/camera/ModeUI;->onControllerFound(Lcom/meizu/media/camera/ModeController;)V
    invoke-static {v0, p1}, Lcom/meizu/media/camera/ModeUI;->access$000(Lcom/meizu/media/camera/ModeUI;Lcom/meizu/media/camera/ModeController;)V

    .line 28
    return-void
.end method
