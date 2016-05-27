.class Lcom/android/internal/policy/impl/OppoGlobalActions$2;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;->handleShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$000(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$000(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->removeAllViews()V

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/OppoGlobalActions;->initialize()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$100(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    .line 266
    :cond_0
    return-void
.end method
