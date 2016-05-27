.class Lcom/oppo/widget/OppoTimePicker$3;
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
    .line 213
    iput-object p1, p0, Lcom/oppo/widget/OppoTimePicker$3;->this$0:Lcom/oppo/widget/OppoTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/oppo/widget/OppoNumberPicker;II)V
    .locals 1
    .param p1, "spinner"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$3;->this$0:Lcom/oppo/widget/OppoTimePicker;

    # invokes: Lcom/oppo/widget/OppoTimePicker;->updateInputState()V
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$000(Lcom/oppo/widget/OppoTimePicker;)V

    .line 246
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$3;->this$0:Lcom/oppo/widget/OppoTimePicker;

    # invokes: Lcom/oppo/widget/OppoTimePicker;->onTimeChanged()V
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$100(Lcom/oppo/widget/OppoTimePicker;)V

    .line 251
    return-void
.end method
