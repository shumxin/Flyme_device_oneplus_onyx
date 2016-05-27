.class Landroid/widget/OppoListViewHooks$RemoveImpl$1;
.super Ljava/lang/Object;
.source "OppoListViewHooks.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoListViewHooks$RemoveImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/OppoListViewHooks$RemoveImpl;


# direct methods
.method constructor <init>(Landroid/widget/OppoListViewHooks$RemoveImpl;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Landroid/widget/OppoListViewHooks$RemoveImpl$1;->this$1:Landroid/widget/OppoListViewHooks$RemoveImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;)I
    .locals 2
    .param p1, "item1"    # Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;
    .param p2, "item2"    # Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;->getPos()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;->getPos()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/OppoListViewHooks$RemoveImpl$1;->compare(Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;Landroid/widget/OppoListViewHooks$RemoveImpl$RemoveItem;)I

    move-result v0

    return v0
.end method
