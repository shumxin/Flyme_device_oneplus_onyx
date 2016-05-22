.class Lcom/oneplus/camera/ui/OptionsPanelImpl$14;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupPropertyChangedCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$14;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .param p2, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p3, "e"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 1186
    iget-object v0, p2, Lcom/oneplus/base/PropertyKey;->name:Ljava/lang/String;

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    iget-object v1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$14;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateSwitchCameraButton(Lcom/oneplus/camera/Camera;)V
    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1300(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/Camera;)V

    .line 1190
    :goto_0
    return-void

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$14;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->updateSwitchCameraButton()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$1400(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    goto :goto_0
.end method
