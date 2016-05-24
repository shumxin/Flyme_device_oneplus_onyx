.class Lcom/meizu/media/camera/ui/CaptureBar$9;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/CaptureBar;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/meizu/media/camera/PhotoCaptureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/CaptureBar;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/meizu/media/camera/ui/CaptureBar$9;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/PhotoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/PhotoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 431
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/PhotoCaptureState;>;"
    sget-object v1, Lcom/meizu/media/camera/ui/CaptureBar$13;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v0}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 440
    :goto_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$9;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    # invokes: Lcom/meizu/media/camera/ui/CaptureBar;->updateButtonVisibilities()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/CaptureBar;->access$900(Lcom/meizu/media/camera/ui/CaptureBar;)V

    .line 441
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$9;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    # invokes: Lcom/meizu/media/camera/ui/CaptureBar;->updateCaptureBarVisibility()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/CaptureBar;->access$1400(Lcom/meizu/media/camera/ui/CaptureBar;)V

    .line 442
    return-void

    .line 435
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$9;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/media/camera/ui/CaptureBar;->m_PhotoCaptureHandle:Lcom/meizu/media/camera/CaptureHandle;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/CaptureBar;->access$1102(Lcom/meizu/media/camera/ui/CaptureBar;Lcom/meizu/media/camera/CaptureHandle;)Lcom/meizu/media/camera/CaptureHandle;

    .line 436
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$9;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/CaptureBar$9;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    # getter for: Lcom/meizu/media/camera/ui/CaptureBar;->m_CapturedPhotoCountHintHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/CaptureBar;->access$1200(Lcom/meizu/media/camera/ui/CaptureBar;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/meizu/media/camera/ui/CaptureBar;->m_CapturedPhotoCountHintHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/CaptureBar;->access$1202(Lcom/meizu/media/camera/ui/CaptureBar;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 437
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$9;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/CaptureBar$9;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    # getter for: Lcom/meizu/media/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/CaptureBar;->access$1300(Lcom/meizu/media/camera/ui/CaptureBar;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/meizu/media/camera/ui/CaptureBar;->m_PreCaptureFocusLockHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/CaptureBar;->access$1302(Lcom/meizu/media/camera/ui/CaptureBar;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
