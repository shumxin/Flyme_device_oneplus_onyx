.class Landroid/widget/OppoTranslateController$RetryServiceListener$1;
.super Landroid/widget/OppoTranslateController$OnAskListener;
.source "OppoTranslateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoTranslateController$RetryServiceListener;->getAskListener()Landroid/widget/OppoTranslateController$OnAskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/OppoTranslateController$RetryServiceListener;


# direct methods
.method constructor <init>(Landroid/widget/OppoTranslateController$RetryServiceListener;)V
    .locals 2

    .prologue
    .line 805
    iput-object p1, p0, Landroid/widget/OppoTranslateController$RetryServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$RetryServiceListener;

    iget-object v0, p1, Landroid/widget/OppoTranslateController$RetryServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/OppoTranslateController$OnAskListener;-><init>(Landroid/widget/OppoTranslateController;Landroid/widget/OppoTranslateController$1;)V

    return-void
.end method


# virtual methods
.method initWindow()V
    .locals 0

    .prologue
    .line 808
    return-void
.end method

.method updateOnAccept()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Landroid/widget/OppoTranslateController$RetryServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$RetryServiceListener;

    iget-object v0, v0, Landroid/widget/OppoTranslateController$RetryServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    # invokes: Landroid/widget/OppoTranslateController;->updateResult()V
    invoke-static {v0}, Landroid/widget/OppoTranslateController;->access$2500(Landroid/widget/OppoTranslateController;)V

    .line 813
    return-void
.end method
