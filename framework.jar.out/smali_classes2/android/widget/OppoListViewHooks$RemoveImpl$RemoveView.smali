.class Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;
.super Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;
.source "OppoListViewHooks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoListViewHooks$RemoveImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveView"
.end annotation


# instance fields
.field private mPosY:I

.field private mSelected:Z

.field final synthetic this$1:Landroid/widget/OppoListViewHooks$RemoveImpl;


# direct methods
.method constructor <init>(Landroid/widget/OppoListViewHooks$RemoveImpl;Landroid/view/View;IIZ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "y"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 101
    iput-object p1, p0, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;->this$1:Landroid/widget/OppoListViewHooks$RemoveImpl;

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;-><init>(Landroid/widget/OppoListViewHooks$RemoveImpl;Landroid/view/View;I)V

    .line 103
    iput p4, p0, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;->mPosY:I

    .line 104
    iput-boolean p5, p0, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;->mSelected:Z

    .line 105
    return-void
.end method


# virtual methods
.method getSelected()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;->mSelected:Z

    return v0
.end method

.method getY()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveView;->mPosY:I

    return v0
.end method
