.class public Lcom/oppo/util/OppoAnimationHelper;
.super Ljava/lang/Object;
.source "OppoAnimationHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final DBG:Z = true

.field public static final DEFAULT_VISIBILITY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OppoAnimationHelper"


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mClickable:Z

.field private mDelay:J

.field private mDuration:J

.field private mFillAfter:Z

.field private mIn:Z

.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mRunning:Z

.field private mTag:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mVisibility:I


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Z)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "in"    # Z

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/util/OppoAnimationHelper;-><init>(Landroid/view/animation/Animation;ZLandroid/view/View;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;ZLandroid/view/View;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "in"    # Z
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/util/OppoAnimationHelper;-><init>(Landroid/view/animation/Animation;ZLandroid/view/View;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;ZLandroid/view/View;Z)V
    .locals 8
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "in"    # Z
    .param p3, "view"    # Landroid/view/View;
    .param p4, "fillAfter"    # Z

    .prologue
    .line 70
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/oppo/util/OppoAnimationHelper;-><init>(Landroid/view/animation/Animation;ZLandroid/view/View;ZJ)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;ZLandroid/view/View;ZJ)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "in"    # Z
    .param p3, "view"    # Landroid/view/View;
    .param p4, "fillAfter"    # Z
    .param p5, "offset"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    .line 41
    iput-object v1, p0, Lcom/oppo/util/OppoAnimationHelper;->mAnimation:Landroid/view/animation/Animation;

    .line 42
    iput-object v1, p0, Lcom/oppo/util/OppoAnimationHelper;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 43
    iput-object v1, p0, Lcom/oppo/util/OppoAnimationHelper;->mTag:Ljava/lang/String;

    .line 44
    iput-boolean v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mFillAfter:Z

    .line 45
    iput-boolean v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mClickable:Z

    .line 52
    iput-boolean v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mRunning:Z

    .line 53
    iput-boolean v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mIn:Z

    .line 54
    iput-wide v2, p0, Lcom/oppo/util/OppoAnimationHelper;->mDelay:J

    .line 55
    iput-wide v2, p0, Lcom/oppo/util/OppoAnimationHelper;->mDuration:J

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mVisibility:I

    .line 76
    iput-object p1, p0, Lcom/oppo/util/OppoAnimationHelper;->mAnimation:Landroid/view/animation/Animation;

    .line 77
    iput-boolean p4, p0, Lcom/oppo/util/OppoAnimationHelper;->mFillAfter:Z

    .line 78
    iput-boolean p2, p0, Lcom/oppo/util/OppoAnimationHelper;->mIn:Z

    .line 79
    invoke-direct {p0, p5, p6}, Lcom/oppo/util/OppoAnimationHelper;->adjustDuration(J)V

    .line 80
    invoke-direct {p0, p3}, Lcom/oppo/util/OppoAnimationHelper;->setView(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method private adjustDuration(J)V
    .locals 5
    .param p1, "offset"    # J

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mDuration:J

    .line 281
    iget-wide v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mDuration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mDuration:J

    .line 282
    iget-wide v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 283
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mDuration:J

    .line 285
    :cond_0
    return-void
.end method

.method private getFinalVisibility()I
    .locals 2

    .prologue
    .line 297
    iget v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mVisibility:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 298
    iget v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mVisibility:I

    .line 300
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mIn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private getStartOffset(Z)J
    .locals 2
    .param p1, "delay"    # Z

    .prologue
    .line 305
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mDelay:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0410

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mDelay:J

    .line 293
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 254
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 175
    iget-object v1, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/oppo/util/OppoAnimationHelper;->getFinalVisibility()I

    move-result v0

    .line 177
    .local v0, "visibility":I
    const/4 v1, 0x1

    const-string v2, "OppoAnimationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/util/OppoAnimationHelper;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 181
    .end local v0    # "visibility":I
    :cond_0
    return-void
.end method

.method public end()V
    .locals 5

    .prologue
    .line 259
    iget-object v1, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/oppo/util/OppoAnimationHelper;->getFinalVisibility()I

    move-result v0

    .line 261
    .local v0, "visibility":I
    const/4 v1, 0x1

    const-string v2, "OppoAnimationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/util/OppoAnimationHelper;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .end local v0    # "visibility":I
    :cond_0
    return-void
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getFillAfter()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mFillAfter:Z

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mRunning:Z

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 98
    const/4 v0, 0x1

    const-string v1, "OppoAnimationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationEnd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/util/OppoAnimationHelper;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mRunning:Z

    .line 106
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/oppo/util/OppoAnimationHelper;->mClickable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 107
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x1

    .line 86
    const-string v0, "OppoAnimationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/util/OppoAnimationHelper;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-boolean v3, p0, Lcom/oppo/util/OppoAnimationHelper;->mRunning:Z

    .line 88
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mClickable:Z

    .line 89
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 90
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setFinalVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/oppo/util/OppoAnimationHelper;->mVisibility:I

    .line 128
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/oppo/util/OppoAnimationHelper;->mTag:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public start(ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 6
    .param p1, "delay"    # Z
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 198
    iput-boolean v4, p0, Lcom/oppo/util/OppoAnimationHelper;->mRunning:Z

    .line 199
    iput-object p2, p0, Lcom/oppo/util/OppoAnimationHelper;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 200
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mAnimation:Landroid/view/animation/Animation;

    iget-wide v2, p0, Lcom/oppo/util/OppoAnimationHelper;->mDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 201
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Lcom/oppo/util/OppoAnimationHelper;->getStartOffset(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 202
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 203
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mAnimation:Landroid/view/animation/Animation;

    iget-boolean v1, p0, Lcom/oppo/util/OppoAnimationHelper;->mFillAfter:Z

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 205
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 206
    const-string v0, "OppoAnimationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/util/OppoAnimationHelper;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/util/OppoAnimationHelper;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : startOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/util/OppoAnimationHelper;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/oppo/util/OppoAnimationHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/util/OppoAnimationHelper;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    :cond_0
    return-void
.end method

.method public start(ZLandroid/view/animation/Animation$AnimationListener;FF)V
    .locals 0
    .param p1, "delay"    # Z
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;
    .param p3, "rateX"    # F
    .param p4, "rateY"    # F

    .prologue
    .line 235
    return-void
.end method

.method public start(ZLandroid/view/animation/Animation$AnimationListener;Landroid/view/View;)V
    .locals 0
    .param p1, "delay"    # Z
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 221
    invoke-direct {p0, p3}, Lcom/oppo/util/OppoAnimationHelper;->setView(Landroid/view/View;)V

    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/oppo/util/OppoAnimationHelper;->start(ZLandroid/view/animation/Animation$AnimationListener;)V

    .line 223
    return-void
.end method

.method public start(ZLandroid/view/animation/Animation$AnimationListener;Landroid/view/View;FF)V
    .locals 0
    .param p1, "delay"    # Z
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "rateX"    # F
    .param p5, "rateY"    # F

    .prologue
    .line 248
    return-void
.end method
