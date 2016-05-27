.class public Lcom/oppo/app/OppoDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "OppoDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;
.implements Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field public static final LUNAR_DEFAULT:I = 0x2

.field private static final MONTH:Ljava/lang/String; = "month"

.field public static final NO_BUTTON:I = 0x3

.field public static final SOLAR_DEFAULT:I = 0x1

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCallBack:Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;

.field private mDatePicker:Lcom/oppo/widget/OppoDatePicker;

.field private mIsLunarDate:Z

.field private mLeftBtn:Landroid/widget/Button;

.field private final mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

.field private mRightBtn:Landroid/widget/Button;

.field private mShowWhich:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "isLunar"    # Z

    .prologue
    .line 128
    const/4 v2, 0x0

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/oppo/app/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZI)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "isLunar"    # Z
    .param p8, "defaultShow"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 142
    iput-boolean p7, p0, Lcom/oppo/app/OppoDatePickerDialog;->mIsLunarDate:Z

    .line 143
    iput p8, p0, Lcom/oppo/app/OppoDatePickerDialog;->mShowWhich:I

    .line 144
    iput-object p3, p0, Lcom/oppo/app/OppoDatePickerDialog;->mCallBack:Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;

    .line 145
    invoke-virtual {p0}, Lcom/oppo/app/OppoDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 146
    .local v3, "themeContext":Landroid/content/Context;
    const/4 v4, -0x1

    const v5, 0xc040526

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p0}, Lcom/oppo/app/OppoDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 147
    const/4 v5, -0x2

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v4, 0x0

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v4}, Lcom/oppo/app/OppoDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 149
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/oppo/app/OppoDatePickerDialog;->setIcon(I)V

    .line 150
    const v4, 0xc04044a

    invoke-virtual {p0, v4}, Lcom/oppo/app/OppoDatePickerDialog;->setTitle(I)V

    .line 152
    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 154
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0xc09040f

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 162
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    const v4, 0xc02041e

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;

    .line 163
    const v4, 0xc02041f

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;

    .line 165
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;

    new-instance v5, Lcom/oppo/app/OppoDatePickerDialog$1;

    invoke-direct {v5, p0}, Lcom/oppo/app/OppoDatePickerDialog$1;-><init>(Lcom/oppo/app/OppoDatePickerDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;

    new-instance v5, Lcom/oppo/app/OppoDatePickerDialog$2;

    invoke-direct {v5, p0}, Lcom/oppo/app/OppoDatePickerDialog$2;-><init>(Lcom/oppo/app/OppoDatePickerDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    new-instance v4, Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {p0}, Lcom/oppo/app/OppoDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/oppo/widget/OppoLunarDatePicker;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    .line 198
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoLunarDatePicker;->setCalendarViewShown(Z)V

    .line 200
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 203
    .local v2, "p":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v4, Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {p0}, Lcom/oppo/app/OppoDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/oppo/widget/OppoDatePicker;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    .line 206
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoDatePicker;->setCalendarViewShown(Z)V

    .line 207
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoLunarDatePicker;->setVisibility(I)V

    .line 210
    iget-boolean v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mIsLunarDate:Z

    if-nez v4, :cond_1

    .line 211
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oppo/app/OppoDatePickerDialog;->setView(Landroid/view/View;)V

    .line 233
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v4, p4, p5, p6, p0}, Lcom/oppo/widget/OppoDatePicker;->init(IIILcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 234
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v4, p4, p5, p6, p0}, Lcom/oppo/widget/OppoLunarDatePicker;->init(IIILcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;)V

    .line 235
    return-void

    .line 214
    :cond_1
    iget v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mShowWhich:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 215
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 216
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoLunarDatePicker;->setVisibility(I)V

    .line 218
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoDatePicker;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_2
    iget v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mShowWhich:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 220
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 222
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoLunarDatePicker;->setVisibility(I)V

    .line 223
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoDatePicker;->setVisibility(I)V

    goto :goto_0

    .line 224
    :cond_3
    iget v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mShowWhich:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 225
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoLunarDatePicker;->setVisibility(I)V

    .line 228
    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoDatePicker;->setVisibility(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I
    .param p6, "isLunar"    # Z

    .prologue
    .line 102
    const/4 v2, 0x0

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/oppo/app/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZI)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZI)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I
    .param p6, "isLunar"    # Z
    .param p7, "defaultShow"    # I

    .prologue
    .line 114
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oppo/app/OppoDatePickerDialog;-><init>(Landroid/content/Context;ILcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;IIIZI)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoLunarDatePicker;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoDatePickerDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/app/OppoDatePickerDialog;)Lcom/oppo/widget/OppoDatePicker;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoDatePickerDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/app/OppoDatePickerDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoDatePickerDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLeftBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/app/OppoDatePickerDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoDatePickerDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mRightBtn:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public getDatePicker()Lcom/oppo/widget/OppoDatePicker;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    return-object v0
.end method

.method public getLunarDatePicker()Lcom/oppo/widget/OppoLunarDatePicker;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x1

    .line 238
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mCallBack:Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLunarDatePicker;->clearFocus()V

    .line 240
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoDatePicker;->clearFocus()V

    .line 241
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLunarDatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoLunarDatePicker;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v6

    .line 244
    .local v6, "lunarDate":[I
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLunarDatePicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mCallBack:Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    const/4 v2, 0x0

    aget v2, v6, v2

    aget v3, v6, v7

    const/4 v4, 0x2

    aget v4, v6, v4

    iget-object v5, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    aget v7, v6, v7

    invoke-virtual {v5, v7}, Lcom/oppo/widget/OppoLunarDatePicker;->isLeapMonth(I)Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;->onLunarDateSet(Lcom/oppo/widget/OppoLunarDatePicker;IIIZ)V

    .line 252
    .end local v6    # "lunarDate":[I
    :cond_0
    :goto_0
    return-void

    .line 248
    .restart local v6    # "lunarDate":[I
    :cond_1
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mCallBack:Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    iget-object v2, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoDatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoDatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoDatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oppo/app/OppoDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/oppo/widget/OppoDatePicker;III)V

    goto :goto_0
.end method

.method public onDateChanged(Lcom/oppo/widget/OppoDatePicker;III)V
    .locals 2
    .param p1, "view"    # Lcom/oppo/widget/OppoDatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/oppo/widget/OppoDatePicker;->init(IIILcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 260
    return-void
.end method

.method public onLunarDateChanged(Lcom/oppo/widget/OppoLunarDatePicker;III)V
    .locals 2
    .param p1, "view"    # Lcom/oppo/widget/OppoLunarDatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/oppo/widget/OppoLunarDatePicker;->init(IIILcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;)V

    .line 256
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 314
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 315
    .local v2, "year":I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 316
    .local v1, "month":I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 317
    .local v0, "day":I
    iget-object v3, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/oppo/widget/OppoLunarDatePicker;->init(IIILcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;)V

    .line 318
    iget-object v3, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/oppo/widget/OppoDatePicker;->init(IIILcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 319
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 304
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 305
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string v1, "month"

    iget-object v2, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const-string v1, "day"

    iget-object v2, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoLunarDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    return-object v0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mDatePicker:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/widget/OppoDatePicker;->updateDate(III)V

    .line 300
    return-void
.end method

.method public updateLunarDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/oppo/app/OppoDatePickerDialog;->mLunaDatePicker:Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/widget/OppoLunarDatePicker;->updateDate(III)V

    .line 289
    return-void
.end method
