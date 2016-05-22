.class Lcom/oneplus/camera/manual/ManualModeUI$22;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI;->showUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$22;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$22;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-virtual {v0}, Lcom/oneplus/camera/manual/ManualModeUI;->onMoreButtonClicked()V

    .line 1106
    return-void
.end method
