.class Landroid/widget/OppoCursorController$InsertionPointCursorController$1;
.super Ljava/lang/Object;
.source "OppoCursorController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoCursorController$InsertionPointCursorController;-><init>(Landroid/widget/OppoEditor;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/OppoCursorController$InsertionPointCursorController;


# direct methods
.method constructor <init>(Landroid/widget/OppoCursorController$InsertionPointCursorController;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController$1;->this$0:Landroid/widget/OppoCursorController$InsertionPointCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController$1;->this$0:Landroid/widget/OppoCursorController$InsertionPointCursorController;

    iget-object v0, v0, Landroid/widget/OppoCursorController$InsertionPointCursorController;->mEditor:Landroid/widget/OppoEditor;

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController$1;->this$0:Landroid/widget/OppoCursorController$InsertionPointCursorController;

    invoke-virtual {v0, p1, v1}, Landroid/widget/OppoEditor;->handleFloatPanelClick(Landroid/view/View;Landroid/widget/OppoCursorController;)V

    .line 207
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionPointCursorController$1;->this$0:Landroid/widget/OppoCursorController$InsertionPointCursorController;

    # getter for: Landroid/widget/OppoCursorController$InsertionPointCursorController;->mPanel:Landroid/widget/OppoCursorController$FloatPanelViewController;
    invoke-static {v0}, Landroid/widget/OppoCursorController$InsertionPointCursorController;->access$000(Landroid/widget/OppoCursorController$InsertionPointCursorController;)Landroid/widget/OppoCursorController$FloatPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->hide()V

    .line 208
    return-void
.end method
