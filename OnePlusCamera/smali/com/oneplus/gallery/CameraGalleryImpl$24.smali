.class Lcom/oneplus/gallery/CameraGalleryImpl$24;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3497
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$24;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$24;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3501
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$24;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$24;->val$view:Landroid/view/View;

    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$10200(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    .line 3502
    return-void
.end method
