.class Landroid/widget/OppoTranslateController$ResumeServiceListener$1;
.super Landroid/widget/OppoTranslateController$OnAskListener;
.source "OppoTranslateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoTranslateController$ResumeServiceListener;->getAskListener()Landroid/widget/OppoTranslateController$OnAskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/OppoTranslateController$ResumeServiceListener;


# direct methods
.method constructor <init>(Landroid/widget/OppoTranslateController$ResumeServiceListener;)V
    .locals 2

    .prologue
    .line 785
    iput-object p1, p0, Landroid/widget/OppoTranslateController$ResumeServiceListener$1;->this$1:Landroid/widget/OppoTranslateController$ResumeServiceListener;

    iget-object v0, p1, Landroid/widget/OppoTranslateController$ResumeServiceListener;->this$0:Landroid/widget/OppoTranslateController;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/OppoTranslateController$OnAskListener;-><init>(Landroid/widget/OppoTranslateController;Landroid/widget/OppoTranslateController$1;)V

    return-void
.end method


# virtual methods
.method initWindow()V
    .locals 0

    .prologue
    .line 788
    return-void
.end method

.method updateOnAccept()V
    .locals 0

    .prologue
    .line 791
    return-void
.end method
