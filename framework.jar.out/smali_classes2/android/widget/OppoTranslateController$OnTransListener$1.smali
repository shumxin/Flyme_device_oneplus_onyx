.class Landroid/widget/OppoTranslateController$OnTransListener$1;
.super Ljava/lang/Object;
.source "OppoTranslateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoTranslateController$OnTransListener;->onTransResult([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/OppoTranslateController$OnTransListener;

.field final synthetic val$result:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/OppoTranslateController$OnTransListener;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Landroid/widget/OppoTranslateController$OnTransListener$1;->this$1:Landroid/widget/OppoTranslateController$OnTransListener;

    iput-object p2, p0, Landroid/widget/OppoTranslateController$OnTransListener$1;->val$result:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 663
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnTransListener$1;->val$result:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnTransListener$1;->this$1:Landroid/widget/OppoTranslateController$OnTransListener;

    iget-object v0, v0, Landroid/widget/OppoTranslateController$OnTransListener;->this$0:Landroid/widget/OppoTranslateController;

    iget-object v1, p0, Landroid/widget/OppoTranslateController$OnTransListener$1;->val$result:[Ljava/lang/String;

    aget-object v1, v1, v2

    const/4 v2, 0x0

    # invokes: Landroid/widget/OppoTranslateController;->showTranslateResult(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Landroid/widget/OppoTranslateController;->access$1000(Landroid/widget/OppoTranslateController;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :goto_0
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnTransListener$1;->this$1:Landroid/widget/OppoTranslateController$OnTransListener;

    iget-object v0, v0, Landroid/widget/OppoTranslateController$OnTransListener;->this$0:Landroid/widget/OppoTranslateController;

    # invokes: Landroid/widget/OppoTranslateController;->updateLocation()V
    invoke-static {v0}, Landroid/widget/OppoTranslateController;->access$900(Landroid/widget/OppoTranslateController;)V

    .line 669
    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnTransListener$1;->this$1:Landroid/widget/OppoTranslateController$OnTransListener;

    iget-object v0, v0, Landroid/widget/OppoTranslateController$OnTransListener;->this$0:Landroid/widget/OppoTranslateController;

    const v1, 0xc04053a

    # invokes: Landroid/widget/OppoTranslateController;->showTranslateError(I)V
    invoke-static {v0, v1}, Landroid/widget/OppoTranslateController;->access$800(Landroid/widget/OppoTranslateController;I)V

    goto :goto_0
.end method
