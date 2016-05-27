.class public Lcom/oppo/util/OppoAnimatorHelper;
.super Ljava/lang/Object;
.source "OppoAnimatorHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;,
        Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListenerAdapter;,
        Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    }
.end annotation


# static fields
.field public static final AFTER:I = 0x1

.field public static final BEFORE:I = 0x2

.field private static final DBG:Z = true

.field private static final DBG_ANIMATOR:Z = false

.field public static final DEFAULT_VISIBILITY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OppoAnimatorHelper"

.field public static final WITH:I


# instance fields
.field private mAnimatorDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;",
            ">;"
        }
    .end annotation
.end field

.field private mDependency:I

.field private mDuration:J

.field private mIn:Z

.field private mTag:Ljava/lang/String;

.field private mVisibility:I


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/util/OppoAnimatorHelper;-><init>(Ljava/util/List;ZI)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZI)V
    .locals 6
    .param p2, "in"    # Z
    .param p3, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/util/OppoAnimatorHelper;-><init>(Ljava/util/List;ZIJ)V

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZIJ)V
    .locals 8
    .param p2, "in"    # Z
    .param p3, "visibility"    # I
    .param p4, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;",
            ">;ZIJ)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/oppo/util/OppoAnimatorHelper;-><init>(Ljava/util/List;ZIJI)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZIJI)V
    .locals 8
    .param p2, "in"    # Z
    .param p3, "visibility"    # I
    .param p4, "duration"    # J
    .param p6, "dependency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;",
            ">;ZIJI)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oppo/util/OppoAnimatorHelper;-><init>(Ljava/util/List;ZIJILjava/lang/String;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZIJILjava/lang/String;)V
    .locals 4
    .param p2, "in"    # Z
    .param p3, "visibility"    # I
    .param p4, "duration"    # J
    .param p6, "dependency"    # I
    .param p7, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;",
            ">;ZIJI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mTag:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mAnimatorDataList:Ljava/util/List;

    .line 50
    iput-boolean v2, p0, Lcom/oppo/util/OppoAnimatorHelper;->mIn:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mDuration:J

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mVisibility:I

    .line 53
    iput v2, p0, Lcom/oppo/util/OppoAnimatorHelper;->mDependency:I

    .line 201
    iput-object p1, p0, Lcom/oppo/util/OppoAnimatorHelper;->mAnimatorDataList:Ljava/util/List;

    .line 202
    iput-boolean p2, p0, Lcom/oppo/util/OppoAnimatorHelper;->mIn:Z

    .line 203
    iput p3, p0, Lcom/oppo/util/OppoAnimatorHelper;->mVisibility:I

    .line 204
    iput-wide p4, p0, Lcom/oppo/util/OppoAnimatorHelper;->mDuration:J

    .line 205
    iput p6, p0, Lcom/oppo/util/OppoAnimatorHelper;->mDependency:I

    .line 206
    iput-object p7, p0, Lcom/oppo/util/OppoAnimatorHelper;->mTag:Ljava/lang/String;

    .line 207
    return-void
.end method

.method private LogOnAnimation(Landroid/animation/Animator;Ljava/lang/String;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 340
    instance-of v1, p1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 343
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oppo/util/OppoAnimatorHelper;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "info":Ljava/lang/String;
    const-string v1, "OppoAnimatorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method private getFinalVisibility()I
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mVisibility:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 331
    iget v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mVisibility:I

    .line 333
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mIn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setTargetVisibility(Landroid/animation/Animator;I)Landroid/view/View;
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "visibility"    # I

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "target":Landroid/view/View;
    instance-of v1, p1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 322
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "target":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 323
    .restart local v0    # "target":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 325
    :cond_0
    return-object v0
.end method

.method private updateValues(Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;Landroid/view/View;)V
    .locals 8
    .param p1, "data"    # Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->getListener()Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    move-result-object v2

    .line 301
    .local v2, "listener":Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    if-eqz v2, :cond_1

    .line 302
    invoke-interface {v2, p2}, Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;->getPivotXValue(Landroid/view/View;)F

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setPivotX(F)V

    .line 303
    invoke-interface {v2, p2}, Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;->getPivotYValue(Landroid/view/View;)F

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setPivotY(F)V

    .line 304
    invoke-interface {v2, p2}, Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;->getStartValue(Landroid/view/View;)F

    move-result v4

    .line 305
    .local v4, "startValue":F
    invoke-interface {v2, p2}, Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;->getEndValue(Landroid/view/View;)F

    move-result v1

    .line 306
    .local v1, "endValue":F
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 307
    .local v0, "animation":Landroid/animation/ValueAnimator;
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 309
    const-string v3, ""

    .line 310
    .local v3, "prop":Ljava/lang/String;
    instance-of v5, v0, Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_0

    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast v0, Landroid/animation/ObjectAnimator;

    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 313
    :cond_0
    const-string v5, "OppoAnimatorHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateValues"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .end local v1    # "endValue":F
    .end local v3    # "prop":Ljava/lang/String;
    .end local v4    # "startValue":F
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)Lcom/oppo/util/OppoAnimatorHelper;
    .locals 2
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mAnimatorDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mAnimatorDataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    invoke-virtual {v0}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    :cond_0
    return-object p0
.end method

.method public appendTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oppo/util/OppoAnimatorHelper;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mTag:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 293
    iget-object v2, p0, Lcom/oppo/util/OppoAnimatorHelper;->mAnimatorDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    .line 294
    .local v0, "data":Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
    invoke-virtual {v0}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/util/OppoAnimatorHelper;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 296
    .end local v0    # "data":Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
    :cond_0
    return-void
.end method

.method public getAnimators()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lcom/oppo/util/OppoAnimatorHelper;->mAnimatorDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    .line 255
    .local v0, "data":Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
    invoke-virtual {v0}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    .end local v0    # "data":Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
    :cond_0
    return-object v2
.end method

.method public getDependency()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mDependency:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 6

    .prologue
    .line 281
    iget-object v4, p0, Lcom/oppo/util/OppoAnimatorHelper;->mAnimatorDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    .line 282
    .local v1, "data":Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
    invoke-virtual {v1}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 283
    .local v0, "animation":Landroid/animation/ValueAnimator;
    iget-wide v4, p0, Lcom/oppo/util/OppoAnimatorHelper;->mDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 284
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 285
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/oppo/util/OppoAnimatorHelper;->setTargetVisibility(Landroid/animation/Animator;I)Landroid/view/View;

    move-result-object v3

    .line 286
    .local v3, "target":Landroid/view/View;
    invoke-direct {p0, v1, v3}, Lcom/oppo/util/OppoAnimatorHelper;->updateValues(Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;Landroid/view/View;)V

    goto :goto_0

    .line 288
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    .end local v1    # "data":Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
    .end local v3    # "target":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 212
    const-string v0, "onAnimationCancel"

    invoke-direct {p0, p1, v0}, Lcom/oppo/util/OppoAnimatorHelper;->LogOnAnimation(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 218
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 219
    invoke-direct {p0}, Lcom/oppo/util/OppoAnimatorHelper;->getFinalVisibility()I

    move-result v0

    .line 220
    .local v0, "visibility":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oppo/util/OppoAnimatorHelper;->LogOnAnimation(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, p1, v0}, Lcom/oppo/util/OppoAnimatorHelper;->setTargetVisibility(Landroid/animation/Animator;I)Landroid/view/View;

    .line 222
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 227
    const-string v0, "onAnimationRepeat"

    invoke-direct {p0, p1, v0}, Lcom/oppo/util/OppoAnimatorHelper;->LogOnAnimation(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 233
    const-string v0, "onAnimationStart"

    invoke-direct {p0, p1, v0}, Lcom/oppo/util/OppoAnimatorHelper;->LogOnAnimation(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 234
    return-void
.end method
