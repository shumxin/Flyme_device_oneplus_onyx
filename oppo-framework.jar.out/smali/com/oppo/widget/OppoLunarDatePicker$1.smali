.class Lcom/oppo/widget/OppoLunarDatePicker$1;
.super Ljava/lang/Object;
.source "OppoLunarDatePicker.java"

# interfaces
.implements Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoLunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoLunarDatePicker;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoLunarDatePicker;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/oppo/widget/OppoNumberPicker;II)V
    .locals 15
    .param p1, "picker"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 176
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # invokes: Lcom/oppo/widget/OppoLunarDatePicker;->updateInputState()V
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$000(Lcom/oppo/widget/OppoLunarDatePicker;)V

    .line 177
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/oppo/widget/OppoLunarDatePicker;->access$100(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 178
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 179
    .local v10, "gregorianYear":I
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v9, v2, 0x1

    .line 180
    .local v9, "gregorianMonth":I
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 181
    .local v8, "gregorianDay":I
    invoke-static {v10, v9, v8}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v12

    .line 185
    .local v12, "lunarDates":[I
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$300(Lcom/oppo/widget/OppoLunarDatePicker;)Lcom/oppo/widget/OppoNumberPicker;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 186
    const/16 v2, 0x1b

    move/from16 v0, p2

    if-le v0, v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    rsub-int/lit8 v4, p2, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 308
    :goto_0
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v5}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    # invokes: Lcom/oppo/widget/OppoLunarDatePicker;->setDate(III)V
    invoke-static {v2, v3, v4, v5}, Lcom/oppo/widget/OppoLunarDatePicker;->access$600(Lcom/oppo/widget/OppoLunarDatePicker;III)V

    .line 317
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # invokes: Lcom/oppo/widget/OppoLunarDatePicker;->updateSpinners()V
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$700(Lcom/oppo/widget/OppoLunarDatePicker;)V

    .line 318
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # invokes: Lcom/oppo/widget/OppoLunarDatePicker;->updateCalendarView()V
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$800(Lcom/oppo/widget/OppoLunarDatePicker;)V

    .line 319
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # invokes: Lcom/oppo/widget/OppoLunarDatePicker;->notifyDateChanged()V
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$900(Lcom/oppo/widget/OppoLunarDatePicker;)V

    .line 320
    return-void

    .line 195
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    const/16 v2, 0x1b

    move/from16 v0, p3

    if-le v0, v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    sub-int v4, p3, p2

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$400(Lcom/oppo/widget/OppoLunarDatePicker;)Lcom/oppo/widget/OppoNumberPicker;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_e

    .line 208
    const/4 v11, 0x0

    .line 209
    .local v11, "leapMonth":I
    const/4 v13, 0x0

    .line 210
    .local v13, "monthCountDays":I
    const/16 v2, 0xa

    move/from16 v0, p2

    if-le v0, v2, :cond_4

    if-nez p3, :cond_4

    .line 211
    const/4 v2, 0x0

    aget v2, v12, v2

    invoke-static {v2}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v11

    .line 212
    const/16 v2, 0xc

    if-ne v11, v2, :cond_3

    .line 213
    const/4 v2, 0x0

    aget v2, v12, v2

    invoke-static {v2}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v13

    .line 223
    :goto_1
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    aget v4, v12, v4

    invoke-static {v4}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLunarYear(I)I

    move-result v4

    sub-int v4, v13, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 215
    :cond_3
    const/4 v2, 0x0

    aget v2, v12, v2

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v13

    goto :goto_1

    .line 226
    :cond_4
    if-nez p2, :cond_6

    const/16 v2, 0xa

    move/from16 v0, p3

    if-le v0, v2, :cond_6

    .line 227
    const/4 v2, 0x0

    aget v2, v12, v2

    invoke-static {v2}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v11

    .line 228
    const/16 v2, 0xc

    if-ne v11, v2, :cond_5

    .line 229
    const/4 v2, 0x0

    aget v2, v12, v2

    invoke-static {v2}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v13

    .line 239
    :goto_2
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    aget v4, v12, v4

    invoke-static {v4}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLunarYear(I)I

    move-result v4

    sub-int/2addr v4, v13

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 231
    :cond_5
    const/4 v2, 0x0

    aget v2, v12, v2

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v13

    goto :goto_2

    .line 242
    :cond_6
    const/4 v2, 0x0

    aget v2, v12, v2

    invoke-static {v2}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v11

    .line 244
    sub-int v2, p3, p2

    if-gez v2, :cond_a

    .line 245
    if-nez v11, :cond_7

    .line 246
    const/4 v2, 0x0

    aget v2, v12, v2

    add-int/lit8 v3, p3, 0x1

    invoke-static {v2, v3}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v13

    .line 260
    :goto_3
    neg-int v13, v13

    .line 279
    :goto_4
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v13}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 250
    :cond_7
    move/from16 v0, p3

    if-ge v0, v11, :cond_8

    .line 251
    const/4 v2, 0x0

    aget v2, v12, v2

    add-int/lit8 v3, p3, 0x1

    invoke-static {v2, v3}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v13

    goto :goto_3

    .line 253
    :cond_8
    move/from16 v0, p3

    if-ne v0, v11, :cond_9

    .line 254
    const/4 v2, 0x0

    aget v2, v12, v2

    invoke-static {v2}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v13

    goto :goto_3

    .line 256
    :cond_9
    const/4 v2, 0x0

    aget v2, v12, v2

    move/from16 v0, p3

    invoke-static {v2, v0}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v13

    goto :goto_3

    .line 263
    :cond_a
    if-nez v11, :cond_b

    .line 264
    const/4 v2, 0x0

    aget v2, v12, v2

    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, v3}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v13

    goto :goto_4

    .line 268
    :cond_b
    move/from16 v0, p2

    if-ge v0, v11, :cond_c

    .line 269
    const/4 v2, 0x0

    aget v2, v12, v2

    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, v3}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v13

    goto :goto_4

    .line 271
    :cond_c
    move/from16 v0, p2

    if-ne v0, v11, :cond_d

    .line 272
    const/4 v2, 0x0

    aget v2, v12, v2

    invoke-static {v2}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v13

    goto :goto_4

    .line 274
    :cond_d
    const/4 v2, 0x0

    aget v2, v12, v2

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v13

    goto :goto_4

    .line 281
    .end local v11    # "leapMonth":I
    .end local v13    # "monthCountDays":I
    :cond_e
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$500(Lcom/oppo/widget/OppoLunarDatePicker;)Lcom/oppo/widget/OppoNumberPicker;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_f

    .line 302
    iget-object v14, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker$1;->this$0:Lcom/oppo/widget/OppoLunarDatePicker;

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v12, v3

    const/4 v4, 0x2

    aget v4, v12, v4

    const/4 v5, 0x3

    aget v5, v12, v5

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/oppo/widget/OppoLunarUtil;->changeALunarYear(Ljava/util/Calendar;IIIII)Ljava/util/Calendar;

    move-result-object v2

    # setter for: Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v14, v2}, Lcom/oppo/widget/OppoLunarDatePicker;->access$202(Lcom/oppo/widget/OppoLunarDatePicker;Ljava/util/Calendar;)Ljava/util/Calendar;

    goto/16 :goto_0

    .line 305
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method
