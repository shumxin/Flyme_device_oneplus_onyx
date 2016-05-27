.class Lcom/oppo/widget/OppoMultiChoiceAdapter$RightAnimatorMaker;
.super Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;
.source "OppoMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RightAnimatorMaker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;Z)V
    .locals 0
    .param p2, "in"    # Z

    .prologue
    .line 361
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$RightAnimatorMaker;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    .line 363
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;Z)V

    .line 364
    return-void
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
    .line 369
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    invoke-super {p0, p1, p2}, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;->addValueAnimatorData(Ljava/util/List;Landroid/view/View;)Ljava/lang/String;

    .line 370
    iget-boolean v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$RightAnimatorMaker;->mIn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$RightAnimatorMaker;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    # getter for: Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesRightIn:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    invoke-static {v1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$600(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    move-result-object v0

    .line 371
    .local v0, "rightListener":Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    :goto_0
    invoke-interface {v0, p2}, Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;->getStartValue(Landroid/view/View;)F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 372
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$RightAnimatorMaker;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iget-boolean v2, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$RightAnimatorMaker;->mIn:Z

    iget-object v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$RightAnimatorMaker;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    iget-object v3, v3, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mTranslationXListener:Landroid/animation/Animator$AnimatorListener;

    # invokes: Lcom/oppo/widget/OppoMultiChoiceAdapter;->createRightAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    invoke-static {v1, v2, p2, v3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$800(Lcom/oppo/widget/OppoMultiChoiceAdapter;ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->newInstance(Landroid/animation/ValueAnimator;Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;)Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    iget-boolean v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$RightAnimatorMaker;->mIn:Z

    if-eqz v1, :cond_1

    const-string v1, "RightIn"

    :goto_1
    return-object v1

    .line 370
    .end local v0    # "rightListener":Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$RightAnimatorMaker;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    # getter for: Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesRightOut:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    invoke-static {v1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->access$700(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    move-result-object v0

    goto :goto_0

    .line 375
    .restart local v0    # "rightListener":Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    :cond_1
    const-string v1, "RightOut"

    goto :goto_1
.end method
