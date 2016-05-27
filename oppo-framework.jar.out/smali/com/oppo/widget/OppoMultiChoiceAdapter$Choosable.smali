.class public interface abstract Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;
.super Ljava/lang/Object;
.source "OppoMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Choosable"
.end annotation


# virtual methods
.method public abstract findCheckView(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract findOtherView(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract isChoiceMode()Z
.end method

.method public abstract onFinish()V
.end method

.method public abstract setChoiceMode(Z)V
.end method
