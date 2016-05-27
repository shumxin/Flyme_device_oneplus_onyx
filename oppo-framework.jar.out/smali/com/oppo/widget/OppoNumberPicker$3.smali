.class Lcom/oppo/widget/OppoNumberPicker$3;
.super Ljava/lang/Object;
.source "OppoNumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 710
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker$3;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 713
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$3;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # getter for: Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/oppo/widget/OppoNumberPicker;->access$000(Lcom/oppo/widget/OppoNumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 714
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0xc020426

    if-ne v0, v1, :cond_0

    .line 715
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$3;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # invokes: Lcom/oppo/widget/OppoNumberPicker;->postChangeCurrentByOneFromLongPress(Z)V
    invoke-static {v0, v2}, Lcom/oppo/widget/OppoNumberPicker;->access$200(Lcom/oppo/widget/OppoNumberPicker;Z)V

    .line 719
    :goto_0
    return v2

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$3;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v1, 0x0

    # invokes: Lcom/oppo/widget/OppoNumberPicker;->postChangeCurrentByOneFromLongPress(Z)V
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->access$200(Lcom/oppo/widget/OppoNumberPicker;Z)V

    goto :goto_0
.end method
