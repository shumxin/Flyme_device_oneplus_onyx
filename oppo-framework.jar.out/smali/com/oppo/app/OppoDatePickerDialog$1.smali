.class Lcom/oppo/app/OppoDatePickerDialog$1;
.super Ljava/lang/Object;
.source "OppoDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/app/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/app/OppoDatePickerDialog;


# direct methods
.method constructor <init>(Lcom/oppo/app/OppoDatePickerDialog;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/oppo/app/OppoDatePickerDialog$1;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 169
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 170
    .local v0, "timeArray":[I
    iget-object v1, p0, Lcom/oppo/app/OppoDatePickerDialog$1;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;
    invoke-static {v1}, Lcom/oppo/app/OppoDatePickerDialog;->access$000(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoLunarDatePicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->getLunarDate()[I

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/oppo/app/OppoDatePickerDialog$1;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;
    invoke-static {v1}, Lcom/oppo/app/OppoDatePickerDialog;->access$100(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoDatePicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDatePicker;->getVisibility()I

    move-result v1

    if-ne v5, v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/oppo/app/OppoDatePickerDialog$1;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;
    invoke-static {v1}, Lcom/oppo/app/OppoDatePickerDialog;->access$100(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoDatePicker;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/app/OppoDatePickerDialog$1;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;
    invoke-static {v2}, Lcom/oppo/app/OppoDatePickerDialog;->access$000(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoLunarDatePicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/app/OppoDatePickerDialog$1;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;
    invoke-static {v3}, Lcom/oppo/app/OppoDatePickerDialog;->access$000(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoLunarDatePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/widget/OppoLunarDatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog$1;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;
    invoke-static {v4}, Lcom/oppo/app/OppoDatePickerDialog;->access$000(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoLunarDatePicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/widget/OppoLunarDatePicker;->getDayOfMonth()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/oppo/widget/OppoDatePicker;->updateDate(III)V

    .line 174
    iget-object v1, p0, Lcom/oppo/app/OppoDatePickerDialog$1;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;
    invoke-static {v1}, Lcom/oppo/app/OppoDatePickerDialog;->access$000(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoLunarDatePicker;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/oppo/widget/OppoLunarDatePicker;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/oppo/app/OppoDatePickerDialog$1;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;
    invoke-static {v1}, Lcom/oppo/app/OppoDatePickerDialog;->access$100(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoDatePicker;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/oppo/widget/OppoDatePicker;->setVisibility(I)V

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/oppo/app/OppoDatePickerDialog$1;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/oppo/app/OppoDatePickerDialog;->access$200(Lcom/oppo/app/OppoDatePickerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/oppo/app/OppoDatePickerDialog$1;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/oppo/app/OppoDatePickerDialog;->access$300(Lcom/oppo/app/OppoDatePickerDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 179
    return-void
.end method
