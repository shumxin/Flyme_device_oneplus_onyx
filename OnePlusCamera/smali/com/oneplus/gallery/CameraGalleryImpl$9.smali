.class Lcom/oneplus/gallery/CameraGalleryImpl$9;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    .prologue
    .line 2165
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$9;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 2165
    check-cast p1, Lcom/meizu/media/camera/io/FileManager;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$9;->onComponentFound(Lcom/meizu/media/camera/io/FileManager;)V

    return-void
.end method

.method public onComponentFound(Lcom/meizu/media/camera/io/FileManager;)V
    .locals 2
    .param p1, "component"    # Lcom/meizu/media/camera/io/FileManager;

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$9;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$7800(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInitialize() - File manager found"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$9;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FileManager:Lcom/meizu/media/camera/io/FileManager;
    invoke-static {v0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$7902(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/meizu/media/camera/io/FileManager;)Lcom/meizu/media/camera/io/FileManager;

    .line 2171
    return-void
.end method
