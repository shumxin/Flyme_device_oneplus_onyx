.class Landroid/widget/OppoTranslateController$1;
.super Ljava/lang/Object;
.source "OppoTranslateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoTranslateController;->updateResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/OppoTranslateController;


# direct methods
.method constructor <init>(Landroid/widget/OppoTranslateController;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Landroid/widget/OppoTranslateController$1;->this$0:Landroid/widget/OppoTranslateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 603
    const-string v0, "OppoTranslateController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/OppoTranslateController$1;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mServiceReady:Z
    invoke-static {v2}, Landroid/widget/OppoTranslateController;->access$500(Landroid/widget/OppoTranslateController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Landroid/widget/OppoTranslateController$1;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mServiceReady:Z
    invoke-static {v0}, Landroid/widget/OppoTranslateController;->access$500(Landroid/widget/OppoTranslateController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Landroid/widget/OppoTranslateController$1;->this$0:Landroid/widget/OppoTranslateController;

    # invokes: Landroid/widget/OppoTranslateController;->startDict()V
    invoke-static {v0}, Landroid/widget/OppoTranslateController;->access$600(Landroid/widget/OppoTranslateController;)V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoTranslateController$1;->this$0:Landroid/widget/OppoTranslateController;

    # invokes: Landroid/widget/OppoTranslateController;->isWindowShowing()Z
    invoke-static {v0}, Landroid/widget/OppoTranslateController;->access$700(Landroid/widget/OppoTranslateController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Landroid/widget/OppoTranslateController$1;->this$0:Landroid/widget/OppoTranslateController;

    const v1, 0xc04053b

    # invokes: Landroid/widget/OppoTranslateController;->showTranslateError(I)V
    invoke-static {v0, v1}, Landroid/widget/OppoTranslateController;->access$800(Landroid/widget/OppoTranslateController;I)V

    .line 608
    iget-object v0, p0, Landroid/widget/OppoTranslateController$1;->this$0:Landroid/widget/OppoTranslateController;

    # invokes: Landroid/widget/OppoTranslateController;->updateLocation()V
    invoke-static {v0}, Landroid/widget/OppoTranslateController;->access$900(Landroid/widget/OppoTranslateController;)V

    goto :goto_0
.end method
