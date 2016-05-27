.class Lcom/oppo/widget/OppoTimePicker$5;
.super Ljava/lang/Object;
.source "OppoTimePicker.java"

# interfaces
.implements Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;


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
    .line 280
    iput-object p1, p0, Lcom/oppo/widget/OppoTimePicker$5;->this$0:Lcom/oppo/widget/OppoTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/oppo/widget/OppoNumberPicker;II)V
    .locals 2
    .param p1, "picker"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$5;->this$0:Lcom/oppo/widget/OppoTimePicker;

    # invokes: Lcom/oppo/widget/OppoTimePicker;->updateInputState()V
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$000(Lcom/oppo/widget/OppoTimePicker;)V

    .line 284
    invoke-virtual {p1}, Lcom/oppo/widget/OppoNumberPicker;->requestFocus()Z

    .line 285
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker$5;->this$0:Lcom/oppo/widget/OppoTimePicker;

    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$5;->this$0:Lcom/oppo/widget/OppoTimePicker;

    # getter for: Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$200(Lcom/oppo/widget/OppoTimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/oppo/widget/OppoTimePicker;->access$202(Lcom/oppo/widget/OppoTimePicker;Z)Z

    .line 286
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$5;->this$0:Lcom/oppo/widget/OppoTimePicker;

    # invokes: Lcom/oppo/widget/OppoTimePicker;->updateAmPmControl()V
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$300(Lcom/oppo/widget/OppoTimePicker;)V

    .line 287
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$5;->this$0:Lcom/oppo/widget/OppoTimePicker;

    # invokes: Lcom/oppo/widget/OppoTimePicker;->onTimeChanged()V
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$100(Lcom/oppo/widget/OppoTimePicker;)V

    .line 292
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
