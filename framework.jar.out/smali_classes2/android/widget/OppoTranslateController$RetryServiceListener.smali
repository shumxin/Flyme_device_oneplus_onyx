.class Landroid/widget/OppoTranslateController$RetryServiceListener;
.super Landroid/widget/OppoTranslateController$OnServiceListener;
.source "OppoTranslateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoTranslateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/OppoTranslateController;


# direct methods
.method private constructor <init>(Landroid/widget/OppoTranslateController;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Landroid/widget/OppoTranslateController$RetryServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    invoke-direct {p0, p1}, Landroid/widget/OppoTranslateController$OnServiceListener;-><init>(Landroid/widget/OppoTranslateController;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/OppoTranslateController;Landroid/widget/OppoTranslateController$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/OppoTranslateController;
    .param p2, "x1"    # Landroid/widget/OppoTranslateController$1;

    .prologue
    .line 796
    invoke-direct {p0, p1}, Landroid/widget/OppoTranslateController$RetryServiceListener;-><init>(Landroid/widget/OppoTranslateController;)V

    return-void
.end method


# virtual methods
.method getAskListener()Landroid/widget/OppoTranslateController$OnAskListener;
    .locals 1

    .prologue
    .line 805
    new-instance v0, Landroid/widget/OppoTranslateController$RetryServiceListener$1;

    invoke-direct {v0, p0}, Landroid/widget/OppoTranslateController$RetryServiceListener$1;-><init>(Landroid/widget/OppoTranslateController$RetryServiceListener;)V

    return-object v0
.end method

.method isShowPrompt()Z
    .locals 1

    .prologue
    .line 800
    const/4 v0, 0x1

    return v0
.end method
