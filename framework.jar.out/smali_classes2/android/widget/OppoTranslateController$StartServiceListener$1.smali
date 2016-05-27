.class Landroid/widget/OppoTranslateController$StartServiceListener$1;
.super Landroid/widget/OppoTranslateController$OnAskListener;
.source "OppoTranslateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoTranslateController$StartServiceListener;->getAskListener()Landroid/widget/OppoTranslateController$OnAskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/OppoTranslateController$StartServiceListener;


# direct methods
.method constructor <init>(Landroid/widget/OppoTranslateController$StartServiceListener;)V
    .locals 2

    .prologue
    .line 740
    iput-object p1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v0, p1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/OppoTranslateController$OnAskListener;-><init>(Landroid/widget/OppoTranslateController;Landroid/widget/OppoTranslateController$1;)V

    return-void
.end method


# virtual methods
.method initWindow()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x1

    .line 744
    const-string v1, "OppoTranslateController"

    const-string v2, "StartServiceListener : initWindow"

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1700(Landroid/widget/OppoTranslateController;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-nez v1, :cond_0

    .line 746
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v3, v3, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/OppoTranslateController;->access$1800(Landroid/widget/OppoTranslateController;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    # setter for: Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;
    invoke-static {v1, v2}, Landroid/widget/OppoTranslateController;->access$1702(Landroid/widget/OppoTranslateController;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 747
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1700(Landroid/widget/OppoTranslateController;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v2, v2, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 748
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1700(Landroid/widget/OppoTranslateController;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 750
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1700(Landroid/widget/OppoTranslateController;)Landroid/widget/PopupWindow;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 752
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1700(Landroid/widget/OppoTranslateController;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 753
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1700(Landroid/widget/OppoTranslateController;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 754
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1700(Landroid/widget/OppoTranslateController;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 755
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1700(Landroid/widget/OppoTranslateController;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 756
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1700(Landroid/widget/OppoTranslateController;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 757
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1700(Landroid/widget/OppoTranslateController;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 758
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1700(Landroid/widget/OppoTranslateController;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v2, v2, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # invokes: Landroid/widget/OppoTranslateController;->getFlowPanel()Landroid/view/View;
    invoke-static {v2}, Landroid/widget/OppoTranslateController;->access$1900(Landroid/widget/OppoTranslateController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 759
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mTranslateWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1700(Landroid/widget/OppoTranslateController;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 760
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$1800(Landroid/widget/OppoTranslateController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 761
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v3, v3, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mPanelWidth:I
    invoke-static {v3}, Landroid/widget/OppoTranslateController;->access$2100(Landroid/widget/OppoTranslateController;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    # setter for: Landroid/widget/OppoTranslateController;->mWindowPaddingHorizontal:I
    invoke-static {v1, v2}, Landroid/widget/OppoTranslateController;->access$2002(Landroid/widget/OppoTranslateController;I)I

    .line 763
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mEditor:Landroid/widget/Editor;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$2200(Landroid/widget/OppoTranslateController;)Landroid/widget/Editor;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v2, v2, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    invoke-virtual {v1, v2, v4}, Landroid/widget/Editor;->addPositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 764
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mFlowPanel:Landroid/widget/OppoTranslatePanelView;
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$2300(Landroid/widget/OppoTranslateController;)Landroid/widget/OppoTranslatePanelView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v2, v2, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    invoke-virtual {v1, v2}, Landroid/widget/OppoTranslatePanelView;->addOnViewChangedListener(Landroid/widget/OppoTranslatePanelView$OnViewChangedListener;)V

    .line 765
    iget-object v1, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # invokes: Landroid/widget/OppoTranslateController;->initTitleBar()V
    invoke-static {v1}, Landroid/widget/OppoTranslateController;->access$2400(Landroid/widget/OppoTranslateController;)V

    .line 766
    return-void
.end method

.method updateOnAccept()V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Landroid/widget/OppoTranslateController$StartServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$StartServiceListener;

    iget-object v0, v0, Landroid/widget/OppoTranslateController$StartServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # invokes: Landroid/widget/OppoTranslateController;->updateResult()V
    invoke-static {v0}, Landroid/widget/OppoTranslateController;->access$2500(Landroid/widget/OppoTranslateController;)V

    .line 771
    return-void
.end method
