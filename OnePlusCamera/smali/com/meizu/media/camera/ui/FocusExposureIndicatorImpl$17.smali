.class Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$17;
.super Ljava/lang/Object;
.source "FocusExposureIndicatorImpl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->showFocusIndicator(ZZ)V
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
    .line 1270
    iput-object p1, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$17;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$17;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    # getter for: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->m_IndicatorState:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$1600(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    move-result-object v0

    sget-object v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_IN_ANIMATING:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    if-ne v0, v1, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$17;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    sget-object v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    # invokes: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->changeIndicatorState(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$1500(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    .line 1287
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$17;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    # invokes: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->hideFocusIndicatorDelayed()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$1700(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;)V

    .line 1289
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1279
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$17;->this$0:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;

    sget-object v1, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;->VISIBLE_IN_ANIMATING:Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;

    # invokes: Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->changeIndicatorState(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;->access$1500(Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl;Lcom/meizu/media/camera/ui/FocusExposureIndicatorImpl$IndicatorState;)V

    .line 1275
    return-void
.end method
