.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$14;
.super Ljava/lang/Object;
.source "OppoPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->requestDismissKeyguard()V
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
    .line 1954
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$14;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$14;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isDismissable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$14;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 1963
    :goto_0
    return-void

    .line 1961
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$14;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->dismiss()V

    goto :goto_0
.end method
