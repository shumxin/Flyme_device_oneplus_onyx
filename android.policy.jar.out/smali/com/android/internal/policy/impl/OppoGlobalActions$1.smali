.class Lcom/android/internal/policy/impl/OppoGlobalActions$1;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnChangeListener;


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
    .line 248
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$002(Lcom/android/internal/policy/impl/OppoGlobalActions;Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;)Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    .line 253
    return-void
.end method
