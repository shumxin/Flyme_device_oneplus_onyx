.class Landroid/widget/OppoTranslateController$OnTransListener;
.super Lcom/oppo/translate/IOppoTranslateResultListener$Stub;
.source "OppoTranslateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoTranslateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTransListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/OppoTranslateController;


# direct methods
.method private constructor <init>(Landroid/widget/OppoTranslateController;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Landroid/widget/OppoTranslateController$OnTransListener;->this$0:Landroid/widget/OppoTranslateController;

    invoke-direct {p0}, Lcom/oppo/translate/IOppoTranslateResultListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/OppoTranslateController;Landroid/widget/OppoTranslateController$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/OppoTranslateController;
    .param p2, "x1"    # Landroid/widget/OppoTranslateController$1;

    .prologue
    .line 656
    invoke-direct {p0, p1}, Landroid/widget/OppoTranslateController$OnTransListener;-><init>(Landroid/widget/OppoTranslateController;)V

    return-void
.end method


# virtual methods
.method public onTransError(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 675
    const-string v0, "OppoTranslateController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransError : code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%1$#08x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/util/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnTransListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/OppoTranslateController;->access$1200(Landroid/widget/OppoTranslateController;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/OppoTranslateController$OnTransListener$2;

    invoke-direct {v1, p0, p1}, Landroid/widget/OppoTranslateController$OnTransListener$2;-><init>(Landroid/widget/OppoTranslateController$OnTransListener;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 683
    return-void
.end method

.method public onTransResult([Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 660
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnTransListener;->this$0:Landroid/widget/OppoTranslateController;

    # getter for: Landroid/widget/OppoTranslateController;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/OppoTranslateController;->access$1200(Landroid/widget/OppoTranslateController;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/OppoTranslateController$OnTransListener$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/OppoTranslateController$OnTransListener$1;-><init>(Landroid/widget/OppoTranslateController$OnTransListener;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 671
    return-void
.end method
