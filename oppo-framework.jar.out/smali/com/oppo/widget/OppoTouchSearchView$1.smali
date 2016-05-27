.class final Lcom/oppo/widget/OppoTouchSearchView$1;
.super Ljava/lang/Object;
.source "OppoTouchSearchView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoTouchSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/CharSequence;
    .param p2, "b"    # Ljava/lang/CharSequence;

    .prologue
    .line 458
    # getter for: Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;
    invoke-static {}, Lcom/oppo/widget/OppoTouchSearchView;->access$000()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 455
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/CharSequence;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/widget/OppoTouchSearchView$1;->compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method
