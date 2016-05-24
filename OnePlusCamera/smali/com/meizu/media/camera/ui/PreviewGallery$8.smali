.class Lcom/meizu/media/camera/ui/PreviewGallery$8;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/PreviewGallery;->initPager(Lcom/meizu/media/camera/CameraActivity;)V
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
        "Lcom/meizu/media/camera/io/FileManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

.field final synthetic val$cameraActivity:Lcom/meizu/media/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/PreviewGallery;Lcom/meizu/media/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    iput-object p2, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->val$cameraActivity:Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 679
    check-cast p1, Lcom/meizu/media/camera/io/FileManager;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/meizu/media/camera/ui/PreviewGallery$8;->onComponentFound(Lcom/meizu/media/camera/io/FileManager;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/io/FileManager;)V
    .locals 4
    .param p1, "component"    # Lcom/meizu/media/camera/io/FileManager;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 683
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    # getter for: Lcom/meizu/media/camera/ui/PreviewGallery;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/PreviewGallery;->access$1800(Lcom/meizu/media/camera/ui/PreviewGallery;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onComponentFound"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    # setter for: Lcom/meizu/media/camera/ui/PreviewGallery;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;
    invoke-static {v0, p1}, Lcom/meizu/media/camera/ui/PreviewGallery;->access$1102(Lcom/meizu/media/camera/ui/PreviewGallery;Lcom/meizu/media/camera/io/FileManager;)Lcom/meizu/media/camera/io/FileManager;

    .line 686
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->val$cameraActivity:Lcom/meizu/media/camera/CameraActivity;

    # invokes: Lcom/meizu/media/camera/ui/PreviewGallery;->initPortrait(Lcom/meizu/media/camera/CameraActivity;)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/PreviewGallery;->access$1900(Lcom/meizu/media/camera/ui/PreviewGallery;Lcom/meizu/media/camera/CameraActivity;)V

    .line 687
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->val$cameraActivity:Lcom/meizu/media/camera/CameraActivity;

    # invokes: Lcom/meizu/media/camera/ui/PreviewGallery;->initLandscape(Lcom/meizu/media/camera/CameraActivity;)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/PreviewGallery;->access$2000(Lcom/meizu/media/camera/ui/PreviewGallery;Lcom/meizu/media/camera/CameraActivity;)V

    .line 688
    sget-object v0, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    # invokes: Lcom/meizu/media/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/PreviewGallery;->access$2100(Lcom/meizu/media/camera/ui/PreviewGallery;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    # invokes: Lcom/meizu/media/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/PreviewGallery;->access$2200(Lcom/meizu/media/camera/ui/PreviewGallery;)Lcom/oneplus/base/Rotation;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    # getter for: Lcom/meizu/media/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/meizu/media/camera/ui/CameraPager;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/PreviewGallery;->access$1300(Lcom/meizu/media/camera/ui/PreviewGallery;)Lcom/meizu/media/camera/ui/CameraPager;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/ui/CameraPager;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    # getter for: Lcom/meizu/media/camera/ui/PreviewGallery;->m_ViewPager:Lcom/meizu/media/camera/ui/CameraPager;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/PreviewGallery;->access$1200(Lcom/meizu/media/camera/ui/PreviewGallery;)Lcom/meizu/media/camera/ui/CameraPager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/meizu/media/camera/ui/CameraPager;->setVisibility(I)V

    .line 696
    :goto_0
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    # getter for: Lcom/meizu/media/camera/ui/PreviewGallery;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/PreviewGallery;->access$1100(Lcom/meizu/media/camera/ui/PreviewGallery;)Lcom/meizu/media/camera/io/FileManager;

    move-result-object v0

    new-instance v1, Lcom/meizu/media/camera/ui/PreviewGallery$8$1;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/ui/PreviewGallery$8$1;-><init>(Lcom/meizu/media/camera/ui/PreviewGallery$8;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 760
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    # getter for: Lcom/meizu/media/camera/ui/PreviewGallery;->m_ViewPager:Lcom/meizu/media/camera/ui/CameraPager;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/PreviewGallery;->access$1200(Lcom/meizu/media/camera/ui/PreviewGallery;)Lcom/meizu/media/camera/ui/CameraPager;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/meizu/media/camera/ui/CameraPager;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/meizu/media/camera/ui/PreviewGallery$8;->this$0:Lcom/meizu/media/camera/ui/PreviewGallery;

    # getter for: Lcom/meizu/media/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/meizu/media/camera/ui/CameraPager;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/PreviewGallery;->access$1300(Lcom/meizu/media/camera/ui/PreviewGallery;)Lcom/meizu/media/camera/ui/CameraPager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/meizu/media/camera/ui/CameraPager;->setVisibility(I)V

    goto :goto_0
.end method
