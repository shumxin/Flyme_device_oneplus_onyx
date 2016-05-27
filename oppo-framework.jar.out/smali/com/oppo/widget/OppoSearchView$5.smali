.class Lcom/oppo/widget/OppoSearchView$5;
.super Ljava/lang/Object;
.source "OppoSearchView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoSearchView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoSearchView;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView$5;->this$0:Lcom/oppo/widget/OppoSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$5;->this$0:Lcom/oppo/widget/OppoSearchView;

    # invokes: Lcom/oppo/widget/OppoSearchView;->adjustDropDownSizeAndPosition()V
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$300(Lcom/oppo/widget/OppoSearchView;)V

    .line 343
    return-void
.end method
