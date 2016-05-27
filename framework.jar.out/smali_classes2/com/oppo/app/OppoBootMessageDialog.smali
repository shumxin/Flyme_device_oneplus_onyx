.class public Lcom/oppo/app/OppoBootMessageDialog;
.super Landroid/app/ProgressDialog;
.source "OppoBootMessageDialog.java"


# static fields
.field private static final DBG:Z = false

.field private static final SPLIT_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoBootMessageDialog"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const v0, 0xc030402

    invoke-direct {p0, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 60
    const-string v0, "OppoBootMessageDialog"

    const-string v1, "OppoBootMessageDialog"

    invoke-static {v0, v1}, Lcom/oppo/util/OppoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const-string v1, "OppoBootMessageDialog"

    const-string v2, "create"

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/oppo/app/OppoBootMessageDialog;

    invoke-direct {v0, p0}, Lcom/oppo/app/OppoBootMessageDialog;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 142
    return-object v0
.end method

.method private getPercentId()I
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/oppo/app/OppoBootMessageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0xc0204c1

    invoke-static {v0, v1}, Lcom/oppo/util/OppoContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private initWindow(Landroid/view/Window;)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/oppo/app/OppoBootMessageDialog;->setWindowType(Landroid/view/Window;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/oppo/app/OppoBootMessageDialog;->setWindowFlags(Landroid/view/Window;)V

    .line 162
    const/16 v1, 0x77

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 163
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 164
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 166
    return-void
.end method

.method private isMessage(I)Z
    .locals 3
    .param p1, "length"    # I

    .prologue
    const/4 v0, 0x1

    .line 169
    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/app/OppoBootMessageDialog;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/app/OppoBootMessageDialog;->getMax()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/oppo/app/OppoBootMessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/app/OppoBootMessageDialog;->initWindow(Landroid/view/Window;)V

    .line 101
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 13
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v12, 0x0

    .line 106
    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "msgs":[Ljava/lang/String;
    array-length v2, v3

    .line 111
    .local v2, "length":I
    const/4 v9, 0x2

    if-le v2, v9, :cond_2

    .line 113
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 114
    .local v0, "current":I
    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 115
    .local v7, "total":I
    if-lez v7, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/oppo/app/OppoBootMessageDialog;->getMax()I

    move-result v9

    mul-int/2addr v9, v0

    div-int v4, v9, v7

    .line 117
    .local v4, "percent":I
    invoke-virtual {p0, v4}, Lcom/oppo/app/OppoBootMessageDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "current":I
    .end local v4    # "percent":I
    .end local v7    # "total":I
    :cond_2
    :goto_1
    if-lez v2, :cond_0

    .line 124
    invoke-direct {p0, v2}, Lcom/oppo/app/OppoBootMessageDialog;->isMessage(I)Z

    move-result v9

    if-eqz v9, :cond_3

    const v8, 0x102000b

    .line 125
    .local v8, "viewId":I
    :goto_2
    add-int/lit8 v9, v2, -0x1

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/oppo/app/OppoBootMessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 127
    .local v6, "textView":Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 128
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const-string v9, "OppoBootMessageDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setText : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v9, v10}, Lcom/oppo/util/OppoLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "textView":Landroid/widget/TextView;
    .end local v8    # "viewId":I
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v9, "OppoBootMessageDialog"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 124
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    invoke-direct {p0}, Lcom/oppo/app/OppoBootMessageDialog;->getPercentId()I

    move-result v8

    goto :goto_2
.end method

.method protected setWindowFlags(Landroid/view/Window;)V
    .locals 1
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 153
    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 154
    return-void
.end method

.method protected setWindowType(Landroid/view/Window;)V
    .locals 1
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 149
    const/16 v0, 0x7e5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 150
    return-void
.end method
