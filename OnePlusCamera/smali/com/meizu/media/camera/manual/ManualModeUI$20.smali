.class Lcom/meizu/media/camera/manual/ManualModeUI$20;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/manual/ManualModeUI;->setFloatingTextViewVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/ManualModeUI;)V
    .locals 0

    .prologue
    .line 997
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$20;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$20;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    sget-object v1, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->INVISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    # setter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$4402(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 1002
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$20;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    # getter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$4500(Lcom/meizu/media/camera/manual/ManualModeUI;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1003
    return-void
.end method
