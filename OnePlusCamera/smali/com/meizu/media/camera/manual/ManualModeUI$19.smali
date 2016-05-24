.class Lcom/meizu/media/camera/manual/ManualModeUI$19;
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
    .line 971
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ManualModeUI$19;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ManualModeUI$19;->this$0:Lcom/meizu/media/camera/manual/ManualModeUI;

    sget-object v1, Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;->VISIBLE:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    # setter for: Lcom/meizu/media/camera/manual/ManualModeUI;->m_IndicatorTextViewVisibilityState:Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/meizu/media/camera/manual/ManualModeUI;->access$4402(Lcom/meizu/media/camera/manual/ManualModeUI;Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;)Lcom/meizu/media/camera/manual/ManualModeUI$ViewVisibilityState;

    .line 976
    return-void
.end method
