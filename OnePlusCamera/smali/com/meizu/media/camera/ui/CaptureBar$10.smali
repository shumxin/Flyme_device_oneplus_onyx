.class Lcom/meizu/media/camera/ui/CaptureBar$10;
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
        "Lcom/meizu/media/camera/VideoCaptureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/CaptureBar;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/meizu/media/camera/ui/CaptureBar$10;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

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
            "Lcom/meizu/media/camera/VideoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/meizu/media/camera/VideoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/meizu/media/camera/VideoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/meizu/media/camera/VideoCaptureState;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$10;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    const/4 v1, 0x1

    # invokes: Lcom/meizu/media/camera/ui/CaptureBar;->updateButtonFunctions(Z)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/CaptureBar;->access$1000(Lcom/meizu/media/camera/ui/CaptureBar;Z)V

    .line 454
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$10;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    # invokes: Lcom/meizu/media/camera/ui/CaptureBar;->updateButtonVisibilities()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/CaptureBar;->access$900(Lcom/meizu/media/camera/ui/CaptureBar;)V

    .line 455
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$10;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    # invokes: Lcom/meizu/media/camera/ui/CaptureBar;->updateCaptureBarVisibility()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/CaptureBar;->access$1400(Lcom/meizu/media/camera/ui/CaptureBar;)V

    .line 458
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$10;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    # getter for: Lcom/meizu/media/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/meizu/media/camera/drawable/RecordingButtonIconDrawable;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/CaptureBar;->access$1500(Lcom/meizu/media/camera/ui/CaptureBar;)Lcom/meizu/media/camera/drawable/RecordingButtonIconDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$10;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    # getter for: Lcom/meizu/media/camera/ui/CaptureBar;->m_PrimaryButtonIconHandles:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/CaptureBar;->access$1600(Lcom/meizu/media/camera/ui/CaptureBar;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v0, v1, :cond_1

    .line 461
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$10;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    # getter for: Lcom/meizu/media/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/meizu/media/camera/drawable/RecordingButtonIconDrawable;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/CaptureBar;->access$1500(Lcom/meizu/media/camera/ui/CaptureBar;)Lcom/meizu/media/camera/drawable/RecordingButtonIconDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/drawable/RecordingButtonIconDrawable;->startVideoCaptrueAnimation()V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureBar$10;->this$0:Lcom/meizu/media/camera/ui/CaptureBar;

    # getter for: Lcom/meizu/media/camera/ui/CaptureBar;->m_RecordingIconDrawable:Lcom/meizu/media/camera/drawable/RecordingButtonIconDrawable;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/CaptureBar;->access$1500(Lcom/meizu/media/camera/ui/CaptureBar;)Lcom/meizu/media/camera/drawable/RecordingButtonIconDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/camera/drawable/RecordingButtonIconDrawable;->stopVideoCaptrueAnimation()V

    goto :goto_0
.end method
