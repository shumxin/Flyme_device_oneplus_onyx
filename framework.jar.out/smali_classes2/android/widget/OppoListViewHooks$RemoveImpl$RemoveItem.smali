.class Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;
.super Ljava/lang/Object;
.source "OppoListViewHooks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoListViewHooks$RemoveImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveItem"
.end annotation


# instance fields
.field private mPos:I

.field private mView:Landroid/view/View;

.field final synthetic this$1:Landroid/widget/OppoListViewHooks$RemoveImpl;


# direct methods
.method constructor <init>(Landroid/widget/OppoListViewHooks$RemoveImpl;Landroid/view/View;I)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I

    .prologue
    .line 82
    iput-object p1, p0, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;->this$1:Landroid/widget/OppoListViewHooks$RemoveImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;->mView:Landroid/view/View;

    .line 84
    iput p3, p0, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;->mPos:I

    .line 85
    return-void
.end method


# virtual methods
.method getPos()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;->mPos:I

    return v0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;->mView:Landroid/view/View;

    return-object v0
.end method
