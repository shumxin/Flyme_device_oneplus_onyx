.class Landroid/widget/OppoCursorController$FloatPanelViewController$1;
.super Ljava/lang/Object;
.source "OppoCursorController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/OppoCursorController$FloatPanelViewController;


# direct methods
.method constructor <init>(Landroid/widget/OppoCursorController$FloatPanelViewController;)V
    .locals 0

    .prologue
    .line 1362
    iput-object p1, p0, Landroid/widget/OppoCursorController$FloatPanelViewController$1;->this$1:Landroid/widget/OppoCursorController$FloatPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Landroid/widget/OppoCursorController$FloatPanelViewController$1;->this$1:Landroid/widget/OppoCursorController$FloatPanelViewController;

    # invokes: Landroid/widget/OppoCursorController$FloatPanelViewController;->updatePosition()V
    invoke-static {v0}, Landroid/widget/OppoCursorController$FloatPanelViewController;->access$500(Landroid/widget/OppoCursorController$FloatPanelViewController;)V

    .line 1367
    return-void
.end method
