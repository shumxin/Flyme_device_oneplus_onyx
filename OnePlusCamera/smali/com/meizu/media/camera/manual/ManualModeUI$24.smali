.class Lcom/meizu/media/camera/manual/ManualModeUI$24;
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

.field final synthetic val$newControlType:Lcom/meizu/media/camera/manual/ControlType;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ControlType;)V
    .locals 0

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$24;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    iput-object p2, p0, Lcom/meizu/media/camera/manual/ManualModeUI$24;->val$newControlType:Lcom/meizu/media/camera/manual/ControlType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$24;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    iget-object v1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$24;->val$newControlType:Lcom/meizu/media/camera/manual/ControlType;

    sget-object v2, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    # invokes: Lcom/meizu/media/camera/manual/ManualModeUI;->changeKnobViewVisibilityState(Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)V
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$4600(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ControlType;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)V

    .line 1352
    return-void
.end method
