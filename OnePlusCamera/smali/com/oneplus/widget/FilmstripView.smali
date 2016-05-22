.class public Lcom/oneplus/widget/FilmstripView;
.super Landroid/view/ViewGroup;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/widget/FilmstripView$ItemInfo;,
        Lcom/oneplus/widget/FilmstripView$ScrollListener;,
        Lcom/oneplus/widget/FilmstripView$Adapter;
    }
.end annotation


# static fields
.field private static final FLY_ACCELERATION:F = -8000.0f

.field private static final INTERVAL_UPDATE_ITEMS_LAYOUT:J = 0xfL

.field private static final MSG_FLY:I = 0x2711

.field private static final MSG_SCROLL_TO_ITEM:I = 0x2712

.field private static final MSG_UPDATE_ITEMS_LAYOUT:I = 0x2710

.field private static final PRINT_TRACE_LOGS:Z = false

.field public static final SCROLL_MODE_DISABLED:I = -0x1

.field public static final SCROLL_MODE_MULTIPLE_ITEMS:I = 0x1

.field public static final SCROLL_MODE_SINGLE_ITEM:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD_MOVE_TO_NEIGHBOR_ITEM:I = 0x1f4


# instance fields
.field private m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

.field private m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

.field private m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

.field private m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

.field private final m_GestureDetector:Landroid/view/GestureDetector;

.field private final m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private m_Handler:Landroid/os/Handler;

.field private m_HasMultiPointers:Z

.field private m_Height:I

.field private m_IsFlying:Z

.field private m_IsOverScrolled:Z

.field private m_IsScrollLeftRight:Ljava/lang/Boolean;

.field private m_IsScrolling:Z

.field private m_ItemMargin:I

.field private m_LastPosition:I

.field private m_OnTouchListener:Landroid/view/View$OnTouchListener;

.field private m_ReportedCurrentPosition:I

.field private m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

.field private m_ScrollMode:I

.field private m_TotalScrollDistanceX:F

.field private m_Width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/oneplus/widget/FilmstripView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$1;-><init>(Lcom/oneplus/widget/FilmstripView;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 98
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 343
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->setupHandler()V

    .line 344
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 345
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 355
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Lcom/oneplus/widget/FilmstripView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$1;-><init>(Lcom/oneplus/widget/FilmstripView;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 98
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 356
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->setupHandler()V

    .line 357
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 358
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/FilmstripView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/FilmstripView;->onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/FilmstripView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/FilmstripView;->onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/FilmstripView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->onGestureDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/FilmstripView;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->onItemSizeChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/FilmstripView;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->onDataSetChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/widget/FilmstripView;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/FilmstripView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I
    .locals 2
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .param p2, "calculateTarget"    # Z

    .prologue
    .line 400
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    div-int/lit8 v1, v0, 0x2

    if-eqz p2, :cond_0

    iget v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    :goto_0
    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    return v0

    :cond_0
    iget v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    goto :goto_0
.end method

.method private clearItems()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 408
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 410
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 411
    .local v1, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 412
    move-object v0, v1

    .line 413
    goto :goto_0

    .line 414
    .end local v1    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_0
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 415
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 416
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 417
    return-void
.end method

.method private findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 465
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_1

    .line 467
    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-ne v1, p1, :cond_0

    .line 471
    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_1
    return-object v0

    .line 469
    .restart local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_0
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 471
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private fly(FJ)V
    .locals 12
    .param p1, "velocity"    # F
    .param p2, "lastTime"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v8, -0x3a060000    # -8000.0f

    .line 365
    iget-boolean v5, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-nez v5, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 370
    .local v0, "currentTime":J
    sub-long v6, v0, p2

    long-to-float v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v2, v5, v6

    .line 371
    .local v2, "durationSeconds":F
    mul-float v5, p1, v2

    mul-float v6, v8, v2

    mul-float/2addr v6, v2

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 372
    .local v3, "offset":I
    invoke-direct {p0, v3}, Lcom/oneplus/widget/FilmstripView;->scrollBy(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 379
    :cond_2
    cmpl-float v5, p1, v9

    if-lez v5, :cond_3

    .line 380
    mul-float v5, v8, v2

    add-float/2addr v5, p1

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 385
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f    # 0.001f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 386
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v7, 0x2711

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0xa

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 382
    :cond_3
    mul-float v5, v8, v2

    sub-float v5, p1, v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1

    .line 389
    :cond_4
    iput-boolean v10, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 390
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v4

    .line 391
    .local v4, "position":I
    if-ltz v4, :cond_0

    .line 392
    invoke-direct {p0, v4}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(I)V

    goto :goto_0
.end method

.method private getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 5

    .prologue
    .line 489
    iget v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    div-int/lit8 v1, v3, 0x2

    .line 490
    .local v1, "halfMargin":I
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 491
    .local v2, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v3, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    div-int/lit8 v0, v3, 0x2

    .line 492
    .local v0, "center":I
    :goto_0
    if-eqz v2, :cond_1

    .line 494
    iget v3, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    sub-int/2addr v3, v1

    if-gt v3, v0, :cond_0

    iget v3, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v4, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    if-lt v3, v0, :cond_0

    move-object v3, v2

    .line 501
    :goto_1
    return-object v3

    .line 496
    :cond_0
    iget-object v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 498
    :cond_1
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 499
    :goto_2
    if-eqz v2, :cond_2

    .line 500
    iget-object v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_2

    .line 501
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 528
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 545
    :goto_0
    return-void

    .line 532
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 533
    .local v0, "params":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Lcom/oneplus/widget/FilmstripView;->fly(FJ)V

    goto :goto_0

    .line 538
    .end local v0    # "params":[Ljava/lang/Object;
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(I)V

    goto :goto_0

    .line 542
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Z)V

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private obtainItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 558
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 559
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_0

    .line 561
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 562
    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->remove()V

    .line 569
    :goto_0
    iput p1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 570
    return-object v0

    .line 566
    :cond_0
    new-instance v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/widget/FilmstripView$ItemInfo;-><init>(Lcom/oneplus/widget/FilmstripView$1;)V

    .line 567
    .restart local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private onDataSetChanged()V
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(Z)V

    .line 627
    return-void
.end method

.method private onGestureDown(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopAutoScroll()V

    .line 637
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    .line 638
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    .line 640
    return-void
.end method

.method private onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 647
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-eqz v2, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 655
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v0

    .line 656
    .local v0, "itemCount":I
    :goto_1
    if-lez v0, :cond_0

    .line 658
    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    if-ltz v2, :cond_3

    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    .line 659
    .local v1, "position":I
    :goto_2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43fa0000    # 500.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 661
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_4

    const/4 v2, -0x1

    :goto_3
    add-int/2addr v1, v2

    .line 662
    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 663
    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(I)V

    goto :goto_0

    .line 655
    .end local v0    # "itemCount":I
    .end local v1    # "position":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 658
    .restart local v0    # "itemCount":I
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v1

    goto :goto_2

    .line 661
    .restart local v1    # "position":I
    :cond_4
    const/4 v2, 0x1

    goto :goto_3

    .line 669
    .end local v0    # "itemCount":I
    .end local v1    # "position":I
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/oneplus/widget/FilmstripView;->startFly(F)V

    goto :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x1

    .line 679
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-eqz v0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 687
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 689
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 690
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    .line 694
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    .line 699
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 701
    iput-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 702
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v0, v0, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-nez v0, :cond_3

    .line 704
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v2, v0, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 705
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStarted()V

    .line 708
    :cond_3
    neg-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->scrollBy(I)I

    goto :goto_0

    .line 692
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private onGestureUp(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 716
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 717
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 720
    iget-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 723
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 724
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(I)V

    .line 726
    .end local v0    # "position":I
    :cond_0
    return-void
.end method

.method private onItemSizeChanged()V
    .locals 8

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 586
    .local v0, "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_5

    .line 589
    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 590
    .local v3, "oldTargetWidth":I
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 591
    iget v5, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 592
    .local v1, "diff":I
    if-eqz v1, :cond_0

    .line 596
    :cond_0
    iget-object v4, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 597
    .local v4, "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v4, :cond_2

    .line 599
    iget v3, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 600
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 601
    iget v5, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 602
    if-eqz v1, :cond_1

    .line 604
    :cond_1
    iget-object v4, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 606
    :cond_2
    iget-object v2, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 607
    .local v2, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_1
    if-eqz v2, :cond_4

    .line 609
    iget v3, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 610
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 611
    iget v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 612
    if-eqz v1, :cond_3

    .line 614
    :cond_3
    iget-object v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_1

    .line 618
    :cond_4
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Z)V

    .line 620
    .end local v1    # "diff":I
    .end local v2    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v3    # "oldTargetWidth":I
    .end local v4    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_5
    return-void
.end method

.method private prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 766
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->obtainItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 767
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v1

    iput v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 768
    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iput v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 769
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget-object v2, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->prepareItemView(ILandroid/view/ViewGroup;)V

    .line 770
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/oneplus/widget/FilmstripView;->addView(Landroid/view/View;)V

    .line 771
    return-object v0
.end method

.method private refreshItems(I)V
    .locals 9
    .param p1, "centerPosition"    # I

    .prologue
    const/4 v6, 0x0

    .line 784
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v1

    .line 785
    .local v1, "itemCount":I
    :goto_0
    if-gez p1, :cond_0

    .line 786
    const/4 p1, 0x0

    .line 787
    :cond_0
    if-lt p1, v1, :cond_1

    .line 788
    add-int/lit8 p1, v1, -0x1

    .line 791
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->clearItems()V

    .line 794
    if-lez v1, :cond_2

    if-gez p1, :cond_5

    .line 796
    :cond_2
    const/4 v6, -0x1

    invoke-direct {p0, v6}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    .line 842
    :cond_3
    :goto_1
    return-void

    .end local v1    # "itemCount":I
    :cond_4
    move v1, v6

    .line 784
    goto :goto_0

    .line 801
    .restart local v1    # "itemCount":I
    :cond_5
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 802
    .local v0, "centerItem":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {p0, v0, v6}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(I)V

    .line 803
    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 804
    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 807
    add-int/lit8 v4, p1, -0x1

    .line 808
    .local v4, "position":I
    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    .line 810
    .local v3, "left":I
    :goto_2
    if-lez v3, :cond_6

    if-ltz v4, :cond_6

    .line 812
    invoke-direct {p0, v4}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 813
    .local v2, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v7, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(I)V

    .line 814
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 815
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 816
    iget v3, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    .line 817
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 819
    .end local v2    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_6
    add-int/lit8 v4, p1, 0x1

    .line 820
    iget v7, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v8, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    add-int v5, v7, v8

    .line 821
    .local v5, "right":I
    :goto_3
    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    if-ge v5, v7, :cond_7

    if-ge v4, v1, :cond_7

    .line 823
    invoke-direct {p0, v4}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 824
    .restart local v2    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v7, v5

    invoke-virtual {v2, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(I)V

    .line 825
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addAfter(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 826
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 827
    iget v7, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v8, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    add-int v5, v7, v8

    .line 828
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 832
    .end local v2    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_7
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    .line 833
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v7, :cond_3

    .line 835
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v7, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 836
    iget-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v7, v7, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v7, :cond_3

    .line 838
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v6, v7, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 839
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v6}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_1
.end method

.method private refreshItems(Z)V
    .locals 1
    .param p1, "keepCurrentItem"    # Z

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 779
    .local v0, "centerPosition":I
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 780
    return-void
.end method

.method private releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 3
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v1, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget-object v2, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->releaseItemView(ILandroid/view/ViewGroup;)V

    .line 854
    :goto_0
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/FilmstripView;->removeView(Landroid/view/View;)V

    .line 855
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->releaseItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 856
    return-void

    .line 853
    :cond_0
    sget-object v0, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseItem() - No adapter to release item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    .line 862
    invoke-virtual {p1}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->remove()V

    .line 863
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {p1, v0}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 864
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 865
    return-void
.end method

.method private reportCurrentPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 871
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    if-eq v1, p1, :cond_0

    .line 873
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 874
    .local v0, "prevPosition":I
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 875
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v1, :cond_0

    .line 876
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v1, v0, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onCurrentItemChanged(II)V

    .line 878
    .end local v0    # "prevPosition":I
    :cond_0
    return-void
.end method

.method private scrollBy(I)I
    .locals 11
    .param p1, "offset"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 885
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v2

    .line 886
    .local v2, "itemCount":I
    :goto_0
    if-gtz v2, :cond_2

    .line 955
    :cond_0
    :goto_1
    return v7

    .end local v2    # "itemCount":I
    :cond_1
    move v2, v7

    .line 885
    goto :goto_0

    .line 888
    .restart local v2    # "itemCount":I
    :cond_2
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v8, :cond_0

    .line 892
    const/4 v1, 0x0

    .line 893
    .local v1, "isFirstOverScroll":Z
    const/4 v5, 0x0

    .line 894
    .local v5, "overScrollAtFirstItem":Z
    if-lez p1, :cond_6

    .line 896
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-nez v8, :cond_4

    .line 898
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v8, v7}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v4

    .line 899
    .local v4, "leftBound":I
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    add-int/2addr v8, p1

    sub-int v0, v4, v8

    .line 900
    .local v0, "diff":I
    if-gez v0, :cond_5

    .line 902
    iget-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    if-nez v7, :cond_3

    .line 904
    iput-boolean v10, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 905
    const/4 v1, 0x1

    .line 906
    const/4 v5, 0x1

    .line 908
    :cond_3
    add-int/2addr p1, v0

    .line 935
    .end local v0    # "diff":I
    .end local v4    # "leftBound":I
    :cond_4
    :goto_2
    if-eqz p1, :cond_a

    .line 937
    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 938
    .local v3, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_3
    if-eqz v3, :cond_9

    .line 940
    invoke-virtual {v3, p1}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveBy(I)V

    .line 941
    iget-object v3, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_3

    .line 911
    .end local v3    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .restart local v0    # "diff":I
    .restart local v4    # "leftBound":I
    :cond_5
    iput-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    goto :goto_2

    .line 916
    .end local v0    # "diff":I
    .end local v4    # "leftBound":I
    :cond_6
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v9, v2, -0x1

    if-ne v8, v9, :cond_4

    .line 918
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v8, v7}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v8

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int v6, v8, v9

    .line 919
    .local v6, "rightBound":I
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v8, v9

    add-int/2addr v8, p1

    sub-int v0, v6, v8

    .line 920
    .restart local v0    # "diff":I
    if-lez v0, :cond_8

    .line 922
    iget-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    if-nez v7, :cond_7

    .line 924
    iput-boolean v10, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 925
    const/4 v1, 0x1

    .line 927
    :cond_7
    add-int/2addr p1, v0

    goto :goto_2

    .line 930
    :cond_8
    iput-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    goto :goto_2

    .line 943
    .end local v0    # "diff":I
    .end local v6    # "rightBound":I
    .restart local v3    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_9
    invoke-direct {p0, v10}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Z)V

    .line 947
    .end local v3    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_a
    if-eqz v1, :cond_b

    .line 949
    sget-object v7, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v8, "scrollBy() - Over-scroll"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v7, :cond_b

    .line 951
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v7, v5}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onOverScroll(Z)V

    :cond_b
    move v7, p1

    .line 955
    goto :goto_1
.end method

.method private scrollToItem(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    const-wide/16 v10, 0xf

    const/16 v8, 0x2712

    const/4 v7, 0x0

    .line 963
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 966
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 969
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v5, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v4

    .line 977
    .local v4, "targetItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v4, :cond_2

    .line 979
    invoke-direct {p0, v4, v7}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v5

    iget v6, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    sub-int v3, v5, v6

    .line 987
    .local v3, "scrollOffset":I
    :goto_1
    if-eqz v4, :cond_4

    .line 989
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_3

    .line 991
    div-int/lit8 v1, v3, 0x5

    .line 992
    .local v1, "offset":I
    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollBy(I)I

    .line 993
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {v6, v8, p1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 983
    .end local v1    # "offset":I
    .end local v3    # "scrollOffset":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "scrollOffset":I
    goto :goto_1

    .line 997
    :cond_3
    invoke-direct {p0, v3}, Lcom/oneplus/widget/FilmstripView;->scrollBy(I)I

    .line 998
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v5, :cond_0

    .line 1000
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v5, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1001
    iget-boolean v5, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v5, v5, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v5, :cond_0

    .line 1003
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v7, v5, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1004
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v5}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_0

    .line 1011
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1012
    .local v0, "currentPosition":I
    sub-int v2, p1, v0

    .line 1013
    .local v2, "positionDiff":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_5

    .line 1015
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v0

    invoke-direct {p0, v5}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 1016
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {v6, v8, p1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1020
    :cond_5
    iget v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    div-int/lit8 v6, v5, 0x2

    if-ltz v2, :cond_6

    const/4 v5, -0x1

    :goto_2
    mul-int v1, v6, v5

    .line 1021
    .restart local v1    # "offset":I
    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollBy(I)I

    .line 1022
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {v6, v8, p1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1020
    .end local v1    # "offset":I
    :cond_6
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private setupHandler()V
    .locals 1

    .prologue
    .line 1135
    new-instance v0, Lcom/oneplus/widget/FilmstripView$2;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$2;-><init>(Lcom/oneplus/widget/FilmstripView;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    .line 1143
    return-void
.end method

.method private startFly(F)V
    .locals 7
    .param p1, "velocity"    # F

    .prologue
    const/4 v6, 0x1

    .line 1149
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 1150
    iput-boolean v6, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 1151
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v2, 0x2711

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1152
    return-void
.end method

.method private stopAutoScroll()V
    .locals 2

    .prologue
    .line 1158
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 1159
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1160
    return-void
.end method

.method private stopFly()V
    .locals 2

    .prologue
    .line 1166
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-eqz v0, :cond_0

    .line 1168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 1169
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1171
    :cond_0
    return-void
.end method

.method private updateItemsLayout(Z)V
    .locals 14
    .param p1, "animation"    # Z

    .prologue
    .line 1178
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v10}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v2

    .line 1179
    .local v2, "itemCount":I
    :goto_0
    if-gtz v2, :cond_1

    .line 1276
    :goto_1
    return-void

    .line 1178
    .end local v2    # "itemCount":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1183
    .restart local v2    # "itemCount":I
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1186
    .local v0, "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-nez v0, :cond_2

    .line 1187
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1190
    :cond_2
    const/4 v5, 0x0

    .line 1191
    .local v5, "needNextUpdate":Z
    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1192
    .local v3, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_2
    if-eqz v3, :cond_6

    .line 1194
    iget v10, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v11, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    if-eq v10, v11, :cond_4

    .line 1197
    iget v10, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iget v11, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    sub-int v1, v10, v11

    .line 1198
    .local v1, "diff":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x5

    if-le v10, v11, :cond_3

    if-nez p1, :cond_5

    .line 1199
    :cond_3
    iget v10, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iput v10, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 1206
    :goto_3
    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v3, v10, v11, v12, v13}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 1207
    if-ne v3, v0, :cond_4

    .line 1208
    div-int/lit8 v10, v1, 0x2

    neg-int v10, v10

    invoke-virtual {v3, v10}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveBy(I)V

    .line 1210
    .end local v1    # "diff":I
    :cond_4
    iget-object v3, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_2

    .line 1202
    .restart local v1    # "diff":I
    :cond_5
    div-int/lit8 v1, v1, 0x3

    .line 1203
    iget v10, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v10, v1

    iput v10, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 1204
    const/4 v5, 0x1

    goto :goto_3

    .line 1214
    .end local v1    # "diff":I
    :cond_6
    if-eqz v0, :cond_8

    .line 1216
    iget-object v8, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1217
    .local v8, "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v4, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    .line 1218
    .local v4, "left":I
    :goto_4
    if-eqz v8, :cond_7

    .line 1220
    iget v10, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v10, v11

    sub-int/2addr v4, v10

    .line 1221
    invoke-virtual {v8, v4}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(I)V

    .line 1222
    iget-object v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_4

    .line 1224
    :cond_7
    iget-object v6, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1225
    .local v6, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v10, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v11, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int v4, v10, v11

    .line 1226
    :goto_5
    if-eqz v6, :cond_8

    .line 1228
    invoke-virtual {v6, v4}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(I)V

    .line 1229
    iget v10, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 1230
    iget-object v6, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_5

    .line 1235
    .end local v4    # "left":I
    .end local v6    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v8    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_8
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v7, v10, -0x1

    .line 1236
    .local v7, "position":I
    :goto_6
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    if-le v10, v11, :cond_9

    if-ltz v7, :cond_9

    .line 1238
    invoke-direct {p0, v7}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v3

    .line 1239
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v11, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    sub-int/2addr v10, v11

    invoke-virtual {v3, v10}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(I)V

    .line 1240
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v3, v10}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1241
    iput-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1242
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 1244
    :cond_9
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v7, v10, 0x1

    .line 1245
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget-object v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v11, v11, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int v9, v10, v11

    .line 1246
    .local v9, "right":I
    :goto_7
    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_a

    if-ge v7, v2, :cond_a

    .line 1248
    invoke-direct {p0, v7}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v3

    .line 1249
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget-object v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v11, v11, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v10, v11

    invoke-virtual {v3, v10}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(I)V

    .line 1250
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v3, v10}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addAfter(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1251
    iput-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1252
    iget v10, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v11, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int v9, v10, v11

    .line 1253
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1257
    :cond_a
    :goto_8
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    if-lt v10, v11, :cond_b

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eq v10, v11, :cond_b

    .line 1259
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v8, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1260
    .restart local v8    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v10}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1261
    iput-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_8

    .line 1263
    .end local v8    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_b
    :goto_9
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget-object v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v11, v11, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v10, v11

    if-gtz v10, :cond_c

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eq v10, v11, :cond_c

    .line 1265
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v6, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1266
    .restart local v6    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v10}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1267
    iput-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_9

    .line 1271
    .end local v6    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_c
    if-eqz v5, :cond_d

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v11, 0x2710

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_d

    .line 1272
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v11, 0x2710

    const-wide/16 v12, 0xf

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1275
    :cond_d
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 426
    iput-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    .line 427
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 429
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-nez v2, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(I)V

    .line 432
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    .line 435
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v2, :cond_2

    move v0, v1

    .line 436
    .local v0, "isFirstScrolling":Z
    :cond_2
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 444
    :goto_0
    :pswitch_0
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-eqz v2, :cond_5

    .line 446
    if-eqz v0, :cond_3

    .line 448
    sget-object v2, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v3, "dispatchTouchEvent() - Dispatch ACTION_CANCEL to child"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 450
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 455
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_4

    .line 456
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 457
    :cond_4
    return v1

    .line 441
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->onGestureUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 454
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 437
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentItem()I
    .locals 2

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 482
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFirstVisibltItem()I
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLastVisibltItem()I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x1

    .line 733
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 734
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 736
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 737
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 739
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 747
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 750
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 753
    .local v0, "centerPosition":I
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    .line 754
    iput p2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    .line 757
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 758
    return-void
.end method

.method public setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/oneplus/widget/FilmstripView$Adapter;

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eq v0, p1, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v0, p0}, Lcom/oneplus/widget/FilmstripView$Adapter;->detach(Lcom/oneplus/widget/FilmstripView;)V

    .line 1038
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->clearItems()V

    .line 1039
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 1040
    if-eqz p1, :cond_1

    .line 1042
    invoke-virtual {p1, p0}, Lcom/oneplus/widget/FilmstripView$Adapter;->attach(Lcom/oneplus/widget/FilmstripView;)V

    .line 1043
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(Z)V

    .line 1046
    :cond_1
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "smoothly"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1056
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopAutoScroll()V

    .line 1057
    if-eqz p2, :cond_1

    .line 1058
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(I)V

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1062
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_2

    .line 1064
    invoke-direct {p0, v0, v4}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v2

    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    sub-int v1, v2, v3

    .line 1065
    .local v1, "offset":I
    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollBy(I)I

    .line 1066
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v2, :cond_0

    .line 1068
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v2, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1069
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v2, v2, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v2, :cond_0

    .line 1071
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v4, v2, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1072
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_0

    .line 1077
    .end local v1    # "offset":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1087
    return-void
.end method

.method public setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/widget/FilmstripView$ScrollListener;

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    .line 1097
    return-void
.end method

.method public setScrollMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 1111
    packed-switch p1, :pswitch_data_0

    .line 1127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown scroll mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1115
    :pswitch_0
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1119
    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 1120
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 1121
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1122
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 1123
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    goto :goto_0

    .line 1111
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
