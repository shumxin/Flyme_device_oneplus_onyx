.class public Lcom/oppo/widget/OppoLunarDatePicker;
.super Landroid/widget/FrameLayout;
.source "OppoLunarDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoLunarDatePicker$SavedState;,
        Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x7f4

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x776

.field private static final PICKER_CHILD_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static sMaxDate:Ljava/util/Calendar;

.field private static sMinDate:Ljava/util/Calendar;


# instance fields
.field private chineseNumber:[Ljava/lang/String;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private final mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 61
    const-class v0, Lcom/oppo/widget/OppoLunarDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    .line 110
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/16 v1, 0x776

    const/4 v3, 0x1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 112
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    .line 115
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    const/16 v1, 0x7f4

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0x17

    const/16 v5, 0x3b

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoLunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 152
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoLunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 156
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u6b63\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u4e8c\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u4e09\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u56db\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "\u4e94\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "\u516d\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "\u4e03\u6708"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "\u516b\u6708"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "\u4e5d\u6708"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "\u5341\u6708"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "\u5341\u4e00"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "\u5341\u4e8c"

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 92
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u4e00"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u4e8c"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u4e09"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u56db"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "\u4e94"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "\u516d"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "\u4e03"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "\u516b"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "\u4e5d"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "\u5341"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "\u5341\u4e00"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "\u5341\u4e8c"

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->chineseNumber:[Ljava/lang/String;

    .line 103
    const/16 v0, 0xc

    iput v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mNumberOfMonths:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mIsEnabled:Z

    .line 159
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 162
    const/4 v11, 0x1

    .line 163
    .local v11, "spinnersShown":Z
    const/4 v7, 0x1

    .line 164
    .local v7, "calendarViewShown":Z
    const/16 v12, 0x776

    .line 165
    .local v12, "startYear":I
    const/16 v1, 0x7f4

    .line 166
    .local v1, "endYear":I
    const v9, 0xc090402

    .line 169
    .local v9, "layoutResourceId":I
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 171
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x1

    invoke-virtual {v8, v9, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 173
    new-instance v10, Lcom/oppo/widget/OppoLunarDatePicker$1;

    invoke-direct {v10, p0}, Lcom/oppo/widget/OppoLunarDatePicker$1;-><init>(Lcom/oppo/widget/OppoLunarDatePicker;)V

    .line 323
    .local v10, "onChangeListener":Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;
    const v0, 0xc02042e

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 326
    const v0, 0xc020430

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoNumberPicker;

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    .line 330
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 331
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, v10}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 333
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 335
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 336
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 337
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 345
    :goto_0
    const v0, 0xc02042f

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoNumberPicker;

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    .line 346
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 347
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mNumberOfMonths:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 348
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 350
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, v10}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 352
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 354
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 355
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 356
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 363
    :goto_1
    const v0, 0xc020431

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoNumberPicker;

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    .line 364
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 365
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, v10}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 367
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 369
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 370
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 371
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 380
    :goto_2
    if-nez v11, :cond_4

    if-nez v7, :cond_4

    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->setSpinnersShown(Z)V

    .line 388
    :goto_3
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 389
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v12, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 390
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/widget/OppoLunarDatePicker;->setMinDate(J)V

    .line 393
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 394
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0x17

    const/16 v5, 0x3b

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 395
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/oppo/widget/OppoLunarDatePicker;->setMaxDate(J)V

    .line 398
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 399
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/oppo/widget/OppoLunarDatePicker;->init(IIILcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;)V

    .line 403
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->reorderSpinners()V

    .line 406
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    .line 408
    .local v6, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->setContentDescriptions()V

    .line 411
    :cond_0
    return-void

    .line 340
    .end local v6    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_1
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 341
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    const-string v2, "mDaySpinner.getChildCount() != 3,It isn\'t init ok."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 359
    :cond_2
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 360
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    const-string v2, "mMonthSpinner.getChildCount() != 3,It isn\'t init ok."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 374
    :cond_3
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 375
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    const-string v2, "mYearSpinner.getChildCount() != 3,It isn\'t init ok."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 383
    :cond_4
    invoke-virtual {p0, v11}, Lcom/oppo/widget/OppoLunarDatePicker;->setSpinnersShown(Z)V

    .line 384
    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoLunarDatePicker;->setCalendarViewShown(Z)V

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoLunarDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoLunarDatePicker;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoLunarDatePicker;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoLunarDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoLunarDatePicker;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoLunarDatePicker;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoLunarDatePicker;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoLunarDatePicker;)Lcom/oppo/widget/OppoNumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoLunarDatePicker;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoLunarDatePicker;)Lcom/oppo/widget/OppoNumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoLunarDatePicker;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoLunarDatePicker;)Lcom/oppo/widget/OppoNumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoLunarDatePicker;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoLunarDatePicker;III)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoLunarDatePicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoLunarDatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoLunarDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoLunarDatePicker;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoLunarDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoLunarDatePicker;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoLunarDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoLunarDatePicker;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 602
    if-nez p1, :cond_0

    .line 603
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 608
    :goto_0
    return-object v2

    .line 605
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 606
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 607
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 706
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 874
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->sendAccessibilityEvent(I)V

    .line 875
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;->onLunarDateChanged(Lcom/oppo/widget/OppoLunarDatePicker;III)V

    .line 879
    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 5

    .prologue
    .line 618
    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 619
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 620
    .local v1, "order":[C
    array-length v2, v1

    .line 621
    .local v2, "spinnerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 622
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    .line 636
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 624
    :sswitch_0
    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 625
    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->setImeOptions(Lcom/oppo/widget/OppoNumberPicker;II)V

    .line 621
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :sswitch_1
    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 629
    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->setImeOptions(Lcom/oppo/widget/OppoNumberPicker;II)V

    goto :goto_1

    .line 632
    :sswitch_2
    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 633
    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->setImeOptions(Lcom/oppo/widget/OppoNumberPicker;II)V

    goto :goto_1

    .line 639
    :cond_0
    return-void

    .line 622
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 911
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 913
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 914
    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    const-string v3, "mDaySpinner.getChildCount() != 3,It isn\'t init ok.return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :goto_0
    return-void

    .line 916
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 917
    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    const-string v3, "mMonthSpinner.getChildCount() != 3,It isn\'t init ok.return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 919
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 920
    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    const-string v3, "mYearSpinner.getChildCount() != 3,It isn\'t init ok.return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 925
    :cond_2
    const v2, 0xc040453

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 928
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 929
    const v2, 0xc040454

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 931
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2, v4}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 935
    const v2, 0xc040455

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 936
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 937
    const v2, 0xc040456

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 939
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2, v4}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 943
    const v2, 0xc040457

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 944
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 946
    const v2, 0xc040458

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 947
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2, v4}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 584
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 586
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 587
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    .line 588
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    .line 589
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoLunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 712
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 713
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Lcom/oppo/widget/OppoNumberPicker;II)V
    .locals 4
    .param p1, "spinner"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 894
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 895
    const/4 v0, 0x5

    .line 901
    .local v0, "imeOptions":I
    :goto_0
    invoke-virtual {p1}, Lcom/oppo/widget/OppoNumberPicker;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 902
    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    const-string v3, "spinner.getChildCount() != 3,It isn\'t init ok.return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :goto_1
    return-void

    .line 897
    .end local v0    # "imeOptions":I
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "imeOptions":I
    goto :goto_0

    .line 906
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 907
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_1
.end method

.method private updateCalendarView()V
    .locals 0

    .prologue
    .line 847
    return-void
.end method

.method private updateInputState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 956
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 957
    .local v0, "context":Landroid/content/Context;
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 959
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 960
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 961
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 962
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 964
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 965
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 966
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 967
    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 968
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 27

    .prologue
    .line 721
    const/4 v9, 0x0

    .line 722
    .local v9, "isLeapYear":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 723
    .local v7, "gregorianYear":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Ljava/util/Calendar;->get(I)I

    move-result v24

    add-int/lit8 v6, v24, 0x1

    .line 724
    .local v6, "gregorianMonth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    invoke-virtual/range {v24 .. v25}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 725
    .local v5, "gregorianDay":I
    invoke-static {v7, v6, v5}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v11

    .line 726
    .local v11, "lunarDate":[I
    const/16 v24, 0x0

    aget v24, v11, v24

    invoke-static/range {v24 .. v24}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v10

    .line 727
    .local v10, "leapMonth":I
    const/16 v24, 0x1

    aget v23, v11, v24

    .line 728
    .local v23, "monthIndexDisplay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/oppo/widget/OppoLunarUtil;->getLunarDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v12

    .line 730
    .local v12, "lunarDateString":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 731
    add-int/lit8 v23, v23, -0x1

    .line 738
    :cond_0
    :goto_0
    if-eqz v10, :cond_4

    .line 739
    const/16 v24, 0xd

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoLunarDatePicker;->mNumberOfMonths:I

    .line 740
    const/4 v9, 0x1

    .line 745
    :goto_1
    const/16 v24, 0x0

    aget v24, v11, v24

    const/16 v25, 0x1

    aget v25, v11, v25

    invoke-static/range {v24 .. v25}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v22

    .line 746
    .local v22, "monthCountDays":I
    if-eqz v10, :cond_1

    move/from16 v0, v23

    if-ne v0, v10, :cond_1

    const-string v24, "\u95f0"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 755
    const/16 v24, 0x0

    aget v24, v11, v24

    invoke-static/range {v24 .. v24}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v22

    .line 759
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v24, v0

    sget-object v25, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual/range {v24 .. v25}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v25, v11, v25

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mNumberOfMonths:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 788
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mNumberOfMonths:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v4, v0, [Ljava/lang/String;

    .line 789
    .local v4, "displayedMonths":[Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 790
    const/4 v8, 0x0

    .line 791
    .local v8, "i":I
    :goto_3
    if-ge v8, v10, :cond_7

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v8

    aput-object v24, v4, v8

    .line 791
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 732
    .end local v4    # "displayedMonths":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v22    # "monthCountDays":I
    :cond_2
    move/from16 v0, v23

    if-ge v0, v10, :cond_3

    if-eqz v10, :cond_3

    .line 733
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_0

    .line 734
    :cond_3
    move/from16 v0, v23

    if-ne v0, v10, :cond_0

    const-string v24, "\u95f0"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 735
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_0

    .line 742
    :cond_4
    const/16 v24, 0xc

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoLunarDatePicker;->mNumberOfMonths:I

    goto/16 :goto_1

    .line 768
    .restart local v22    # "monthCountDays":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v24, v0

    sget-object v25, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual/range {v24 .. v25}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v25, v11, v25

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_2

    .line 778
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mNumberOfMonths:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_2

    .line 794
    .restart local v4    # "displayedMonths":[Ljava/lang/String;
    .restart local v8    # "i":I
    :cond_7
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "\u95f0"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->chineseNumber:[Ljava/lang/String;

    move-object/from16 v25, v0

    add-int/lit8 v26, v10, -0x1

    aget-object v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v4, v10

    .line 795
    add-int/lit8 v8, v8, 0x1

    .line 796
    :goto_4
    const/16 v24, 0xd

    move/from16 v0, v24

    if-ge v8, v0, :cond_9

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v24, v0

    add-int/lit8 v25, v8, -0x1

    aget-object v24, v24, v25

    aput-object v24, v4, v8

    .line 796
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 800
    .end local v8    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->getMinValue()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/oppo/widget/OppoNumberPicker;->getMaxValue()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-static/range {v24 .. v26}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "displayedMonths":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 803
    .restart local v4    # "displayedMonths":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/oppo/widget/OppoNumberPicker;->getMaxValue()I

    move-result v13

    .line 806
    .local v13, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/oppo/widget/OppoNumberPicker;->getMinValue()I

    move-result v17

    .line 807
    .local v17, "min":I
    sub-int v24, v13, v17

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    new-array v3, v0, [Ljava/lang/String;

    .line 809
    .local v3, "displayedDays":[Ljava/lang/String;
    move/from16 v8, v17

    .restart local v8    # "i":I
    :goto_5
    if-gt v8, v13, :cond_a

    .line 810
    sub-int v24, v8, v17

    invoke-static {v8}, Lcom/oppo/widget/OppoLunarUtil;->chneseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v3, v24

    .line 809
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 812
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 815
    sget-object v24, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 816
    .local v20, "minGregorianYear":I
    sget-object v24, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Ljava/util/Calendar;->get(I)I

    move-result v24

    add-int/lit8 v19, v24, 0x1

    .line 817
    .local v19, "minGregorianMonth":I
    sget-object v24, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/16 v25, 0x5

    invoke-virtual/range {v24 .. v25}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 818
    .local v18, "minGregorianDay":I
    move/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v21

    .line 821
    .local v21, "minLunarDate":[I
    sget-object v24, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 822
    .local v15, "maxGregorianYear":I
    sget-object v24, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Ljava/util/Calendar;->get(I)I

    move-result v24

    add-int/lit8 v14, v24, 0x1

    .line 823
    .local v14, "maxGregorianMonth":I
    invoke-static {v15, v14, v14}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v16

    .line 826
    .local v16, "maxLunarDate":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v25, v21, v25

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v25, v16, v25

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v25, v11, v25

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v25, v11, v25

    invoke-virtual/range {v24 .. v25}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 842
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLunarDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLunarDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 666
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getLeapMonth()I
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v0

    return v0
.end method

.method public getLunarDate()[I
    .locals 6

    .prologue
    .line 977
    iget-object v4, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 978
    .local v2, "gregorianYear":I
    iget-object v4, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 979
    .local v1, "gregorianMonth":I
    iget-object v4, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 980
    .local v0, "gregorianDay":I
    invoke-static {v2, v1, v0}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v3

    .line 981
    .local v3, "lunarDate":[I
    return-object v3
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 461
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 424
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;

    .prologue
    .line 699
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoLunarDatePicker;->setDate(III)V

    .line 700
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateSpinners()V

    .line 701
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateCalendarView()V

    .line 702
    iput-object p4, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoLunarDatePicker$OnDateChangedListener;

    .line 703
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLeapMonth(I)Z
    .locals 2
    .param p1, "month"    # I

    .prologue
    const/4 v0, 0x1

    .line 987
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 523
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 524
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLunarDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 525
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 514
    const/16 v0, 0x14

    .line 516
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x14

    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 677
    move-object v0, p1

    check-cast v0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;

    .line 678
    .local v0, "ss":Lcom/oppo/widget/OppoLunarDatePicker$SavedState;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 679
    # getter for: Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mYear:I
    invoke-static {v0}, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->access$1100(Lcom/oppo/widget/OppoLunarDatePicker$SavedState;)I

    move-result v1

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->access$1200(Lcom/oppo/widget/OppoLunarDatePicker$SavedState;)I

    move-result v2

    # getter for: Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->mDay:I
    invoke-static {v0}, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;->access$1300(Lcom/oppo/widget/OppoLunarDatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/widget/OppoLunarDatePicker;->setDate(III)V

    .line 680
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateSpinners()V

    .line 681
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateCalendarView()V

    .line 682
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 670
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 671
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoLunarDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/oppo/widget/OppoLunarDatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 553
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 497
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 493
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setEnabled(Z)V

    .line 494
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setEnabled(Z)V

    .line 495
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setEnabled(Z)V

    .line 496
    iput-boolean p1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 472
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 473
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 475
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxDate failed!:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_0
    return-void

    .line 479
    :cond_0
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 480
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 482
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateCalendarView()V

    .line 484
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 435
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 436
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 438
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMinDate failed!:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_0
    return-void

    .line 442
    :cond_0
    sget-object v0, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 443
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mCurrentDate:Ljava/util/Calendar;

    sget-object v1, Lcom/oppo/widget/OppoLunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 445
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateCalendarView()V

    .line 447
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 570
    iget-object v1, p0, Lcom/oppo/widget/OppoLunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 571
    return-void

    .line 570
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 652
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoLunarDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoLunarDatePicker;->setDate(III)V

    .line 656
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateSpinners()V

    .line 657
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->updateCalendarView()V

    .line 658
    invoke-direct {p0}, Lcom/oppo/widget/OppoLunarDatePicker;->notifyDateChanged()V

    goto :goto_0
.end method
