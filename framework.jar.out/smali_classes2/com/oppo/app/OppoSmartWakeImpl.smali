.class public Lcom/oppo/app/OppoSmartWakeImpl;
.super Ljava/lang/Object;
.source "OppoSmartWakeImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;,
        Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;,
        Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_DRAW:Z = true

.field private static final MSG_INVALIDATE:I = 0x1

.field public static final SMART_WAKE_AIR_GESTURE_First:I = 0x3e8

.field public static final SMART_WAKE_GESTURE_DOUBLE_TAP:I = 0x1

.field public static final SMART_WAKE_GESTURE_DOUBLE_VERTICAL:I = 0x7

.field public static final SMART_WAKE_GESTURE_DTU_VERTICAL:I = 0xb

.field public static final SMART_WAKE_GESTURE_LEFT_ARROW:I = 0x5

.field public static final SMART_WAKE_GESTURE_LTR_VERTICAL:I = 0x8

.field public static final SMART_WAKE_GESTURE_M:I = 0xc

.field public static final SMART_WAKE_GESTURE_O:I = 0x6

.field public static final SMART_WAKE_GESTURE_OPPOSITE_V:I = 0x3

.field public static final SMART_WAKE_GESTURE_RIGHT_ARROW:I = 0x4

.field public static final SMART_WAKE_GESTURE_RTL_VERTICAL:I = 0x9

.field public static final SMART_WAKE_GESTURE_S:I = 0x3e8

.field public static final SMART_WAKE_GESTURE_UTD_VERTICAL:I = 0xa

.field public static final SMART_WAKE_GESTURE_V:I = 0x2

.field public static final SMART_WAKE_GESTURE_W:I = 0xd

.field public static final SMART_WAKE_GESTURE_Z:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "OppoSmartWakeImpl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mFisrtFrameDelay:I

.field private mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

.field private mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

.field private mHandler:Landroid/os/Handler;

.field private mOnAnimationEndListener:Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;

.field private mShowInCenter:Z

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mDuration:J

    .line 72
    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mFisrtFrameDelay:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mShowInCenter:Z

    .line 78
    new-instance v0, Lcom/oppo/app/OppoSmartWakeImpl$1;

    invoke-direct {v0, p0}, Lcom/oppo/app/OppoSmartWakeImpl$1;-><init>(Lcom/oppo/app/OppoSmartWakeImpl;)V

    iput-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mHandler:Landroid/os/Handler;

    .line 104
    iput-object p1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mContext:Landroid/content/Context;

    .line 105
    invoke-direct {p0, v2}, Lcom/oppo/app/OppoSmartWakeImpl;->init(I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mDuration:J

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mFisrtFrameDelay:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mShowInCenter:Z

    .line 78
    new-instance v0, Lcom/oppo/app/OppoSmartWakeImpl$1;

    invoke-direct {v0, p0}, Lcom/oppo/app/OppoSmartWakeImpl$1;-><init>(Lcom/oppo/app/OppoSmartWakeImpl;)V

    iput-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mHandler:Landroid/os/Handler;

    .line 109
    iput-object p1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mContext:Landroid/content/Context;

    .line 110
    invoke-direct {p0, p2}, Lcom/oppo/app/OppoSmartWakeImpl;->init(I)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoSmartWakeImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/app/OppoSmartWakeImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoSmartWakeImpl;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mShowInCenter:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oppo/app/OppoSmartWakeImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/oppo/app/OppoSmartWakeImpl;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/oppo/app/OppoSmartWakeImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoSmartWakeImpl;

    .prologue
    .line 39
    iget v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mFisrtFrameDelay:I

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/app/OppoSmartWakeImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoSmartWakeImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/app/OppoSmartWakeImpl;)Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/app/OppoSmartWakeImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mOnAnimationEndListener:Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;

    return-object v0
.end method

.method private init(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v1, -0x1

    .line 114
    new-instance v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    invoke-direct {v2, p0}, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;-><init>(Lcom/oppo/app/OppoSmartWakeImpl;)V

    iput-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    .line 115
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc0d041a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mDuration:J

    .line 117
    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc0d041b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mFisrtFrameDelay:I

    .line 119
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7df

    const v4, 0x200598

    const/4 v5, -0x2

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 130
    .local v0, "mParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 131
    iget-object v1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mWM:Landroid/view/WindowManager;

    .line 132
    new-instance v1, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;-><init>(Lcom/oppo/app/OppoSmartWakeImpl;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    .line 133
    iget-object v1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setBackgroundColor(I)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/oppo/app/OppoSmartWakeImpl;->setMode(I)V

    .line 135
    iget-object v1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    return-void
.end method

.method private setBitmap()V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v0, v0, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    sparse-switch v0, :sswitch_data_0

    .line 382
    const-string v0, "OppoSmartWakeImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the Guesture mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v2, v2, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not designed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_0
    return-void

    .line 336
    :sswitch_0
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804a1

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 339
    :sswitch_1
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804a2

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 342
    :sswitch_2
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804a5

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 345
    :sswitch_3
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804a4

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 348
    :sswitch_4
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v0, v0, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804a3

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804c3

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 355
    :sswitch_5
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804a6

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 358
    :sswitch_6
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804a9

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 361
    :sswitch_7
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804aa

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 364
    :sswitch_8
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804ab

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 367
    :sswitch_9
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804ac

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 370
    :sswitch_a
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804ad

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 373
    :sswitch_b
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804ae

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto :goto_0

    .line 376
    :sswitch_c
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804af

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto/16 :goto_0

    .line 379
    :sswitch_d
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    const v1, 0xc0804b0

    invoke-virtual {v0, v1}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->setDrawableResource(I)V

    goto/16 :goto_0

    .line 334
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0x3e8 -> :sswitch_c
        0x3e9 -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "OppoSmartWakeImpl"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 405
    :cond_0
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v0, v0, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    invoke-virtual {v0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->invalidate()V

    .line 398
    :cond_0
    return-void
.end method

.method public setGesturePoints([Landroid/graphics/Point;I)V
    .locals 12
    .param p1, "points"    # [Landroid/graphics/Point;
    .param p2, "direction"    # I

    .prologue
    .line 154
    if-nez p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, p1

    if-ge v4, v7, :cond_2

    .line 160
    const-string v7, "OppoSmartWakeImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "points i="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p1, v4

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p1, v4

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 165
    :cond_2
    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-nez v7, :cond_3

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-eqz v7, :cond_0

    :cond_3
    const/4 v7, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-nez v7, :cond_4

    const/4 v7, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-eqz v7, :cond_0

    .line 170
    :cond_4
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iput-object p1, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPoints:[Landroid/graphics/Point;

    .line 171
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mShowInCenter:Z

    .line 173
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v7, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    .line 175
    :sswitch_0
    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    if-ge v7, v8, :cond_5

    .line 176
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 177
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    .line 182
    :goto_2
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 183
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 184
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    goto/16 :goto_0

    .line 179
    :cond_5
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 180
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    goto :goto_2

    .line 187
    :sswitch_1
    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    if-ge v7, v8, :cond_6

    .line 188
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 189
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    .line 194
    :goto_3
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 195
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 196
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    goto/16 :goto_0

    .line 191
    :cond_6
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 192
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    goto :goto_3

    .line 199
    :sswitch_2
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 200
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 201
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 202
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    .line 203
    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    if-ge v7, v8, :cond_7

    .line 204
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    goto/16 :goto_0

    .line 206
    :cond_7
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    goto/16 :goto_0

    .line 210
    :sswitch_3
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 211
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 212
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 213
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    .line 214
    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    if-ge v7, v8, :cond_8

    .line 215
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    goto/16 :goto_0

    .line 217
    :cond_8
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    goto/16 :goto_0

    .line 221
    :sswitch_4
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x3

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    float-to-double v8, v8

    const-wide v10, 0x3ff199999999999aL    # 1.1

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 222
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    float-to-double v8, v8

    const-wide v10, 0x3ff199999999999aL    # 1.1

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 223
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const-wide v8, 0x3ff199999999999aL    # 1.1

    const/4 v10, 0x5

    aget-object v10, p1, v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    const/4 v11, 0x3

    aget-object v11, p1, v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 224
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const-wide v8, 0x3ff199999999999aL    # 1.1

    const/4 v10, 0x4

    aget-object v10, p1, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    const/4 v11, 0x2

    aget-object v11, p1, v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    .line 225
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iput p2, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    .line 226
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v7, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    iget-object v8, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v8, v8, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v8, v8, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    iget-object v9, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v9, v9, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 228
    .local v5, "ratio":F
    float-to-double v8, v5

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpg-double v7, v8, v10

    if-gez v7, :cond_9

    .line 229
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget-object v8, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v8, v8, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    iget-object v9, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v9, v9, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 230
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget-object v8, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v8, v8, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    .line 233
    :cond_9
    const/4 v7, 0x3

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/4 v8, 0x5

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v8

    div-int/lit8 v0, v7, 0x2

    .line 234
    .local v0, "centerX":I
    const/4 v7, 0x2

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    const/4 v8, 0x4

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    div-int/lit8 v1, v7, 0x2

    .line 235
    .local v1, "centerY":I
    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int v2, v7, v0

    .line 236
    .local v2, "deltaX":I
    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int v3, v7, v1

    .line 237
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v7, v8, :cond_c

    .line 238
    if-lez v2, :cond_b

    .line 239
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/high16 v8, 0x43870000    # 270.0f

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    .line 246
    :cond_a
    :goto_4
    const-string v7, "OppoSmartWakeImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setGesturePoints O rotation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v9, v9, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", width="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v9, v9, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", height="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v9, v9, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ratio="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 241
    :cond_b
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/high16 v8, 0x42b40000    # 90.0f

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    goto :goto_4

    .line 243
    :cond_c
    if-gez v3, :cond_a

    .line 244
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/high16 v8, 0x43340000    # 180.0f

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    goto :goto_4

    .line 251
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v5    # "ratio":F
    :sswitch_5
    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    if-ge v7, v8, :cond_d

    .line 252
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 253
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    const/4 v9, 0x3

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/4 v10, 0x1

    aget-object v10, p1, v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 260
    :goto_5
    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    if-ge v7, v8, :cond_e

    .line 261
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    .line 262
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x2

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 263
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    const/4 v9, 0x3

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    const/4 v10, 0x2

    aget-object v10, p1, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    goto/16 :goto_0

    .line 256
    :cond_d
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x3

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 257
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x2

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/4 v10, 0x3

    aget-object v10, p1, v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    goto :goto_5

    .line 266
    :cond_e
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    .line 267
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x3

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 268
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    const/4 v10, 0x3

    aget-object v10, p1, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    goto/16 :goto_0

    .line 273
    :sswitch_6
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 274
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 275
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 276
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, -0x1

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    .line 277
    const/4 v7, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 278
    .local v6, "tangent":F
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x43340000    # 180.0f

    mul-float/2addr v8, v9

    const v9, 0x40490fdb    # (float)Math.PI

    div-float/2addr v8, v9

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    .line 279
    const-string v7, "OppoSmartWakeImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setGesturePoints LTR_VERTICAL rotation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v9, v9, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tangent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 283
    .end local v6    # "tangent":F
    :sswitch_7
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 284
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 285
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 286
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, -0x1

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    .line 287
    const/4 v7, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 288
    .restart local v6    # "tangent":F
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x43340000    # 180.0f

    mul-float/2addr v8, v9

    const v9, 0x40490fdb    # (float)Math.PI

    div-float/2addr v8, v9

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    .line 289
    const-string v7, "OppoSmartWakeImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setGesturePoints RTL_VERTICAL rotation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v9, v9, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tangent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 293
    .end local v6    # "tangent":F
    :sswitch_8
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 294
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 295
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    .line 296
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, -0x1

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 297
    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 298
    .restart local v6    # "tangent":F
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x43340000    # 180.0f

    mul-float/2addr v8, v9

    const v9, 0x40490fdb    # (float)Math.PI

    div-float/2addr v8, v9

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    .line 299
    const-string v7, "OppoSmartWakeImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setGesturePoints UTD_VERTICAL rotation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v9, v9, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tangent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 303
    .end local v6    # "tangent":F
    :sswitch_9
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 304
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 305
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    .line 306
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, -0x1

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    .line 307
    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 308
    .restart local v6    # "tangent":F
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x43340000    # 180.0f

    mul-float/2addr v8, v9

    const v9, 0x40490fdb    # (float)Math.PI

    div-float/2addr v8, v9

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    .line 309
    const-string v7, "OppoSmartWakeImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setGesturePoints DTU_VERTICAL rotation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v9, v9, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mRotation:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tangent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 313
    .end local v6    # "tangent":F
    :sswitch_a
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    float-to-double v8, v8

    const-wide v10, 0x3ff199999999999aL    # 1.1

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 314
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x4

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    float-to-double v8, v8

    const-wide v10, 0x3ff199999999999aL    # 1.1

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 315
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const-wide v8, 0x3ff3333333333333L    # 1.2

    const/4 v10, 0x0

    aget-object v10, p1, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    iget-object v11, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v11, v11, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    .line 316
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const-wide v8, 0x3ff3333333333333L    # 1.2

    const/4 v10, 0x3

    aget-object v10, p1, v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    const/4 v11, 0x0

    aget-object v11, p1, v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    goto/16 :goto_0

    .line 319
    :sswitch_b
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    float-to-double v8, v8

    const-wide v10, 0x3ff199999999999aL    # 1.1

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionX:I

    .line 320
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    float-to-double v8, v8

    const-wide v10, 0x3ff199999999999aL    # 1.1

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mPositionY:I

    .line 321
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const-wide v8, 0x3ff4cccccccccccdL    # 1.3

    const/4 v10, 0x2

    aget-object v10, p1, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    const/4 v11, 0x4

    aget-object v11, p1, v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v11, 0x0

    aget-object v11, p1, v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v11

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mHeight:I

    .line 322
    iget-object v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    const-wide v8, 0x3ff199999999999aL    # 1.1

    const/4 v10, 0x3

    aget-object v10, p1, v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    const/4 v11, 0x0

    aget-object v11, p1, v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v7, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mWidth:I

    goto/16 :goto_0

    .line 326
    :sswitch_c
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mShowInCenter:Z

    goto/16 :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0x3e8 -> :sswitch_c
        0x3e9 -> :sswitch_c
    .end sparse-switch
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 139
    const-string v0, "OppoSmartWakeImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode() mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iget v0, v0, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    if-eq v0, p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    iput p1, v0, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mMode:I

    .line 143
    :cond_0
    return-void
.end method

.method public setOnAnimationEndListener(Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mOnAnimationEndListener:Lcom/oppo/app/OppoSmartWakeImpl$onAnimationEndListener;

    .line 151
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGesture:Lcom/oppo/app/OppoSmartWakeImpl$Gesture;

    if-eqz v0, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/oppo/app/OppoSmartWakeImpl;->setBitmap()V

    .line 390
    iget-object v0, p0, Lcom/oppo/app/OppoSmartWakeImpl;->mGestureView:Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;

    invoke-virtual {v0}, Lcom/oppo/app/OppoSmartWakeImpl$SmartWakeGestureView;->startAnimation()V

    .line 392
    :cond_0
    return-void
.end method
