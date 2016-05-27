.class abstract Landroid/widget/OppoCursorController$OppoHandleView;
.super Landroid/view/View;
.source "OppoCursorController.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "OppoHandleView"
.end annotation


# static fields
.field public static final HANDLE_END:I = 0x2

.field public static final HANDLE_INSERT:I = 0x0

.field public static final HANDLE_START:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "OppoHandleView"

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field private mContainerX:I

.field private mContainerY:I

.field private mCursorController:Landroid/widget/OppoCursorController;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mEditor:Landroid/widget/OppoEditor;

.field private mHandleRange:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field protected mTextView:Landroid/widget/TextView;

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Landroid/widget/OppoCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p2, "editor"    # Landroid/widget/OppoEditor;
    .param p3, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 805
    iput-object p1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->this$0:Landroid/widget/OppoCursorController;

    .line 806
    invoke-virtual {p2}, Landroid/widget/OppoEditor;->textview()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 789
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffset:I

    .line 790
    iput v5, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    .line 791
    iput v5, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    .line 792
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsets:[I

    .line 793
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetsTimes:[J

    .line 794
    iput-boolean v6, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionHasChanged:Z

    .line 807
    iput-object p2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    .line 808
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v1}, Landroid/widget/OppoEditor;->textview()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    .line 809
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc05040f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHandleRange:I

    .line 811
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v4}, Landroid/widget/OppoEditor;->getSelectHandleWindowStyle()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 813
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 814
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 815
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 816
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 817
    iput-object p3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 818
    iput-object p4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 819
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->updateDrawable()V

    .line 821
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 822
    .local v0, "handleHeight":I
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchOffsetY:F

    .line 823
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIdealVerticalOffset:F

    .line 824
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 839
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    .line 840
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 841
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 842
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    .line 843
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 10

    .prologue
    .line 846
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 847
    .local v4, "now":J
    const/4 v0, 0x0

    .line 848
    .local v0, "i":I
    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    .line 849
    .local v2, "index":I
    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 850
    .local v1, "iMax":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 851
    add-int/lit8 v0, v0, 0x1

    .line 852
    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_0

    .line 854
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 856
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffsets:[I

    aget v3, v3, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 858
    :cond_1
    return-void
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 834
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mNumberPreviousOffsets:I

    .line 835
    invoke-direct {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->addPositionToTouchUpFilter(I)V

    .line 836
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 920
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    .line 921
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 922
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->onDetached()V

    .line 923
    return-void
.end method

.method public distance(FF)F
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 939
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method protected abstract getCurrentCursorOffset()I
.end method

.method public getHotspotLocationOnScreen([I)V
    .locals 3
    .param p1, "hostpotPos"    # [I

    .prologue
    .line 908
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 909
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    aput v1, p1, v0

    .line 910
    return-void
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 926
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->dismiss()V

    .line 927
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0, p0}, Landroid/widget/OppoEditor;->removePositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 928
    return-void
.end method

.method public inRecRange(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 964
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 965
    .local v2, "height":I
    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    add-int v0, v3, v4

    .line 966
    .local v0, "containerX":I
    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    div-int/lit8 v4, v2, 0x2

    add-int v1, v3, v4

    .line 967
    .local v1, "containerY":I
    int-to-float v3, v0

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHandleRange:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    int-to-float v3, v1

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public invisible()V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 944
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 947
    iget-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected isVisible()Z
    .locals 3

    .prologue
    .line 972
    iget-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 973
    const/4 v0, 0x1

    .line 980
    :goto_0
    return v0

    .line 976
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    const/4 v0, 0x0

    goto :goto_0

    .line 980
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/OppoEditor;->isPositionVisibleWrap(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected needShowHandle()Z
    .locals 1

    .prologue
    .line 933
    const/4 v0, 0x1

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 930
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 994
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mRight:I

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mBottom:I

    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 995
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 996
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 936
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/OppoCursorController$OppoHandleView;->setMeasuredDimension(II)V

    .line 1001
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1042
    iget-object v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v9, p0, p1}, Landroid/widget/OppoCursorController;->onHandleTouchEvent(Landroid/widget/OppoCursorController$OppoHandleView;Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1087
    :goto_0
    return v11

    .line 1045
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 1047
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v9

    invoke-direct {p0, v9}, Landroid/widget/OppoCursorController$OppoHandleView;->startTouchUpFilter(I)V

    .line 1048
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetX:F

    .line 1049
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    .line 1050
    iget-object v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v9}, Landroid/widget/OppoEditor;->getPositionListenerPostion()J

    move-result-wide v6

    .line 1051
    .local v6, "range":J
    # invokes: Landroid/widget/OppoCursorController;->extractRangeStartFromLong(J)I
    invoke-static {v6, v7}, Landroid/widget/OppoCursorController;->access$300(J)I

    move-result v9

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentX:I

    .line 1052
    # invokes: Landroid/widget/OppoCursorController;->extractRangeEndFromLong(J)I
    invoke-static {v6, v7}, Landroid/widget/OppoCursorController;->access$400(J)I

    move-result v9

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    .line 1053
    iput-boolean v11, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    .line 1057
    .end local v6    # "range":J
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 1058
    .local v5, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 1059
    .local v8, "rawY":F
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    int-to-float v10, v10

    sub-float v4, v9, v10

    .line 1060
    .local v4, "previousVerticalOffset":F
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    int-to-float v9, v9

    sub-float v9, v8, v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    int-to-float v10, v10

    sub-float v0, v9, v10

    .line 1063
    .local v0, "currentVerticalOffset":F
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIdealVerticalOffset:F

    cmpg-float v9, v4, v9

    if-gez v9, :cond_1

    .line 1064
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1065
    .local v3, "newVerticalOffset":F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1071
    :goto_1
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    int-to-float v9, v9

    add-float/2addr v9, v3

    iput v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    .line 1072
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetX:F

    sub-float v9, v5, v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    int-to-float v10, v10

    add-float v1, v9, v10

    .line 1073
    .local v1, "newPosX":F
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    sub-float v9, v8, v9

    iget v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchOffsetY:F

    add-float v2, v9, v10

    .line 1074
    .local v2, "newPosY":F
    invoke-virtual {p0, v1, v2}, Landroid/widget/OppoCursorController$OppoHandleView;->updatePosition(FF)V

    goto :goto_0

    .line 1067
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "newVerticalOffset":F
    :cond_1
    iget v9, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1068
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 1079
    .end local v0    # "currentVerticalOffset":F
    .end local v3    # "newVerticalOffset":F
    .end local v4    # "previousVerticalOffset":F
    .end local v5    # "rawX":F
    .end local v8    # "rawY":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->filterOnTouchUp()V

    .line 1080
    iput-boolean v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 1084
    :pswitch_3
    iput-boolean v10, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 1045
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public positionAtCursorOffset(IZ)V
    .locals 5
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 861
    iget-object v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 862
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 863
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v2}, Landroid/widget/OppoEditor;->prepareCursorControllers()V

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffset:I

    if-eq p1, v4, :cond_3

    move v1, v2

    .line 868
    .local v1, "offsetChanged":Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    .line 869
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->updateSelection(I)V

    .line 870
    invoke-direct {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->addPositionToTouchUpFilter(I)V

    .line 871
    invoke-virtual {p0, p1, v3}, Landroid/widget/OppoCursorController$OppoHandleView;->updatePositionXY(IZ)V

    .line 872
    iput p1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffset:I

    .line 873
    iput-boolean v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionHasChanged:Z

    goto :goto_0

    .end local v1    # "offsetChanged":Z
    :cond_3
    move v1, v3

    .line 867
    goto :goto_1
.end method

.method public resetHotspot([I)V
    .locals 4
    .param p1, "hostpotPos"    # [I

    .prologue
    const/4 v3, 0x0

    .line 913
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 914
    .local v0, "positionWindow":[I
    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 915
    aget v1, v0, v3

    iput v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    .line 916
    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    aput v1, p1, v3

    .line 917
    return-void
.end method

.method public setCursorController(Landroid/widget/OppoCursorController;)V
    .locals 0
    .param p1, "oppoCursorController"    # Landroid/widget/OppoCursorController;

    .prologue
    .line 904
    iput-object p1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mCursorController:Landroid/widget/OppoCursorController;

    .line 905
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 961
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 984
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    :goto_0
    return-void

    .line 987
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mEditor:Landroid/widget/OppoEditor;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/OppoEditor;->addPositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 988
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPreviousOffset:I

    .line 989
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 827
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 828
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 829
    .local v0, "isRtlCharAtOffset":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 830
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/OppoCursorController$OppoHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    .line 831
    return-void

    .line 829
    :cond_0
    iget-object v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 5
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1005
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-virtual {p0, v0, p4}, Landroid/widget/OppoCursorController$OppoHandleView;->positionAtCursorOffset(IZ)V

    .line 1006
    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionHasChanged:Z

    if-nez v0, :cond_0

    .line 1007
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mCursorController:Landroid/widget/OppoCursorController;

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->updatePosition()V

    .line 1038
    :goto_0
    return-void

    .line 1009
    :cond_0
    iget-boolean v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 1010
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentX:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    if-eq p2, v0, :cond_2

    .line 1011
    :cond_1
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetX:F

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetX:F

    .line 1013
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTouchToWindowOffsetY:F

    .line 1015
    iput p1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentX:I

    .line 1016
    iput p2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mLastParentY:I

    .line 1018
    :cond_2
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->onHandleMoved()V

    .line 1021
    :cond_3
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1022
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    .line 1023
    iget v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    .line 1024
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->needShowHandle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1025
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1026
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1036
    :cond_4
    :goto_1
    iput-boolean v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionHasChanged:Z

    goto :goto_0

    .line 1028
    :cond_5
    iget-object v0, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 1032
    :cond_6
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1033
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->dismiss()V

    goto :goto_1
.end method

.method protected updatePositionXY(IZ)V
    .locals 8
    .param p1, "offset"    # I
    .param p2, "flag"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 878
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_0

    .line 901
    :goto_0
    return-void

    .line 881
    :cond_0
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 882
    .local v0, "line":I
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mHotspotX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    .line 883
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    .line 885
    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    iget-object v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    .line 886
    if-nez v0, :cond_1

    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v3

    iget-object v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    neg-int v4, v4

    if-lt v3, v4, :cond_2

    .line 887
    :cond_1
    iget v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    iget-object v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    .line 890
    :cond_2
    if-eqz p2, :cond_3

    .line 891
    new-array v1, v7, [I

    .line 892
    .local v1, "position":[I
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 893
    aget v3, v1, v5

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    .line 894
    aget v3, v1, v6

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    goto :goto_0

    .line 896
    .end local v1    # "position":[I
    :cond_3
    new-array v2, v7, [I

    .line 897
    .local v2, "positionWindow":[I
    iget-object v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 898
    aget v3, v2, v5

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionX:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerX:I

    .line 899
    aget v3, v2, v6

    iget v4, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mPositionY:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoCursorController$OppoHandleView;->mContainerY:I

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
