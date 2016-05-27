.class abstract Landroid/widget/OppoTranslateController$OnAskListener;
.super Lcom/oppo/translate/IOppoTranslateAskListener$Stub;
.source "OppoTranslateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoTranslateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OnAskListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/OppoTranslateController;


# direct methods
.method private constructor <init>(Landroid/widget/OppoTranslateController;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Landroid/widget/OppoTranslateController$OnAskListener;->this$0:Landroid/widget/OppoTranslateController;

    invoke-direct {p0}, Lcom/oppo/translate/IOppoTranslateAskListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/OppoTranslateController;Landroid/widget/OppoTranslateController$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/OppoTranslateController;
    .param p2, "x1"    # Landroid/widget/OppoTranslateController$1;

    .prologue
    .line 686
    invoke-direct {p0, p1}, Landroid/widget/OppoTranslateController$OnAskListener;-><init>(Landroid/widget/OppoTranslateController;)V

    return-void
.end method


# virtual methods
.method initWindow()V
    .locals 0

    .prologue
    .line 698
    return-void
.end method

.method public onAskResult(Z)V
    .locals 1
    .param p1, "accept"    # Z

    .prologue
    .line 690
    if-eqz p1, :cond_1

    .line 691
    invoke-virtual {p0}, Landroid/widget/OppoTranslateController$OnAskListener;->initWindow()V

    .line 692
    invoke-virtual {p0}, Landroid/widget/OppoTranslateController$OnAskListener;->updateOnAccept()V

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnAskListener;->this$0:Landroid/widget/OppoTranslateController;

    # invokes: Landroid/widget/OppoTranslateController;->isWindowShowing()Z
    invoke-static {v0}, Landroid/widget/OppoTranslateController;->access$700(Landroid/widget/OppoTranslateController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnAskListener;->this$0:Landroid/widget/OppoTranslateController;

    invoke-virtual {v0}, Landroid/widget/OppoTranslateController;->onDismiss()V

    goto :goto_0
.end method

.method updateOnAccept()V
    .locals 0

    .prologue
    .line 700
    return-void
.end method
