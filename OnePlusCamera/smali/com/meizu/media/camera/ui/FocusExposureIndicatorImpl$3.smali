.class Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$3;
.super Ljava/lang/Object;
.source "FocusExposureIndicatorImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$3;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$3;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$3;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    # getter for: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_ExposureIndicatorContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$300(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->onIndicatorIconTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1, p2}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$200(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
