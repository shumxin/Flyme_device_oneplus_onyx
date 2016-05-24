.class Lcom/meizu/media/camera/manual/ManualModeUI$23;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/manual/ManualModeUI;->updateKnobViewVisibility(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;Lcom/meizu/media/camera/manual/ManualModeUI$AnimationType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

.field final synthetic val$oldControlType:Lcom/meizu/media/camera/manual/ControlType;

.field final synthetic val$oldFinalKnobView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ControlType;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$23;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    iput-object p2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$23;->val$oldControlType:Lcom/meizu/media/camera/manual/ControlType;

    iput-object p3, p0, Lcom/meizu/media/camera/manual/ManualModeUI$23;->val$oldFinalKnobView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$23;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$23;->val$oldControlType:Lcom/meizu/media/camera/manual/ControlType;

    sget-object v2, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)V
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$4600(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 1307
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$23;->val$oldFinalKnobView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1309
    return-void
.end method
