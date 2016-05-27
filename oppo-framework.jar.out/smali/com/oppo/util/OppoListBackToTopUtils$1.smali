.class Lcom/oppo/util/OppoListBackToTopUtils$1;
.super Ljava/lang/Object;
.source "OppoListBackToTopUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/util/OppoListBackToTopUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/util/OppoListBackToTopUtils;


# direct methods
.method constructor <init>(Lcom/oppo/util/OppoListBackToTopUtils;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/oppo/util/OppoListBackToTopUtils$1;->this$0:Lcom/oppo/util/OppoListBackToTopUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils$1;->this$0:Lcom/oppo/util/OppoListBackToTopUtils;

    # getter for: Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/oppo/util/OppoListBackToTopUtils;->access$000(Lcom/oppo/util/OppoListBackToTopUtils;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils$1;->this$0:Lcom/oppo/util/OppoListBackToTopUtils;

    # getter for: Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/oppo/util/OppoListBackToTopUtils;->access$000(Lcom/oppo/util/OppoListBackToTopUtils;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils$1;->this$0:Lcom/oppo/util/OppoListBackToTopUtils;

    # getter for: Lcom/oppo/util/OppoListBackToTopUtils;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/oppo/util/OppoListBackToTopUtils;->access$000(Lcom/oppo/util/OppoListBackToTopUtils;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 57
    :cond_0
    return-void
.end method
