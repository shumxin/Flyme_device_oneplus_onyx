.class Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;
.super Ljava/lang/Object;
.source "OppoNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdjustScrollerCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoNumberPicker;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoNumberPicker;)V
    .locals 0

    .prologue
    .line 2130
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2133
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # setter for: Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->access$1302(Lcom/oppo/widget/OppoNumberPicker;I)I

    .line 2134
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # getter for: Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoNumberPicker;->access$1400(Lcom/oppo/widget/OppoNumberPicker;)I

    move-result v0

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # getter for: Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/oppo/widget/OppoNumberPicker;->access$1500(Lcom/oppo/widget/OppoNumberPicker;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # invokes: Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V
    invoke-static {v0}, Lcom/oppo/widget/OppoNumberPicker;->access$1600(Lcom/oppo/widget/OppoNumberPicker;)V

    .line 2136
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # getter for: Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J
    invoke-static {v1}, Lcom/oppo/widget/OppoNumberPicker;->access$1700(Lcom/oppo/widget/OppoNumberPicker;)J

    move-result-wide v2

    # invokes: Lcom/oppo/widget/OppoNumberPicker;->showInputControls(J)V
    invoke-static {v0, v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->access$1800(Lcom/oppo/widget/OppoNumberPicker;J)V

    .line 2146
    :goto_0
    return-void

    .line 2140
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # getter for: Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/oppo/widget/OppoNumberPicker;->access$1400(Lcom/oppo/widget/OppoNumberPicker;)I

    move-result v0

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # getter for: Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/oppo/widget/OppoNumberPicker;->access$1500(Lcom/oppo/widget/OppoNumberPicker;)I

    move-result v2

    sub-int v4, v0, v2

    .line 2141
    .local v4, "deltaY":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # getter for: Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I
    invoke-static {v2}, Lcom/oppo/widget/OppoNumberPicker;->access$1900(Lcom/oppo/widget/OppoNumberPicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 2142
    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # getter for: Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lcom/oppo/widget/OppoNumberPicker;->access$1900(Lcom/oppo/widget/OppoNumberPicker;)I

    move-result v0

    neg-int v0, v0

    :goto_1
    add-int/2addr v4, v0

    .line 2144
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # getter for: Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/oppo/widget/OppoNumberPicker;->access$2000(Lcom/oppo/widget/OppoNumberPicker;)Landroid/widget/Scroller;

    move-result-object v0

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2145
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoNumberPicker;->invalidate()V

    goto :goto_0

    .line 2142
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # getter for: Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lcom/oppo/widget/OppoNumberPicker;->access$1900(Lcom/oppo/widget/OppoNumberPicker;)I

    move-result v0

    goto :goto_1
.end method
