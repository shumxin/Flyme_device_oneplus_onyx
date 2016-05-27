.class Landroid/widget/OppoTranslateController$OnDictListener$1;
.super Ljava/lang/Object;
.source "OppoTranslateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoTranslateController$OnDictListener;->onTransResult([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/OppoTranslateController$OnDictListener;

.field final synthetic val$result:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/OppoTranslateController$OnDictListener;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Landroid/widget/OppoTranslateController$OnDictListener$1;->this$1:Landroid/widget/OppoTranslateController$OnDictListener;

    iput-object p2, p0, Landroid/widget/OppoTranslateController$OnDictListener$1;->val$result:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 624
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnDictListener$1;->val$result:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnDictListener$1;->this$1:Landroid/widget/OppoTranslateController$OnDictListener;

    iget-object v0, v0, Landroid/widget/OppoTranslateController$OnDictListener;->this$0:Landroid/widget/OppoTranslateController;

    iget-object v1, p0, Landroid/widget/OppoTranslateController$OnDictListener$1;->val$result:[Ljava/lang/String;

    aget-object v1, v1, v2

    iget-object v2, p0, Landroid/widget/OppoTranslateController$OnDictListener$1;->val$result:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    # invokes: Landroid/widget/OppoTranslateController;->showTranslateResult(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Landroid/widget/OppoTranslateController;->access$1000(Landroid/widget/OppoTranslateController;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnDictListener$1;->this$1:Landroid/widget/OppoTranslateController$OnDictListener;

    iget-object v0, v0, Landroid/widget/OppoTranslateController$OnDictListener;->this$0:Landroid/widget/OppoTranslateController;

    # invokes: Landroid/widget/OppoTranslateController;->updateLocation()V
    invoke-static {v0}, Landroid/widget/OppoTranslateController;->access$900(Landroid/widget/OppoTranslateController;)V

    .line 635
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnDictListener$1;->this$1:Landroid/widget/OppoTranslateController$OnDictListener;

    iget-object v0, v0, Landroid/widget/OppoTranslateController$OnDictListener;->this$0:Landroid/widget/OppoTranslateController;

    # invokes: Landroid/widget/OppoTranslateController;->startTranslate(Z)V
    invoke-static {v0, v2}, Landroid/widget/OppoTranslateController;->access$1100(Landroid/widget/OppoTranslateController;Z)V

    goto :goto_0
.end method
