.class Landroid/widget/OppoTranslateController$OnTransListener$2;
.super Ljava/lang/Object;
.source "OppoTranslateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoTranslateController$OnTransListener;->onTransError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/OppoTranslateController$OnTransListener;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Landroid/widget/OppoTranslateController$OnTransListener;I)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Landroid/widget/OppoTranslateController$OnTransListener$2;->this$1:Landroid/widget/OppoTranslateController$OnTransListener;

    iput p2, p0, Landroid/widget/OppoTranslateController$OnTransListener$2;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnTransListener$2;->this$1:Landroid/widget/OppoTranslateController$OnTransListener;

    iget-object v0, v0, Landroid/widget/OppoTranslateController$OnTransListener;->this$0:Landroid/widget/OppoTranslateController;

    iget-object v1, p0, Landroid/widget/OppoTranslateController$OnTransListener$2;->this$1:Landroid/widget/OppoTranslateController$OnTransListener;

    iget-object v1, v1, Landroid/widget/OppoTranslateController$OnTransListener;->this$0:Landroid/widget/OppoTranslateController;

    iget v2, p0, Landroid/widget/OppoTranslateController$OnTransListener$2;->val$code:I

    # invokes: Landroid/widget/OppoTranslateController;->getErrorMessage(I)I
    invoke-static {v1, v2}, Landroid/widget/OppoTranslateController;->access$1300(Landroid/widget/OppoTranslateController;I)I

    move-result v1

    # invokes: Landroid/widget/OppoTranslateController;->showTranslateError(I)V
    invoke-static {v0, v1}, Landroid/widget/OppoTranslateController;->access$800(Landroid/widget/OppoTranslateController;I)V

    .line 680
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnTransListener$2;->this$1:Landroid/widget/OppoTranslateController$OnTransListener;

    iget-object v0, v0, Landroid/widget/OppoTranslateController$OnTransListener;->this$0:Landroid/widget/OppoTranslateController;

    # invokes: Landroid/widget/OppoTranslateController;->updateLocation()V
    invoke-static {v0}, Landroid/widget/OppoTranslateController;->access$900(Landroid/widget/OppoTranslateController;)V

    .line 681
    return-void
.end method
