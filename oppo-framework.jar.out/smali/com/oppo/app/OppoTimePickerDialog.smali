.class public Lcom/oppo/app/OppoTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "OppoTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/app/OppoTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mCallback:Lcom/oppo/app/OppoTimePickerDialog$OnTimeSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/oppo/app/OppoTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/oppo/app/OppoTimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 92
    iput-object p3, p0, Lcom/oppo/app/OppoTimePickerDialog;->mCallback:Lcom/oppo/app/OppoTimePickerDialog$OnTimeSetListener;

    .line 93
    iput p4, p0, Lcom/oppo/app/OppoTimePickerDialog;->mInitialHourOfDay:I

    .line 94
    iput p5, p0, Lcom/oppo/app/OppoTimePickerDialog;->mInitialMinute:I

    .line 95
    iput-boolean p6, p0, Lcom/oppo/app/OppoTimePickerDialog;->mIs24HourView:Z

    .line 97
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/oppo/app/OppoTimePickerDialog;->setIcon(I)V

    .line 98
    const v3, 0xc04044b

    invoke-virtual {p0, v3}, Lcom/oppo/app/OppoTimePickerDialog;->setTitle(I)V

    .line 100
    invoke-virtual {p0}, Lcom/oppo/app/OppoTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 101
    .local v1, "themeContext":Landroid/content/Context;
    const/4 v3, -0x1

    const v5, 0xc040526

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v3, v5, p0}, Lcom/oppo/app/OppoTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    const/4 v5, -0x2

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v3, v4

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v3}, Lcom/oppo/app/OppoTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 105
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 107
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0xc090413

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 108
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/oppo/app/OppoTimePickerDialog;->setView(Landroid/view/View;)V

    .line 109
    const v3, 0xc020433

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oppo/widget/OppoTimePicker;

    iput-object v3, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    .line 112
    iget-object v3, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    iget-boolean v4, p0, Lcom/oppo/app/OppoTimePickerDialog;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 113
    iget-object v3, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    iget v4, p0, Lcom/oppo/app/OppoTimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 114
    iget-object v3, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    iget v4, p0, Lcom/oppo/app/OppoTimePickerDialog;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 115
    iget-object v3, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v3, p0}, Lcom/oppo/widget/OppoTimePicker;->setOnTimeChangedListener(Lcom/oppo/widget/OppoTimePicker$OnTimeChangedListener;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/app/OppoTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/oppo/app/OppoTimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 78
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oppo/app/OppoTimePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/app/OppoTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 79
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oppo/app/OppoTimePickerDialog;->mCallback:Lcom/oppo/app/OppoTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoTimePicker;->clearFocus()V

    .line 121
    iget-object v0, p0, Lcom/oppo/app/OppoTimePickerDialog;->mCallback:Lcom/oppo/app/OppoTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    iget-object v2, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/oppo/app/OppoTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/oppo/widget/OppoTimePicker;II)V

    .line 124
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 147
    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, "hour":I
    const-string v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 149
    .local v1, "minute":I
    iget-object v2, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 150
    iget-object v2, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 151
    iget-object v2, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 152
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string v1, "minute"

    iget-object v2, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v1, "is24hour"

    iget-object v2, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoTimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    return-object v0
.end method

.method public onTimeChanged(Lcom/oppo/widget/OppoTimePicker;II)V
    .locals 0
    .param p1, "view"    # Lcom/oppo/widget/OppoTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 133
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 128
    iget-object v0, p0, Lcom/oppo/app/OppoTimePickerDialog;->mOppoTimePicker:Lcom/oppo/widget/OppoTimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 129
    return-void
.end method
