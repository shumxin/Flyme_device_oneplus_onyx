.class Landroid/widget/OppoEditor$3;
.super Ljava/lang/Object;
.source "OppoEditor.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoEditor;->handleFloatPanelClick(Landroid/view/View;Landroid/widget/OppoCursorController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/OppoEditor;


# direct methods
.method constructor <init>(Landroid/widget/OppoEditor;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Landroid/widget/OppoEditor$3;->this$0:Landroid/widget/OppoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Landroid/widget/OppoEditor$3;->this$0:Landroid/widget/OppoEditor;

    # getter for: Landroid/widget/OppoEditor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/OppoEditor;->access$000(Landroid/widget/OppoEditor;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/OppoEditor$3$1;

    invoke-direct {v1, p0}, Landroid/widget/OppoEditor$3$1;-><init>(Landroid/widget/OppoEditor$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 767
    return-void
.end method
