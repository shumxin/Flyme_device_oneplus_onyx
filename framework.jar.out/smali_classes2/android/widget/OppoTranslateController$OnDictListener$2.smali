.class Landroid/widget/OppoTranslateController$OnDictListener$2;
.super Ljava/lang/Object;
.source "OppoTranslateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoTranslateController$OnDictListener;->onTransError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/OppoTranslateController$OnDictListener;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Landroid/widget/OppoTranslateController$OnDictListener;I)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Landroid/widget/OppoTranslateController$OnDictListener$2;->this$1:Landroid/widget/OppoTranslateController$OnDictListener;

    iput p2, p0, Landroid/widget/OppoTranslateController$OnDictListener$2;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Landroid/widget/OppoTranslateController$OnDictListener$2;->this$1:Landroid/widget/OppoTranslateController$OnDictListener;

    iget-object v0, v0, Landroid/widget/OppoTranslateController$OnDictListener;->this$0:Landroid/widget/OppoTranslateController;

    const/4 v1, 0x0

    # invokes: Landroid/widget/OppoTranslateController;->startTranslate(Z)V
    invoke-static {v0, v1}, Landroid/widget/OppoTranslateController;->access$1100(Landroid/widget/OppoTranslateController;Z)V

    .line 651
    return-void
.end method
