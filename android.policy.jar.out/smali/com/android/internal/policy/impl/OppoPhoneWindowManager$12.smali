.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$12;
.super Ljava/lang/Object;
.source "OppoPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->finishPostLayoutPolicyLwKeyguard(I)I
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
    .line 1842
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->dismiss()V

    .line 1846
    return-void
.end method
