.class Lcom/oppo/widget/OppoNumberPicker$2;
.super Ljava/lang/Object;
.source "OppoNumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoNumberPicker;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoNumberPicker;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker$2;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 697
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 698
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker$2;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # getter for: Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/oppo/widget/OppoNumberPicker;->access$000(Lcom/oppo/widget/OppoNumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker$2;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoNumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker$2;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # getter for: Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/oppo/widget/OppoNumberPicker;->access$000(Lcom/oppo/widget/OppoNumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0xc020426

    if-ne v1, v2, :cond_1

    .line 703
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker$2;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v2, 0x1

    # invokes: Lcom/oppo/widget/OppoNumberPicker;->changeCurrentByOne(Z)V
    invoke-static {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->access$100(Lcom/oppo/widget/OppoNumberPicker;Z)V

    .line 707
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker$2;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # invokes: Lcom/oppo/widget/OppoNumberPicker;->changeCurrentByOne(Z)V
    invoke-static {v1, v3}, Lcom/oppo/widget/OppoNumberPicker;->access$100(Lcom/oppo/widget/OppoNumberPicker;Z)V

    goto :goto_0
.end method
