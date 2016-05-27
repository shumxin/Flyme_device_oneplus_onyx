.class public Lcom/oppo/widget/OppoOptionMenuBar;
.super Landroid/widget/FrameLayout;
.source "OppoOptionMenuBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;,
        Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    }
.end annotation


# static fields
.field private static final BUTTON_MORE_ID:I = 0x7fffffff

.field private static final DEFAULT_FILL_LAYOUT_SPACE:Z = true

.field public static final DEFAULT_MAJOR_OPERATION_COUNT:I = 0x4

.field private static final FOURCHILD:I = 0x4

.field private static final LAYOUT_WEIGHT_DEFAULT:F = 1.0f

.field private static final LAYOUT_WEIGHT_ONE_WITH_ONE:F = 4.375f

.field private static final LAYOUT_WEIGHT_THREE_WITH_ONE:F = 1.458333f

.field private static final LAYOUT_WEIGHT_TWO_WITH_ONE:F = 2.1875f

.field private static final LOG_DEBUG:Z = false

.field private static final LOG_INVALIDATE:Z = false

.field private static final MAX_MAJOR_OPERTION_COUNT_IF_MORE_ENABLED:I = 0x3

.field private static final NONECHILD:I = 0x0

.field private static final ONECHILD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoOptionMenuBar"

.field private static final THREECHILD:I = 0x3

.field private static final TWOECHILD:I = 0x2


# instance fields
.field private final MSG_REFRESH_VIEWS:I

.field private QE_LOG:Z

.field private final REFRESH_VIEWS_DELAY_MILLIS:J

.field private isCurrentTopVisible:Z

.field private isCustomized:Z

.field private isFillLayoutSpace:Z

.field private isFlowMenu:Z

.field private isGallery:Z

.field private isInflated:Z

.field private isMoreOperationGroupScrolling:Z

.field private isMoreOperationsEnabled:Z

.field private isMoreOperationsGroupExpanded:Z

.field private isMusic:Z

.field private isNeedDelayCall:Z

.field private isRefreshGallery:Z

.field private isStepIntoNewActivity:Z

.field private isViewPager:Z

.field private mClickDuration:J

.field private mContext:Landroid/content/Context;

.field private mCurrentShowAnim:[Landroid/animation/Animator;

.field private mDecorMask:Landroid/widget/ImageView;

.field private mDecorView:Landroid/view/View;

.field private mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

.field private mElementItemHeight:I

.field private mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

.field private mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

.field private mGalleryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHasNavigationBar:Z

.field private mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemIdArray:[I

.field private mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field mItemMoreAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mItemMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mLeftItemTextColor:Landroid/content/res/ColorStateList;

.field private mMajorHopeCount:I

.field private mMajorOperationBg:Landroid/graphics/drawable/Drawable;

.field private mMajorOperationClickListener:Landroid/view/View$OnClickListener;

.field private mMajorOperationCount:I

.field private mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

.field private mMajorOperationHeight:I

.field private mMajorOperationsGroup:Landroid/widget/LinearLayout;

.field private mMajorOperationsLayout:Landroid/widget/LinearLayout;

.field private mMajorOpertionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoOptionMenuBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

.field private mMajorTextSize:F

.field private mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleItemTextColor:Landroid/content/res/ColorStateList;

.field private mMoreOpertationsGroup:Landroid/widget/Gallery;

.field private mMoreOptionMenuBarHeight:I

.field private mNavBarHeight:I

.field private mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

.field private mPreviousClickUpTime:J

.field private mRightItemTextColor:Landroid/content/res/ColorStateList;

.field private mScrollAnimationDuration:J

.field private mVisibleMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVisiblity:I

.field private mWm:Landroid/view/IWindowManager;

.field private offsetHeight:I

.field private offsetedDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 232
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->onFinishInflate()V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 236
    const v0, 0xc010426

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoOptionMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 240
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    .line 99
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    .line 102
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    .line 108
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 110
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    .line 112
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    .line 113
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 115
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    .line 117
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    .line 118
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    .line 119
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    .line 120
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    .line 122
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    .line 123
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isMusic:Z

    .line 124
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isGallery:Z

    .line 126
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    .line 127
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 129
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    .line 132
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    .line 134
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 135
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 137
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 138
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 139
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 140
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 142
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    .line 144
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    .line 145
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    .line 147
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    .line 148
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    .line 150
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    .line 152
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    .line 154
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    .line 156
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 159
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 160
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    .line 162
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 167
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 169
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    .line 170
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z

    .line 171
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

    .line 180
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    .line 186
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    .line 188
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 189
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOptionMenuBarHeight:I

    .line 191
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 194
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    .line 195
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    .line 196
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    .line 199
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    .line 202
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mHasNavigationBar:Z

    .line 203
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    .line 207
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mWm:Landroid/view/IWindowManager;

    .line 211
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 514
    new-instance v14, Lcom/oppo/widget/OppoOptionMenuBar$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/oppo/widget/OppoOptionMenuBar$2;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    .line 556
    new-instance v14, Lcom/oppo/widget/OppoOptionMenuBar$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/oppo/widget/OppoOptionMenuBar$3;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    .line 1817
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->MSG_REFRESH_VIEWS:I

    .line 1819
    const-wide/16 v14, 0xa

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->REFRESH_VIEWS_DELAY_MILLIS:J

    .line 1821
    new-instance v14, Lcom/oppo/widget/OppoOptionMenuBar$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/oppo/widget/OppoOptionMenuBar$5;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    .line 1839
    const-wide/16 v14, 0xfa

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    .line 1917
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    .line 1918
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    .line 2717
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 2761
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    .line 2762
    const/4 v14, 0x4

    new-array v14, v14, [I

    fill-array-data v14, :array_0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemIdArray:[I

    .line 2767
    const/4 v14, 0x4

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x0

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    .line 242
    const-string v14, "persist.sys.assert.panic"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x112005f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mHasNavigationBar:Z

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1050012

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    .line 250
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mHasNavigationBar:Z

    if-nez v14, :cond_0

    .line 251
    const-string v14, "window"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mWm:Landroid/view/IWindowManager;

    .line 253
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v14}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mHasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0xc05041d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 261
    .local v7, "defHeight":I
    move v11, v7

    .line 264
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0xc05041f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    .line 266
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOptionMenuBarHeight:I

    .line 267
    sget-object v14, Loppo/R$styleable;->OppoOptionMenuBar:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 270
    .local v4, "a":Landroid/content/res/TypedArray;
    if-eqz v4, :cond_1

    .line 272
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    .line 275
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 278
    const/4 v14, 0x2

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 280
    const/4 v14, 0x3

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 283
    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 285
    const/4 v14, 0x5

    invoke-virtual {v4, v14, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 288
    const/4 v14, 0x7

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 298
    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 300
    const/16 v14, 0x9

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 303
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 337
    :cond_1
    if-gtz v11, :cond_2

    .line 338
    move v11, v7

    .line 340
    :cond_2
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0xc050456

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    .line 346
    sget-object v14, Landroid/R$styleable;->Theme:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 348
    .local v5, "b":Landroid/content/res/TypedArray;
    if-eqz v5, :cond_4

    .line 349
    const/16 v14, 0x24

    invoke-virtual {v5, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 350
    .local v13, "windowBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_3

    .line 351
    move-object/from16 v0, p0

    invoke-super {v0, v13}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    :cond_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 358
    .end local v13    # "windowBackground":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/oppo/widget/OppoOptionMenuBar;->init(Landroid/content/Context;)V

    .line 362
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oppo/widget/OppoOptionMenuBar;->setMotionEventSplittingEnabled(Z)V

    .line 369
    const-string v9, "com.oppo.filemanager"

    .line 370
    .local v9, "fileManager":Ljava/lang/String;
    const-string v6, "com.oppo.alarmclock"

    .line 371
    .local v6, "clock":Ljava/lang/String;
    const-string v12, "com.oppo.music"

    .line 372
    .local v12, "music":Ljava/lang/String;
    const-string v10, "com.oppo.gallery3d"

    .line 374
    .local v10, "gallery":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 377
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    .line 379
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 380
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isMusic:Z

    .line 382
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 383
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isGallery:Z

    .line 388
    :cond_8
    new-instance v14, Lcom/oppo/widget/OppoOptionMenuBar$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/oppo/widget/OppoOptionMenuBar$1;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 412
    return-void

    .line 255
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "b":Landroid/content/res/TypedArray;
    .end local v6    # "clock":Ljava/lang/String;
    .end local v7    # "defHeight":I
    .end local v9    # "fileManager":Ljava/lang/String;
    .end local v10    # "gallery":Ljava/lang/String;
    .end local v11    # "height":I
    .end local v12    # "music":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 256
    .local v8, "e":Landroid/os/RemoteException;
    const-string v14, "OppoOptionMenuBar"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IWindowManager RemoteException "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2762
    nop

    :array_0
    .array-data 4
        0xc020462
        0xc020463
        0xc020464
        0xc020465
    .end array-data
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    return-void
.end method

.method static synthetic access$1102(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oppo/widget/OppoOptionMenuBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    return v0
.end method

.method static synthetic access$1402(Lcom/oppo/widget/OppoOptionMenuBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    return p1
.end method

.method static synthetic access$1500(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oppo/widget/OppoOptionMenuBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    return v0
.end method

.method static synthetic access$1700(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oppo/widget/OppoOptionMenuBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oppo/widget/OppoOptionMenuBar;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoOptionMenuBar;)J
    .locals 2
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoOptionMenuBar;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # J

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oppo/widget/OppoOptionMenuBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/oppo/widget/OppoOptionMenuBar;)[Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoOptionMenuBar;)J
    .locals 2
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return v0
.end method

.method static synthetic access$502(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method static synthetic access$602(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z

    return v0
.end method

.method static synthetic access$802(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isNeedDelayCall:Z

    return p1
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

    return-object v0
.end method

.method static synthetic access$902(Lcom/oppo/widget/OppoOptionMenuBar;Lcom/oppo/widget/OppoMenuItem;)Lcom/oppo/widget/OppoMenuItem;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p1, "x1"    # Lcom/oppo/widget/OppoMenuItem;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDelayCallItem:Lcom/oppo/widget/OppoMenuItem;

    return-object p1
.end method

.method private dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 2371
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2372
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2373
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 2372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2375
    :cond_0
    return-void
.end method

.method private getDecorView()Landroid/view/View;
    .locals 4

    .prologue
    .line 2142
    const/4 v1, 0x0

    .line 2145
    .local v1, "decorView":Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2146
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2151
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v1

    .line 2147
    :catch_0
    move-exception v2

    .line 2148
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getOffsetViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2272
    .local v1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2273
    .local v0, "offsetView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2274
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2285
    :cond_0
    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 2286
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 2290
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 2291
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2294
    :cond_2
    return-object v1
.end method

.method private hasTranslucentNavBar()Z
    .locals 1

    .prologue
    .line 2133
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isGallery:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateMajorOperationView()V
    .locals 3

    .prologue
    .line 670
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;-><init>(Landroid/content/Context;Lcom/oppo/widget/OppoOptionMenuBar;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    .line 672
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 674
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 677
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 682
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    return-void
.end method

.method private inflateMoreOperationView()V
    .locals 0

    .prologue
    .line 700
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    .line 420
    new-instance v0, Lcom/oppo/widget/OppoMenuInflater;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    .line 427
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->inflateMoreOperationView()V

    .line 431
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setFocusableInTouchMode(Z)V

    .line 436
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0413

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    .line 439
    return-void
.end method

.method private invalidateOptionMenuBar(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    const/4 v1, 0x2

    .line 1294
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1306
    :cond_1
    return-void
.end method

.method private isOrientationPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2137
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshGallery()V
    .locals 4

    .prologue
    .line 1027
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    if-nez v1, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v1}, Landroid/widget/Gallery;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 1034
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 1038
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1040
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setGalleryItems(Ljava/util/List;)V

    .line 1041
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OppoOptionMenuBar"

    const-string v2, "mMoreOpertationsGroup is null! If you want to use OppoOptionMenuBar,please define oppo theme styles in AndroidManifest.xml"

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private refreshViews()V
    .locals 12

    .prologue
    .line 784
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleTextSize(F)V

    .line 786
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleTextSize(F)V

    .line 787
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleTextSize(F)V

    .line 788
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleTextSize(F)V

    .line 790
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    iput v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 792
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-nez v10, :cond_0

    .line 793
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 796
    :cond_0
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    if-eqz v10, :cond_1

    .line 797
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 800
    :cond_1
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoMenuItem;

    .line 801
    .local v1, "e":Lcom/oppo/widget/OppoMenuItem;
    invoke-interface {v1}, Lcom/oppo/widget/OppoMenuItem;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 802
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 806
    .end local v1    # "e":Lcom/oppo/widget/OppoMenuItem;
    :cond_3
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 808
    .local v4, "menuItemsSize":I
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 810
    .local v9, "visibleMenuItemsSize":I
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-le v9, v10, :cond_6

    .line 811
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    .line 822
    :goto_1
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v10, :cond_4

    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_4

    .line 823
    const/4 v10, 0x3

    iput v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 832
    :cond_4
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 834
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    packed-switch v10, :pswitch_data_0

    .line 930
    :cond_5
    :goto_2
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v10, :cond_d

    .line 932
    new-instance v5, Lcom/oppo/widget/OppoMenuItemImpl;

    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/oppo/widget/OppoMenuItemImpl;-><init>(Landroid/content/Context;)V

    .line 934
    .local v5, "moreMenuItem":Lcom/oppo/widget/OppoMenuItem;
    const v10, 0x7fffffff

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setItemId(I)Landroid/view/MenuItem;

    .line 935
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 936
    const/4 v10, 0x1

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 942
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isEnabled()Z

    move-result v10

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 944
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 946
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 948
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .local v2, "i":I
    :goto_3
    if-ge v2, v9, :cond_c

    .line 949
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 813
    .end local v2    # "i":I
    .end local v5    # "moreMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :cond_6
    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 815
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    goto :goto_1

    .line 836
    :pswitch_0
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 837
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 838
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 839
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    goto :goto_2

    .line 844
    :pswitch_1
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 845
    .local v8, "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 846
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 847
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 848
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 851
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 852
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 859
    .end local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :pswitch_2
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 860
    .restart local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 861
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 862
    .local v6, "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 863
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 864
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 867
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_7

    .line 868
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 870
    :cond_7
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 871
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 878
    .end local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :pswitch_3
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 879
    .restart local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 880
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 881
    .restart local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 882
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoMenuItem;

    .line 883
    .local v7, "neutralMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 884
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 887
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_8

    .line 888
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 890
    :cond_8
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_9

    .line 891
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 893
    :cond_9
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 894
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 901
    .end local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v7    # "neutralMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :pswitch_4
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 902
    .restart local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 903
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 904
    .restart local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 905
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoMenuItem;

    .line 906
    .restart local v7    # "neutralMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 907
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoMenuItem;

    .line 908
    .restart local v5    # "moreMenuItem":Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 909
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->disableItemMoreAnimation()V

    .line 912
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_a

    .line 913
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 915
    :cond_a
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_b

    .line 916
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 917
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 919
    :cond_b
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 920
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 957
    .end local v6    # "negativeMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v7    # "neutralMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .end local v8    # "positiveMenuItem":Lcom/oppo/widget/OppoMenuItem;
    .restart local v2    # "i":I
    :cond_c
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    if-nez v10, :cond_d

    .line 958
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshGallery()V

    .line 977
    .end local v2    # "i":I
    .end local v5    # "moreMenuItem":Lcom/oppo/widget/OppoMenuItem;
    :cond_d
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 979
    .local v0, "count":I
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    if-nez v10, :cond_e

    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-nez v10, :cond_12

    .line 981
    :cond_e
    const/4 v10, 0x1

    if-ne v0, v10, :cond_f

    .line 982
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 983
    .local v1, "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 985
    .end local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    :cond_f
    const/4 v10, 0x1

    if-le v0, v10, :cond_14

    .line 986
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    if-ge v2, v0, :cond_14

    .line 987
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 989
    .restart local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    if-nez v2, :cond_10

    .line 990
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 986
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 991
    :cond_10
    add-int/lit8 v10, v0, -0x1

    if-ne v2, v10, :cond_11

    .line 992
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 995
    :cond_11
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 1002
    .end local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    .end local v2    # "i":I
    :cond_12
    const/4 v10, 0x1

    if-ne v0, v10, :cond_13

    .line 1003
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 1004
    .restart local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1006
    .end local v1    # "e":Lcom/oppo/widget/OppoOptionMenuBarItem;
    :cond_13
    const/4 v10, 0x2

    if-ne v0, v10, :cond_15

    .line 1007
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 1008
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 1021
    :cond_14
    :goto_8
    return-void

    .line 1009
    :cond_15
    const/4 v10, 0x3

    if-ne v0, v10, :cond_16

    .line 1010
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 1011
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 1012
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 1013
    :cond_16
    const/4 v10, 0x4

    if-ne v0, v10, :cond_14

    .line 1014
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 1015
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 1016
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 1017
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private resetPositionToDefault()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2447
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v1, :cond_1

    .line 2448
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOptionMenuBarHeight()I

    move-result v0

    .line 2450
    .local v0, "height":I
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->onOffsetToDefault(I)V

    .line 2454
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startElementItemAnimationDown()V

    .line 2457
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    .line 2459
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2460
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2463
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v1, :cond_1

    .line 2464
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 2467
    .end local v0    # "height":I
    :cond_1
    return-void
.end method

.method private resolveKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 2316
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2317
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 2318
    .local v0, "canceled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    .line 2320
    .local v2, "longPressed":Z
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    if-eqz v4, :cond_0

    .line 2321
    const-string v4, "OppoOptionMenuBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "on key up...enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",scrolling="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",expanded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "canceled ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "long press="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_0
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    if-nez v0, :cond_7

    iget v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-nez v4, :cond_7

    .line 2329
    :cond_2
    const/4 v4, 0x4

    if-ne v4, v1, :cond_5

    .line 2330
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-eqz v4, :cond_4

    .line 2358
    :cond_3
    :goto_0
    return v3

    .line 2332
    :cond_4
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v4, :cond_5

    .line 2334
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_0

    .line 2339
    :cond_5
    const/16 v4, 0x52

    if-ne v4, v1, :cond_7

    .line 2340
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoOptionMenuBarItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2342
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollUp()V

    goto :goto_0

    .line 2345
    :cond_6
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoOptionMenuBarItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2347
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_0

    .line 2358
    :cond_7
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private scrollView(Z)V
    .locals 5
    .param p1, "isScrollDown"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1925
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 1926
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    if-eqz v1, :cond_0

    .line 1927
    const-string v1, "OppoOptionMenuBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDecorMask is null when scrollView isScrollDown ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 1935
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v1, :cond_3

    .line 1936
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->QE_LOG:Z

    if-eqz v1, :cond_2

    .line 1937
    const-string v1, "OppoOptionMenuBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDecorMask is null again when scrollView isScrollDown ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_2
    :goto_0
    return-void

    .line 1943
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOptionMenuBarHeight()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    .line 1946
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1947
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    .line 1951
    :cond_4
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v4, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetHeight:I

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1952
    .local v0, "offsetAnim":Landroid/animation/ValueAnimator;
    iget-wide v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1953
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1955
    if-eqz p1, :cond_5

    .line 1956
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1982
    :goto_1
    iput v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    .line 1983
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$7;

    invoke-direct {v1, p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar$7;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2004
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$8;

    invoke-direct {v1, p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar$8;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2119
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1972
    :cond_5
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$6;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoOptionMenuBar$6;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1
.end method

.method private setElementItemAnimationDown(Landroid/widget/TextView;I)V
    .locals 6
    .param p1, "elementItem"    # Landroid/widget/TextView;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x2

    .line 2846
    if-eqz p1, :cond_1

    .line 2847
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v3, v3, p2

    if-eqz v3, :cond_0

    .line 2848
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 2850
    :cond_0
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2851
    .local v1, "objectAnimatorX":Landroid/animation/ObjectAnimator;
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2852
    .local v2, "objectAnimatorY":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2853
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2854
    iget-wide v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2855
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2856
    new-instance v3, Lcom/oppo/widget/OppoOptionMenuBar$10;

    invoke-direct {v3, p0, p2}, Lcom/oppo/widget/OppoOptionMenuBar$10;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;I)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2862
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2863
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aput-object v0, v3, p2

    .line 2865
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "objectAnimatorX":Landroid/animation/ObjectAnimator;
    .end local v2    # "objectAnimatorY":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void

    .line 2850
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2851
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setElementItemAnimationUp(Landroid/widget/TextView;I)V
    .locals 7
    .param p1, "elementItem"    # Landroid/widget/TextView;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 2783
    if-eqz p1, :cond_1

    .line 2784
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    .line 2785
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 2787
    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mElementItemHeight:I

    int-to-float v3, v3

    aput v3, v2, v6

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2788
    .local v0, "offsetAnim":Landroid/animation/ObjectAnimator;
    iget-wide v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2789
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2790
    mul-int/lit8 v1, p2, 0x3c

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2791
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2793
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/widget/OppoOptionMenuBar$9;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2839
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2840
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mCurrentShowAnim:[Landroid/animation/Animator;

    aput-object v0, v1, p2

    .line 2842
    .end local v0    # "offsetAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method private setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V
    .locals 4
    .param p1, "itemView"    # Lcom/oppo/widget/OppoOptionMenuBarItem;
    .param p2, "item"    # Lcom/oppo/widget/OppoMenuItem;

    .prologue
    .line 1083
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemId(I)V

    .line 1084
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1086
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->showsTextAsAction()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1087
    :cond_0
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitle(Ljava/lang/CharSequence;)V

    .line 1092
    :goto_0
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setEnabled(Z)V

    .line 1093
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->isVisible()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemVisible(Z)V

    .line 1095
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getWeight()F

    move-result v0

    .line 1101
    .local v0, "layoutWeight":F
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1103
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    if-nez v2, :cond_2

    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_2

    .line 1104
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    packed-switch v2, :pswitch_data_0

    .line 1121
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1128
    :goto_1
    invoke-virtual {p1, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1133
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    return-void

    .line 1089
    .end local v0    # "layoutWeight":F
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1106
    .restart local v0    # "layoutWeight":F
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/high16 v2, 0x408c0000    # 4.375f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1111
    :pswitch_1
    const/high16 v2, 0x400c0000    # 2.1875f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1116
    :pswitch_2
    const v2, 0x3fbaaaa8

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1125
    :cond_2
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 1104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "item"    # Lcom/oppo/widget/OppoOptionMenuBarItem;
    .param p2, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1057
    if-eqz p1, :cond_0

    .line 1058
    if-eqz p2, :cond_1

    .line 1059
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setupDecorMask()V
    .locals 2

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    if-eqz v0, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    .line 618
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    const v1, 0xc02046e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    .line 621
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$4;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoOptionMenuBar$4;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2363
    return-void
.end method

.method public collapseMenu()V
    .locals 1

    .prologue
    .line 2689
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v0, :cond_0

    .line 2690
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    .line 2693
    :cond_0
    return-void
.end method

.method public copyFrom(Lcom/oppo/widget/OppoOptionMenuBar;Z)V
    .locals 6
    .param p1, "menuBar"    # Lcom/oppo/widget/OppoOptionMenuBar;
    .param p2, "refreshMore"    # Z

    .prologue
    .line 1585
    iput-boolean p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 1586
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setEnabled(Lcom/oppo/widget/OppoOptionMenuBar;)V

    .line 1587
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorHopeCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 1588
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOptionMenuBarHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationMenuBarHeight(I)V

    .line 1589
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorMenuItemDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1590
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1591
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOperationTextSize()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextSize(F)V

    .line 1592
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1593
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemDefaultBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemLeftBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemMiddleBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemRightBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1597
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v2, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    iget-object v5, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1600
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOperationTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1601
    .local v0, "colors":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_1

    .line 1602
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 1604
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 1605
    return-void
.end method

.method public disableItemMoreAnimation()V
    .locals 2

    .prologue
    .line 2720
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2721
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setmAnimationEnabled(Z)V

    .line 2723
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2299
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    if-nez v1, :cond_1

    .line 2300
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2309
    :cond_0
    :goto_0
    return v0

    .line 2302
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2303
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2309
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableItemMoreAnimation()V
    .locals 2

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2727
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setmAnimationEnabled(Z)V

    .line 2729
    :cond_0
    return-void
.end method

.method public expandMenu()V
    .locals 1

    .prologue
    .line 2672
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-nez v0, :cond_0

    .line 2673
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollUp()V

    .line 2676
    :cond_0
    return-void
.end method

.method public findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1148
    const/4 v2, 0x0

    .line 1150
    .local v2, "item":Lcom/oppo/widget/OppoMenuItem;
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1151
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 1152
    .local v0, "e":Lcom/oppo/widget/OppoMenuItem;
    invoke-interface {v0}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1153
    move-object v2, v0

    goto :goto_0

    .line 1158
    .end local v0    # "e":Lcom/oppo/widget/OppoMenuItem;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 1621
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getClickDuration()J
    .locals 2

    .prologue
    .line 2712
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    return-wide v0
.end method

.method public getItemDefaultBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemLeftBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemMiddleBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemMoreIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemRightBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMajorHopeCount()I
    .locals 1

    .prologue
    .line 1540
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    return v0
.end method

.method public getMajorMenuItemDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMajorOperationTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMajorOperationTextSize()F
    .locals 1

    .prologue
    .line 1533
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    return v0
.end method

.method public getMajorOperationVisibility()I
    .locals 1

    .prologue
    .line 1665
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    return v0
.end method

.method public getMajorOperationsGroup()Landroid/view/View;
    .locals 1

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMajorOperationsLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMajorOptionMenuBarHeight()I
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 1433
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    goto :goto_0
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public getMoreOperationsGroupExpanded()Z
    .locals 1

    .prologue
    .line 1545
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method public getMoreOptionMenuBarHeight()I
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_0

    .line 1449
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOptionMenuBarHeight:I

    .line 1453
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateOptionMenuBar()V
    .locals 2

    .prologue
    .line 1287
    const-wide/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->invalidateOptionMenuBar(J)V

    .line 1288
    return-void
.end method

.method public isCustomized()Z
    .locals 1

    .prologue
    .line 1575
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1727
    invoke-super {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isMoreOperaionsEnabled()Z
    .locals 1

    .prologue
    .line 2631
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    return v0
.end method

.method public isMoreOperationGroupScrolling()Z
    .locals 1

    .prologue
    .line 2627
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return v0
.end method

.method public isMoreOperationsGroupExpanded()Z
    .locals 1

    .prologue
    .line 2635
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 2907
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2908
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_0

    .line 2909
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2911
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2912
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v9, 0x0

    .line 1732
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v6

    .line 1733
    .local v6, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1737
    .local v0, "e":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1738
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, -0x1

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 1743
    .end local v0    # "e":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v7, :cond_2

    .line 1744
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1745
    .local v3, "lpMajor":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v7}, Landroid/widget/Gallery;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1746
    .local v5, "more":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1747
    .local v4, "lpMore":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, 0x2

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v8, :cond_4

    .line 1748
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1749
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1758
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1759
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1763
    .end local v3    # "lpMajor":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "lpMore":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "more":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 1786
    iget-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v7, :cond_3

    .line 1787
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 1788
    invoke-direct {p0, v9}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1791
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1792
    return-void

    .line 1750
    .restart local v3    # "lpMajor":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "lpMore":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5    # "more":Landroid/view/View;
    :cond_4
    const/4 v7, 0x3

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v8, :cond_5

    .line 1751
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1752
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 1753
    :cond_5
    const/4 v7, 0x1

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v8, :cond_1

    .line 1754
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1755
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2916
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2917
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_0

    .line 2918
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2919
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 2921
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2922
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 443
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 445
    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    if-nez v2, :cond_2

    .line 446
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    .line 447
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->inflateMajorOperationView()V

    .line 452
    const v2, 0xc020468

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 453
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    const v2, 0xc020469

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 456
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    const v2, 0xc02046a

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 459
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    const v2, 0xc02046b

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 462
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    const v2, 0xc02046c

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    .line 466
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 469
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0xc02046d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBarGallery;

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    .line 472
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-nez v2, :cond_0

    .line 473
    const-string v2, "OppoOptionMenuBar"

    const-string v3, "Can\'t find the More Operation View in DecorViw when init;if you want to use OppoOptionMenuBar,please define oppo theme styles in AndroidManifest.xml"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v2}, Landroid/widget/Gallery;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 480
    .local v1, "more":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 481
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 482
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "more":Landroid/view/View;
    :cond_1
    new-instance v2, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    .line 487
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setOnGalleryItemClickListener(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;)V

    .line 512
    :cond_2
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 2474
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2476
    if-eqz p1, :cond_1

    .line 2477
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2478
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 2508
    :cond_0
    :goto_0
    return-void

    .line 2502
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMusic:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2503
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2504
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2403
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getChildCount()I

    move-result v14

    .line 2405
    .local v14, "count":I
    const/16 v18, 0x0

    .line 2406
    .local v18, "maxHeight":I
    const/16 v19, 0x0

    .line 2407
    .local v19, "maxWidth":I
    const/4 v13, 0x0

    .line 2409
    .local v13, "childState":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 2411
    .local v15, "height":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_2

    .line 2412
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2413
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 2415
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 2417
    const/high16 v20, 0x40000000    # 2.0f

    .line 2418
    .local v20, "mode":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    sub-int v21, v15, v2

    .line 2419
    .local v21, "resizeHeight":I
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 2421
    .local v6, "customHeightMeasureSpec":I
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/oppo/widget/OppoOptionMenuBar;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2426
    .end local v6    # "customHeightMeasureSpec":I
    .end local v20    # "mode":I
    .end local v21    # "resizeHeight":I
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    .line 2427
    .local v17, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 2429
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 2431
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v13, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->combineMeasuredStates(II)I

    move-result v13

    .line 2411
    .end local v17    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 2423
    :cond_1
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-virtual/range {v7 .. v12}, Lcom/oppo/widget/OppoOptionMenuBar;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    .line 2435
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    move/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveSizeAndState(III)I

    move-result v2

    shl-int/lit8 v4, v13, 0x10

    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveSizeAndState(III)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->setMeasuredDimension(II)V

    .line 2440
    return-void
.end method

.method protected onOffset(II)V
    .locals 10
    .param p1, "offset"    # I
    .param p2, "offstedDistance"    # I

    .prologue
    const/4 v9, 0x0

    .line 2160
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v6

    .line 2162
    .local v6, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2163
    .local v1, "e":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2168
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2170
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v8, 0x50

    if-ne v7, v8, :cond_1

    .line 2171
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v7, p1

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2177
    :goto_1
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 2185
    const/4 v5, 0x0

    .line 2186
    .local v5, "screen":Landroid/view/View;
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2187
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2188
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .end local v5    # "screen":Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .line 2190
    .restart local v5    # "screen":Landroid/view/View;
    :cond_0
    if-eqz v5, :cond_2

    .line 2191
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 2173
    .end local v0    # "content":Landroid/view/View;
    .end local v5    # "screen":Landroid/view/View;
    :cond_1
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, p1

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 2193
    .restart local v0    # "content":Landroid/view/View;
    .restart local v5    # "screen":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 2197
    .end local v0    # "content":Landroid/view/View;
    .end local v5    # "screen":Landroid/view/View;
    :cond_3
    const/4 v7, -0x1

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 2204
    .end local v1    # "e":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2205
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2206
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-lez p1, :cond_9

    .line 2207
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOptionMenuBarHeight()I

    move-result v7

    sub-int v4, p2, v7

    .line 2208
    .local v4, "margin":I
    if-lez v4, :cond_7

    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    if-ge v4, v7, :cond_7

    .line 2209
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2230
    .end local v4    # "margin":I
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2234
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->invalidate()V

    .line 2235
    return-void

    .line 2210
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "margin":I
    :cond_7
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    if-ne v4, v7, :cond_8

    .line 2211
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 2212
    :cond_8
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    if-le v4, v7, :cond_5

    .line 2213
    iget v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 2215
    .end local v4    # "margin":I
    :cond_9
    if-gez p1, :cond_5

    .line 2216
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v4, v7, p1

    .line 2217
    .restart local v4    # "margin":I
    if-lez v4, :cond_a

    .line 2218
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 2219
    :cond_a
    if-nez v4, :cond_b

    .line 2220
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 2221
    :cond_b
    if-gez v4, :cond_5

    .line 2222
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2
.end method

.method protected onOffsetToDefault(I)V
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 2238
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v3

    .line 2240
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2241
    .local v0, "e":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2246
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2248
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v5, 0x50

    if-ne v4, v5, :cond_0

    .line 2249
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, p1

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 2251
    :cond_0
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, p1

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 2260
    .end local v0    # "e":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasTranslucentNavBar()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isOrientationPortrait()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2261
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2262
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mNavBarHeight:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2263
    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2266
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 2267
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 2544
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 2545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    .line 2547
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2548
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2555
    if-nez p1, :cond_1

    .line 2556
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    if-nez v0, :cond_0

    .line 2557
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 2574
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2575
    return-void

    .line 2567
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    if-eqz v0, :cond_0

    .line 2568
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 2569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    goto :goto_0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 2511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 2518
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2519
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->getmAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->startItemMoreAnimation(Landroid/graphics/drawable/AnimationDrawable;J)V

    .line 2522
    :cond_0
    return-void
.end method

.method public removeOnMenuVisibilityListener(Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2367
    return-void
.end method

.method public resetTheme()V
    .locals 6

    .prologue
    .line 2871
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    .line 2874
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc050456

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2875
    .local v1, "defMajorTextSize":I
    int-to-float v3, v1

    iput v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    .line 2878
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc05041d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2879
    .local v0, "defHeight":I
    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 2881
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc050428

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2882
    .local v2, "defaultGroupPadding":I
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 2883
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2887
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080478

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 2894
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2895
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2896
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2897
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 2899
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc0804cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 2902
    return-void
.end method

.method public setAllMenuItemsEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1246
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 1247
    .local v0, "e":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1248
    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1251
    .end local v0    # "e":Lcom/oppo/widget/OppoMenuItem;
    :cond_1
    return-void
.end method

.method public setAllMenuItemsIcon(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1213
    .local p1, "icons":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    if-eqz p1, :cond_0

    .line 1214
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1216
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 1217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1218
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoMenuItem;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1222
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public setAllMenuItemsTitle(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1182
    .local p1, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    .line 1183
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1185
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 1186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1187
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoMenuItem;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1191
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1309
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 1314
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1315
    .local v5, "rect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 1316
    .local v0, "hasPadding":Z
    const/4 v2, 0x0

    .line 1317
    .local v2, "paddingLeft":I
    const/4 v4, 0x0

    .line 1318
    .local v4, "paddingTop":I
    const/4 v3, 0x0

    .line 1319
    .local v3, "paddingRight":I
    const/4 v1, 0x0

    .line 1321
    .local v1, "paddingBottom":I
    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1322
    const/4 v0, 0x1

    .line 1323
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    .line 1324
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    .line 1325
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 1326
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    .line 1331
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 1334
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1336
    if-eqz v0, :cond_1

    .line 1337
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2, v4, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1342
    .end local v0    # "hasPadding":Z
    .end local v1    # "paddingBottom":I
    .end local v2    # "paddingLeft":I
    .end local v3    # "paddingRight":I
    .end local v4    # "paddingTop":I
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public setClickDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 2701
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2702
    iput-wide p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    .line 2704
    :cond_0
    return-void
.end method

.method public setEnabled(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 1
    .param p1, "menuBar"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    .line 1580
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->isEnabled()Z

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1581
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1707
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1709
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setAllMenuItemsEnabled(Z)V

    .line 1719
    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->invalidateOptionMenuBar(J)V

    .line 1722
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "invalidate"    # Z

    .prologue
    .line 1625
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1626
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setAllMenuItemsEnabled(Z)V

    .line 1633
    if-eqz p2, :cond_0

    .line 1634
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 1636
    :cond_0
    return-void
.end method

.method public setFlowMenuFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 2640
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    .line 2641
    return-void
.end method

.method public setItemMoreIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 1675
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 1676
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1678
    :cond_0
    return-void
.end method

.method public setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1351
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1352
    return-void
.end method

.method public setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "bgDefault"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgLeft"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bgMiddle"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bgRight"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 1356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    .line 1358
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1366
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1367
    iput-object p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1368
    iput-object p3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1369
    iput-object p4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1382
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 1384
    return-void
.end method

.method public setMajorMenuItemDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    .line 1696
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1699
    :cond_0
    return-void
.end method

.method public setMajorOperationCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 1393
    return-void
.end method

.method public setMajorOperationMenuBarHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 1401
    if-lez p1, :cond_0

    .line 1402
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 1404
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1405
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1407
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 1410
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setMajorOperationTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1463
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 1464
    return-void
.end method

.method public setMajorOperationTextColor(IIII)V
    .locals 4
    .param p1, "defaultColor"    # I
    .param p2, "leftColor"    # I
    .param p3, "middleColor"    # I
    .param p4, "rightColor"    # I

    .prologue
    .line 1488
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 1491
    return-void
.end method

.method public setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1474
    if-eqz p1, :cond_0

    .line 1475
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 1477
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1478
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1479
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1480
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1482
    :cond_0
    return-void
.end method

.method public setMajorOperationTextColor(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "defaultColor"    # Landroid/content/res/ColorStateList;
    .param p2, "leftColor"    # Landroid/content/res/ColorStateList;
    .param p3, "middleColor"    # Landroid/content/res/ColorStateList;
    .param p4, "rightColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1495
    if-eqz p1, :cond_0

    .line 1496
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 1499
    :cond_0
    if-eqz p2, :cond_1

    .line 1500
    iput-object p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mLeftItemTextColor:Landroid/content/res/ColorStateList;

    .line 1503
    :cond_1
    if-eqz p3, :cond_2

    .line 1504
    iput-object p3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMiddleItemTextColor:Landroid/content/res/ColorStateList;

    .line 1507
    :cond_2
    if-eqz p4, :cond_3

    .line 1508
    iput-object p4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mRightItemTextColor:Landroid/content/res/ColorStateList;

    .line 1510
    :cond_3
    return-void
.end method

.method public setMajorOperationTextSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 1523
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorTextSize:F

    .line 1524
    return-void
.end method

.method public setMajorOperationVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1645
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    .line 1647
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    if-eqz v0, :cond_0

    .line 1648
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v0, :cond_0

    .line 1650
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1656
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestLayout()V

    .line 1657
    return-void
.end method

.method public setMenuItemEnabled(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1231
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1233
    .local v0, "item":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1234
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1236
    :cond_0
    return-void
.end method

.method public setMenuItemIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1200
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1202
    .local v0, "item":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1203
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1205
    :cond_0
    return-void
.end method

.method public setMenuItemTitle(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1169
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1171
    .local v0, "item":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1172
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1174
    :cond_0
    return-void
.end method

.method public setMenuItemVisible(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 1260
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1262
    .local v0, "item":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1263
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1265
    :cond_0
    return-void
.end method

.method public setMenuItems(I)V
    .locals 1
    .param p1, "menuRes"    # I

    .prologue
    .line 703
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(II)V

    .line 704
    return-void
.end method

.method public setMenuItems(II)V
    .locals 2
    .param p1, "menuRes"    # I
    .param p2, "majorOperationCount"    # I

    .prologue
    .line 707
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1, p1}, Lcom/oppo/widget/OppoMenuInflater;->inflate(I)V

    .line 708
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoMenuInflater;->getMenuItems()Ljava/util/List;

    move-result-object v0

    .line 710
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    invoke-virtual {p0, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 711
    return-void
.end method

.method public setMenuItems(IIZ)V
    .locals 2
    .param p1, "menuRes"    # I
    .param p2, "majorOperationCount"    # I
    .param p3, "invalidate"    # Z

    .prologue
    .line 743
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1, p1}, Lcom/oppo/widget/OppoMenuInflater;->inflate(I)V

    .line 744
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoMenuInflater;->getMenuItems()Ljava/util/List;

    move-result-object v0

    .line 746
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    invoke-virtual {p0, v0, p2, p3}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;IZ)V

    .line 747
    return-void
.end method

.method public setMenuItems(IZ)V
    .locals 1
    .param p1, "menuRes"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 739
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(IIZ)V

    .line 740
    return-void
.end method

.method public setMenuItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 714
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 715
    return-void
.end method

.method public setMenuItems(Ljava/util/List;I)V
    .locals 1
    .param p2, "majorOperationCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    .line 721
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 722
    iput p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 727
    :goto_0
    if-eqz p1, :cond_0

    .line 728
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 733
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 736
    :cond_0
    return-void

    .line 724
    :cond_1
    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    goto :goto_0
.end method

.method public setMenuItems(Ljava/util/List;IZ)V
    .locals 1
    .param p2, "majorOperationCount"    # I
    .param p3, "invalidate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    .line 757
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 758
    iput p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 763
    :goto_0
    if-eqz p1, :cond_0

    .line 764
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 770
    if-eqz p3, :cond_0

    .line 771
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 774
    :cond_0
    return-void

    .line 760
    :cond_1
    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    goto :goto_0
.end method

.method public setMenuItems(Ljava/util/List;Z)V
    .locals 1
    .param p2, "invalidate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 750
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;IZ)V

    .line 751
    return-void
.end method

.method public setMenuItemsVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1273
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 1274
    .local v0, "e":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1275
    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1278
    .end local v0    # "e":Lcom/oppo/widget/OppoMenuItem;
    :cond_1
    return-void
.end method

.method public setOnOptionsItemSelectedListener(Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    .prologue
    .line 1804
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    .line 1807
    return-void
.end method

.method public setmAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .param p1, "animationDrawable"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 2748
    return-void
.end method

.method public startElementItemAnimationDown()V
    .locals 3

    .prologue
    .line 2777
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setAnimationUpAgain(Z)V

    .line 2778
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2779
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemIdArray:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setElementItemAnimationDown(Landroid/widget/TextView;I)V

    .line 2778
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2781
    :cond_0
    return-void
.end method

.method public startElementItemAnimationUp()V
    .locals 3

    .prologue
    .line 2770
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setAnimationUpAgain(Z)V

    .line 2771
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2772
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemIdArray:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setElementItemAnimationUp(Landroid/widget/TextView;I)V

    .line 2771
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2774
    :cond_0
    return-void
.end method

.method protected startScrollDown()V
    .locals 1

    .prologue
    .line 1884
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->scrollView(Z)V

    .line 1885
    return-void
.end method

.method protected startScrollUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1842
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestFocus()Z

    .line 1845
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1846
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->requestFocusFromTouch()Z

    .line 1852
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1853
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 1856
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    if-eqz v0, :cond_2

    .line 1857
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshGallery()V

    .line 1860
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1861
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1864
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1866
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_4

    .line 1867
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 1875
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_5

    .line 1876
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 1880
    :cond_5
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->scrollView(Z)V

    .line 1881
    return-void
.end method

.method public unRegister()V
    .locals 4

    .prologue
    .line 2525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 2532
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    if-eqz v0, :cond_0

    .line 2533
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->getmAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->stopItemMoreAnimation(Landroid/graphics/drawable/AnimationDrawable;J)V

    .line 2536
    :cond_0
    return-void
.end method
