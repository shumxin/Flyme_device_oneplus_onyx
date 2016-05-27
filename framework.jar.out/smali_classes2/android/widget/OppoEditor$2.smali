.class Landroid/widget/OppoEditor$2;
.super Ljava/lang/Object;
.source "OppoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 716
    iput-object p1, p0, Landroid/widget/OppoEditor$2;->this$0:Landroid/widget/OppoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 719
    iget-object v0, p0, Landroid/widget/OppoEditor$2;->this$0:Landroid/widget/OppoEditor;

    # getter for: Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/OppoEditor;->access$100(Landroid/widget/OppoEditor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/OppoEditor$2;->this$0:Landroid/widget/OppoEditor;

    # getter for: Landroid/widget/OppoEditor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/OppoEditor;->access$100(Landroid/widget/OppoEditor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc040535

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 722
    return-void
.end method
