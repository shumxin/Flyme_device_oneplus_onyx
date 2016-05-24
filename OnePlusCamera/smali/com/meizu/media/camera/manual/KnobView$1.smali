.class Lcom/meizu/media/camera/manual/KnobView$1;
.super Ljava/lang/Object;
.source "KnobView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/manual/KnobView;->setKnobViewRotationSmooth(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/manual/KnobView;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/KnobView;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/meizu/media/camera/manual/KnobView$1;->this$0:Lcom/meizu/media/camera/manual/KnobView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 584
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 585
    .local v0, "updateRotation":F
    iget-object v1, p0, Lcom/meizu/media/camera/manual/KnobView$1;->this$0:Lcom/meizu/media/camera/manual/KnobView;

    float-to-double v2, v0

    # invokes: Lcom/meizu/media/camera/manual/KnobView;->setKnobViewRotation(D)V
    invoke-static {v1, v2, v3}, Lcom/meizu/media/camera/manual/KnobView;->access$000(Lcom/meizu/media/camera/manual/KnobView;D)V

    .line 586
    return-void
.end method
