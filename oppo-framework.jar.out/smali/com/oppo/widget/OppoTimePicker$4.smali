.class Lcom/oppo/widget/OppoTimePicker$4;
.super Ljava/lang/Object;
.source "OppoTimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoTimePicker;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoTimePicker;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/oppo/widget/OppoTimePicker$4;->this$0:Lcom/oppo/widget/OppoTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 270
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker$4;->this$0:Lcom/oppo/widget/OppoTimePicker;

    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$4;->this$0:Lcom/oppo/widget/OppoTimePicker;

    # getter for: Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$200(Lcom/oppo/widget/OppoTimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/oppo/widget/OppoTimePicker;->access$202(Lcom/oppo/widget/OppoTimePicker;Z)Z

    .line 271
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$4;->this$0:Lcom/oppo/widget/OppoTimePicker;

    # invokes: Lcom/oppo/widget/OppoTimePicker;->updateAmPmControl()V
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$300(Lcom/oppo/widget/OppoTimePicker;)V

    .line 272
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
