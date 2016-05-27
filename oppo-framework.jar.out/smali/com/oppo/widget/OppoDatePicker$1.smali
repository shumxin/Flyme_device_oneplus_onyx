.class Lcom/oppo/widget/OppoDatePicker$1;
.super Ljava/lang/Object;
.source "OppoDatePicker.java"

# interfaces
.implements Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoDatePicker;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoDatePicker;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/oppo/widget/OppoNumberPicker;II)V
    .locals 8
    .param p1, "picker"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 197
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # invokes: Lcom/oppo/widget/OppoDatePicker;->updateInputState()V
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$000(Lcom/oppo/widget/OppoDatePicker;)V

    .line 198
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$200(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$100(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 200
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoNumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$200(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 202
    .local v0, "maxDayOfMonth":I
    if-ne p2, v0, :cond_0

    if-ne p3, v4, :cond_0

    .line 209
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$200(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 251
    .end local v0    # "maxDayOfMonth":I
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoDatePicker;->access$200(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/oppo/widget/OppoDatePicker;->access$200(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/oppo/widget/OppoDatePicker;->access$200(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    # invokes: Lcom/oppo/widget/OppoDatePicker;->setDate(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/oppo/widget/OppoDatePicker;->access$600(Lcom/oppo/widget/OppoDatePicker;III)V

    .line 257
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # invokes: Lcom/oppo/widget/OppoDatePicker;->updateSpinners()V
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$700(Lcom/oppo/widget/OppoDatePicker;)V

    .line 258
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # invokes: Lcom/oppo/widget/OppoDatePicker;->updateCalendarView()V
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$800(Lcom/oppo/widget/OppoDatePicker;)V

    .line 259
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # invokes: Lcom/oppo/widget/OppoDatePicker;->notifyDateChanged()V
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$900(Lcom/oppo/widget/OppoDatePicker;)V

    .line 260
    return-void

    .line 211
    .restart local v0    # "maxDayOfMonth":I
    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, v0, :cond_1

    .line 218
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$200(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$200(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 223
    .end local v0    # "maxDayOfMonth":I
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$400(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoNumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 224
    if-ne p2, v7, :cond_3

    if-nez p3, :cond_3

    .line 231
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$200(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 233
    :cond_3
    if-nez p2, :cond_4

    if-ne p3, v7, :cond_4

    .line 240
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$200(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 243
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$200(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 245
    :cond_5
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$500(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoNumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 246
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$1;->this$0:Lcom/oppo/widget/OppoDatePicker;

    # getter for: Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$200(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, p3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 248
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
