.class public Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
.super Ljava/lang/Object;
.source "OppoAnimatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/util/OppoAnimatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueAnimatorData"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mListener:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;


# direct methods
.method private constructor <init>(Landroid/animation/ValueAnimator;Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;
    .param p2, "listener"    # Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->mAnimator:Landroid/animation/ValueAnimator;

    .line 133
    iput-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->mListener:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    .line 137
    iput-object p1, p0, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->mAnimator:Landroid/animation/ValueAnimator;

    .line 138
    iput-object p2, p0, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->mListener:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    .line 139
    return-void
.end method

.method public static newInstance(Landroid/animation/ValueAnimator;Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;)Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;
    .locals 1
    .param p0, "animation"    # Landroid/animation/ValueAnimator;
    .param p1, "listener"    # Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    .prologue
    .line 152
    new-instance v0, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    invoke-direct {v0, p0, p1}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;-><init>(Landroid/animation/ValueAnimator;Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;)V

    return-object v0
.end method


# virtual methods
.method public getAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public getListener()Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->mListener:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    return-object v0
.end method
