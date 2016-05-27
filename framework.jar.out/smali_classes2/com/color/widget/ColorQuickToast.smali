.class public Lcom/color/widget/ColorQuickToast;
.super Ljava/lang/Object;
.source "ColorQuickToast.java"


# static fields
.field private static final LENGTH_SHORT:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "ColorQuickToast"

.field private static sInstance:Lcom/color/widget/ColorQuickToast;


# instance fields
.field private mCancelRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mGravity:I

.field private mLayout:I

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/color/widget/ColorQuickToast;->sInstance:Lcom/color/widget/ColorQuickToast;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput v0, p0, Lcom/color/widget/ColorQuickToast;->mX:I

    .line 73
    iput v0, p0, Lcom/color/widget/ColorQuickToast;->mY:I

    .line 74
    iput v0, p0, Lcom/color/widget/ColorQuickToast;->mGravity:I

    .line 75
    iput v0, p0, Lcom/color/widget/ColorQuickToast;->mLayout:I

    .line 76
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorQuickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 77
    iput-object v1, p0, Lcom/color/widget/ColorQuickToast;->mTextView:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/color/widget/ColorQuickToast;->mContext:Landroid/content/Context;

    .line 79
    iput-object v1, p0, Lcom/color/widget/ColorQuickToast;->mView:Landroid/view/View;

    .line 80
    iput-object v1, p0, Lcom/color/widget/ColorQuickToast;->mWindowManager:Landroid/view/WindowManager;

    .line 81
    new-instance v0, Lcom/color/widget/ColorQuickToast$1;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorQuickToast$1;-><init>(Lcom/color/widget/ColorQuickToast;)V

    iput-object v0, p0, Lcom/color/widget/ColorQuickToast;->mCancelRunnable:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0xc03040b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/color/widget/ColorQuickToast;->mContext:Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Lcom/color/widget/ColorQuickToast;->initResources()V

    .line 96
    invoke-direct {p0}, Lcom/color/widget/ColorQuickToast;->initWindow()V

    .line 97
    invoke-direct {p0}, Lcom/color/widget/ColorQuickToast;->initLayout()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/color/widget/ColorQuickToast;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorQuickToast;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/color/widget/ColorQuickToast;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/color/widget/ColorQuickToast;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/color/widget/ColorQuickToast;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/color/widget/ColorQuickToast;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/color/widget/ColorQuickToast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    sget-object v0, Lcom/color/widget/ColorQuickToast;->sInstance:Lcom/color/widget/ColorQuickToast;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/color/widget/ColorQuickToast;

    invoke-direct {v0, p0}, Lcom/color/widget/ColorQuickToast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/color/widget/ColorQuickToast;->sInstance:Lcom/color/widget/ColorQuickToast;

    .line 107
    :cond_0
    sget-object v0, Lcom/color/widget/ColorQuickToast;->sInstance:Lcom/color/widget/ColorQuickToast;

    return-object v0
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/color/widget/ColorQuickToast;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 181
    .local v0, "inflate":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/color/widget/ColorQuickToast;->mLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/color/widget/ColorQuickToast;->mView:Landroid/view/View;

    .line 182
    iget-object v1, p0, Lcom/color/widget/ColorQuickToast;->mView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/color/widget/ColorQuickToast;->mTextView:Landroid/widget/TextView;

    .line 183
    return-void
.end method

.method private initResources()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 152
    iget-object v3, p0, Lcom/color/widget/ColorQuickToast;->mContext:Landroid/content/Context;

    sget-object v4, Loppo/R$styleable;->ColorToastTheme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 153
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 154
    .local v1, "ap":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    if-eq v1, v6, :cond_0

    .line 156
    iget-object v3, p0, Lcom/color/widget/ColorQuickToast;->mContext:Landroid/content/Context;

    sget-object v4, Loppo/R$styleable;->ColorToast:[I

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 157
    .local v2, "b":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/color/widget/ColorQuickToast;->mY:I

    .line 158
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/color/widget/ColorQuickToast;->mGravity:I

    .line 159
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/color/widget/ColorQuickToast;->mLayout:I

    .line 160
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    .end local v2    # "b":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method private initWindow()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 165
    const/16 v0, 0x98

    .line 168
    .local v0, "flags":I
    iget-object v1, p0, Lcom/color/widget/ColorQuickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x98

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 169
    iget-object v1, p0, Lcom/color/widget/ColorQuickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 170
    iget-object v1, p0, Lcom/color/widget/ColorQuickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 171
    iget-object v1, p0, Lcom/color/widget/ColorQuickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 172
    iget-object v1, p0, Lcom/color/widget/ColorQuickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 173
    iget v1, p0, Lcom/color/widget/ColorQuickToast;->mGravity:I

    iget v2, p0, Lcom/color/widget/ColorQuickToast;->mX:I

    iget v3, p0, Lcom/color/widget/ColorQuickToast;->mY:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/color/widget/ColorQuickToast;->setGravity(III)V

    .line 175
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/color/widget/ColorQuickToast;->setWindowAnimations(I)V

    .line 176
    iget-object v1, p0, Lcom/color/widget/ColorQuickToast;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/color/widget/ColorQuickToast;->mWindowManager:Landroid/view/WindowManager;

    .line 177
    return-void
.end method

.method public static recycle()V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/color/widget/ColorQuickToast;->sInstance:Lcom/color/widget/ColorQuickToast;

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "ColorQuickToast"

    const-string v1, "ColorQuickToast recycle"

    invoke-static {v0, v1}, Lcom/color/util/ColorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/color/widget/ColorQuickToast;->sInstance:Lcom/color/widget/ColorQuickToast;

    invoke-virtual {v0}, Lcom/color/widget/ColorQuickToast;->cancel()V

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/color/widget/ColorQuickToast;->sInstance:Lcom/color/widget/ColorQuickToast;

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/color/widget/ColorQuickToast;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/color/widget/ColorQuickToast;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 134
    iget-object v0, p0, Lcom/color/widget/ColorQuickToast;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 135
    return-void
.end method

.method public setGravity(III)V
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/color/widget/ColorQuickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 139
    iget-object v0, p0, Lcom/color/widget/ColorQuickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 140
    iget-object v0, p0, Lcom/color/widget/ColorQuickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 141
    return-void
.end method

.method public setWindowAnimations(I)V
    .locals 1
    .param p1, "windowAnimations"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/color/widget/ColorQuickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 145
    return-void
.end method

.method public show(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/color/widget/ColorQuickToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorQuickToast;->show(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public show(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/color/widget/ColorQuickToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0}, Lcom/color/widget/ColorQuickToast;->cancel()V

    .line 128
    iget-object v0, p0, Lcom/color/widget/ColorQuickToast;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/color/widget/ColorQuickToast;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/color/widget/ColorQuickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v0, p0, Lcom/color/widget/ColorQuickToast;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/color/widget/ColorQuickToast;->mCancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    return-void
.end method
