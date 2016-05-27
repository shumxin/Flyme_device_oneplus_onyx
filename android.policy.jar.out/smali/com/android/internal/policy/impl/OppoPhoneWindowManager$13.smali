.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$13;
.super Ljava/lang/Object;
.source "OppoPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1899
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->bForceShowStatusBar:Z

    .line 1903
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 1904
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 1906
    :cond_0
    return-void
.end method
