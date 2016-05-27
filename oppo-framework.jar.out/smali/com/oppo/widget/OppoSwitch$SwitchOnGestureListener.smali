.class Lcom/oppo/widget/OppoSwitch$SwitchOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OppoSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchOnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoSwitch;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoSwitch;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/oppo/widget/OppoSwitch$SwitchOnGestureListener;->this$0:Lcom/oppo/widget/OppoSwitch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoSwitch;Lcom/oppo/widget/OppoSwitch$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/widget/OppoSwitch;
    .param p2, "x1"    # Lcom/oppo/widget/OppoSwitch$1;

    .prologue
    .line 816
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSwitch$SwitchOnGestureListener;-><init>(Lcom/oppo/widget/OppoSwitch;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 826
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoSwitch$SwitchOnGestureListener;->this$0:Lcom/oppo/widget/OppoSwitch;

    # getter for: Lcom/oppo/widget/OppoSwitch;->mFastFlingVelocity:F
    invoke-static {v1}, Lcom/oppo/widget/OppoSwitch;->access$200(Lcom/oppo/widget/OppoSwitch;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch$SwitchOnGestureListener;->this$0:Lcom/oppo/widget/OppoSwitch;

    # invokes: Lcom/oppo/widget/OppoSwitch;->animateThumbChangeCheckedState()V
    invoke-static {v0}, Lcom/oppo/widget/OppoSwitch;->access$100(Lcom/oppo/widget/OppoSwitch;)V

    .line 828
    const/4 v0, 0x1

    .line 830
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 820
    iget-object v0, p0, Lcom/oppo/widget/OppoSwitch$SwitchOnGestureListener;->this$0:Lcom/oppo/widget/OppoSwitch;

    # invokes: Lcom/oppo/widget/OppoSwitch;->animateThumbChangeCheckedState()V
    invoke-static {v0}, Lcom/oppo/widget/OppoSwitch;->access$100(Lcom/oppo/widget/OppoSwitch;)V

    .line 821
    const/4 v0, 0x1

    return v0
.end method
