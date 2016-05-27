.class Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;
.super Ljava/lang/Object;
.source "OppoMultiChoiceAdapter.java"

# interfaces
.implements Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeAnimatorMaker"
.end annotation


# instance fields
.field mIn:Z

.field final synthetic this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;Z)V
    .locals 1
    .param p2, "in"    # Z

    .prologue
    .line 329
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->mIn:Z

    .line 331
    iput-boolean p2, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->mIn:Z

    .line 332
    return-void
.end method

.method private getRightDependency()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->isActionBarShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    # getter for: Lcom/oppo/widget/OppoMultiChoiceAdapter;->mRightDependency:I
    invoke-static {v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$500(Lcom/oppo/widget/OppoMultiChoiceAdapter;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method addValueAnimatorData(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p2, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    iget-boolean v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->mIn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    # getter for: Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesFadeIn:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    invoke-static {v1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$200(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    move-result-object v0

    .line 346
    .local v0, "fadeListener":Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    :goto_0
    invoke-interface {v0, p2}, Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;->getStartValue(Landroid/view/View;)F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 347
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iget-boolean v2, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->mIn:Z

    iget-object v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iget-object v3, v3, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mAlphaListener:Landroid/animation/Animator$AnimatorListener;

    # invokes: Lcom/oppo/widget/OppoMultiChoiceAdapter;->createFadeAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    invoke-static {v1, v2, p2, v3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$400(Lcom/oppo/widget/OppoMultiChoiceAdapter;ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->newInstance(Landroid/animation/ValueAnimator;Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;)Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-boolean v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->mIn:Z

    if-eqz v1, :cond_1

    const-string v1, "FadeIn"

    :goto_1
    return-object v1

    .line 345
    .end local v0    # "fadeListener":Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    # getter for: Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesFadeOut:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    invoke-static {v1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$300(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    move-result-object v0

    goto :goto_0

    .line 350
    .restart local v0    # "fadeListener":Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    :cond_1
    const-string v1, "FadeOut"

    goto :goto_1
.end method

.method public makeAnimator(Landroid/content/Context;Landroid/view/View;)Lcom/oppo/util/OppoAnimatorHelper;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    invoke-virtual {p0, v1, p2}, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->addValueAnimatorData(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, "tag":Ljava/lang/String;
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iget-boolean v2, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->mIn:Z

    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->getRightDependency()I

    move-result v4

    iget-object v5, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    invoke-virtual {v5, p2, v6}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeTag(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeAnimatorHelper(Ljava/util/List;ZIILjava/lang/String;)Lcom/oppo/util/OppoAnimatorHelper;

    move-result-object v0

    return-object v0
.end method
