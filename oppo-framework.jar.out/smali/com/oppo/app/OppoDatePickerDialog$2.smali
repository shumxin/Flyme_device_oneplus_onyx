.class Lcom/oppo/app/OppoDatePickerDialog$2;
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
    .line 182
    iput-object p1, p0, Lcom/oppo/app/OppoDatePickerDialog$2;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 186
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog$2;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;
    invoke-static {v0}, Lcom/oppo/app/OppoDatePickerDialog;->access$000(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoLunarDatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLunarDatePicker;->getVisibility()I

    move-result v0

    if-ne v4, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog$2;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;
    invoke-static {v0}, Lcom/oppo/app/OppoDatePickerDialog;->access$000(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoLunarDatePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/app/OppoDatePickerDialog$2;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;
    invoke-static {v1}, Lcom/oppo/app/OppoDatePickerDialog;->access$100(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoDatePicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDatePicker;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/app/OppoDatePickerDialog$2;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;
    invoke-static {v2}, Lcom/oppo/app/OppoDatePickerDialog;->access$100(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoDatePicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDatePicker;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/app/OppoDatePickerDialog$2;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;
    invoke-static {v3}, Lcom/oppo/app/OppoDatePickerDialog;->access$100(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoDatePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/widget/OppoLunarDatePicker;->updateDate(III)V

    .line 189
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog$2;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;
    invoke-static {v0}, Lcom/oppo/app/OppoDatePickerDialog;->access$000(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoLunarDatePicker;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/oppo/widget/OppoLunarDatePicker;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog$2;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;
    invoke-static {v0}, Lcom/oppo/app/OppoDatePickerDialog;->access$100(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoDatePicker;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oppo/widget/OppoDatePicker;->setVisibility(I)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog$2;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/oppo/app/OppoDatePickerDialog;->access$300(Lcom/oppo/app/OppoDatePickerDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog$2;->this$0:Lcom/oppo/app/OppoDatePickerDialog;

    # getter for: Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/oppo/app/OppoDatePickerDialog;->access$200(Lcom/oppo/app/OppoDatePickerDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    return-void
.end method
