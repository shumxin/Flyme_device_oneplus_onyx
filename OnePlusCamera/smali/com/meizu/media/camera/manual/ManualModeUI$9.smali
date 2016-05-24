.class Lcom/meizu/media/camera/manual/ManualModeUI$9;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/manual/ManualModeUI;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/meizu/media/camera/ui/OptionsPanel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$9;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 576
    check-cast p1, Lcom/meizu/media/camera/ui/OptionsPanel;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/manual/ManualModeUI$9;->onComponentFound(Lcom/meizu/media/camera/ui/OptionsPanel;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/ui/OptionsPanel;)V
    .locals 3
    .param p1, "component"    # Lcom/meizu/media/camera/ui/OptionsPanel;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$9;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # setter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_OptionsPanel:Lcom/meizu/media/camera/ui/OptionsPanel;
    invoke-static {v0, p1}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$302(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/ui/OptionsPanel;)Lcom/meizu/media/camera/ui/OptionsPanel;

    .line 581
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$9;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_OptionsPanel:Lcom/meizu/media/camera/ui/OptionsPanel;
    invoke-static {v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$300(Lcom/meizu/media/camera/manual/ManualModeUI;)Lcom/meizu/media/camera/ui/OptionsPanel;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/ui/OptionsPanel;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/meizu/media/camera/manual/ManualModeUI$9$1;

    invoke-direct {v2, p0}, Lcom/meizu/media/camera/manual/ManualModeUI$9$1;-><init>(Lcom/meizu/media/camera/manual/ManualModeUI$9;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/media/camera/ui/OptionsPanel;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 597
    return-void
.end method
