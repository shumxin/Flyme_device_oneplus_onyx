.class Lcom/color/widget/ColorQuickToast$1;
.super Ljava/lang/Object;
.source "ColorQuickToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorQuickToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorQuickToast;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorQuickToast;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/color/widget/ColorQuickToast$1;->this$0:Lcom/color/widget/ColorQuickToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/color/widget/ColorQuickToast$1;->this$0:Lcom/color/widget/ColorQuickToast;

    # getter for: Lcom/color/widget/ColorQuickToast;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/color/widget/ColorQuickToast;->access$000(Lcom/color/widget/ColorQuickToast;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/color/widget/ColorQuickToast$1;->this$0:Lcom/color/widget/ColorQuickToast;

    # getter for: Lcom/color/widget/ColorQuickToast;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/color/widget/ColorQuickToast;->access$100(Lcom/color/widget/ColorQuickToast;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorQuickToast$1;->this$0:Lcom/color/widget/ColorQuickToast;

    # getter for: Lcom/color/widget/ColorQuickToast;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/color/widget/ColorQuickToast;->access$000(Lcom/color/widget/ColorQuickToast;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 87
    :cond_0
    return-void
.end method
