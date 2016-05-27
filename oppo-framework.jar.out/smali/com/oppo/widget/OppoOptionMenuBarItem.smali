.class public Lcom/oppo/widget/OppoOptionMenuBarItem;
.super Landroid/widget/LinearLayout;
.source "OppoOptionMenuBarItem.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NO_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OppoOptionMenuBarItem"


# instance fields
.field private final MSG_ANIMATION_END:I

.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mAnimationEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconOrig:Landroid/graphics/drawable/Drawable;

.field private mItemId:I

.field private mItemTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    .line 45
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    .line 46
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 180
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 181
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationEnabled:Z

    .line 189
    const/16 v0, 0x11

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->MSG_ANIMATION_END:I

    .line 190
    new-instance v0, Lcom/oppo/widget/OppoOptionMenuBarItem$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoOptionMenuBarItem$1;-><init>(Lcom/oppo/widget/OppoOptionMenuBarItem;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setupView(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    .line 45
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    .line 46
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 180
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 181
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationEnabled:Z

    .line 189
    const/16 v0, 0x11

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->MSG_ANIMATION_END:I

    .line 190
    new-instance v0, Lcom/oppo/widget/OppoOptionMenuBarItem$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoOptionMenuBarItem$1;-><init>(Lcom/oppo/widget/OppoOptionMenuBarItem;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    .line 55
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setupView(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    .line 45
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    .line 46
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 180
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 181
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationEnabled:Z

    .line 189
    const/16 v0, 0x11

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->MSG_ANIMATION_END:I

    .line 190
    new-instance v0, Lcom/oppo/widget/OppoOptionMenuBarItem$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoOptionMenuBarItem$1;-><init>(Lcom/oppo/widget/OppoOptionMenuBarItem;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    .line 60
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setupView(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoOptionMenuBarItem;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoOptionMenuBarItem;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private setupView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setGravity(I)V

    .line 65
    const v0, 0xc09043c

    invoke-static {p1, v0, p0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    const v0, 0xc020467

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    .line 67
    return-void
.end method

.method private update()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 97
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 99
    .local v1, "drawableWidth":I
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 100
    .local v0, "drawableHeight":I
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 105
    .end local v0    # "drawableHeight":I
    .end local v1    # "drawableWidth":I
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getItemId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    return v0
.end method

.method public getmAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method public getmAnimationEnabled()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationEnabled:Z

    return v0
.end method

.method public getmIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 170
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 171
    if-nez p2, :cond_0

    .line 172
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->startItemMoreAnimation(Landroid/graphics/drawable/AnimationDrawable;J)V

    .line 176
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 177
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setPadding(IIII)V

    .line 154
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 122
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 123
    return-void
.end method

.method public setItemEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setEnabled(Z)V

    .line 127
    return-void
.end method

.method public setItemIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 89
    const v0, 0x7fffffff

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->update()V

    .line 94
    return-void
.end method

.method public setItemId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    .line 71
    return-void
.end method

.method public setItemTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->update()V

    .line 82
    return-void
.end method

.method public setItemTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 111
    :cond_0
    return-void
.end method

.method public setItemTitleTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 117
    :cond_0
    return-void
.end method

.method public setItemVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setVisibility(I)V

    goto :goto_0
.end method

.method public setmAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .param p1, "animationDrawable"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 272
    return-void
.end method

.method public setmAnimationEnabled(Z)V
    .locals 0
    .param p1, "animationEnabled"    # Z

    .prologue
    .line 285
    return-void
.end method

.method public startItemMoreAnimation(Landroid/graphics/drawable/AnimationDrawable;J)V
    .locals 9
    .param p1, "animationDrawable"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "delayMillis"    # J

    .prologue
    const/16 v8, 0x11

    .line 230
    iget-boolean v5, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationEnabled:Z

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    .line 231
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemIcon(Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v4

    .line 234
    .local v4, "numberOfFrames":I
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 236
    const-wide/16 v0, 0x0

    .line 237
    .local v0, "animationDrawableDuation":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 238
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_0
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 241
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 245
    .local v3, "msgEND":Landroid/os/Message;
    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x32

    add-long/2addr v6, v0

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    .end local v0    # "animationDrawableDuation":J
    .end local v2    # "i":I
    .end local v3    # "msgEND":Landroid/os/Message;
    .end local v4    # "numberOfFrames":I
    :cond_2
    return-void
.end method

.method public stopItemMoreAnimation(Landroid/graphics/drawable/AnimationDrawable;J)V
    .locals 4
    .param p1, "animationDrawable"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "delayMillis"    # J

    .prologue
    const/16 v2, 0x11

    .line 256
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mAnimationEnabled:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, "msgEND":Landroid/os/Message;
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 263
    .end local v0    # "msgEND":Landroid/os/Message;
    :cond_0
    return-void
.end method
