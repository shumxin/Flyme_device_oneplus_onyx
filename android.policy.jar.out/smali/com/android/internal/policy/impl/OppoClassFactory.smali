.class public Lcom/android/internal/policy/impl/OppoClassFactory;
.super Ljava/lang/Object;
.source "OppoClassFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPhoneWindowManager()Lcom/android/internal/policy/impl/PhoneWindowManager;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;-><init>()V

    return-object v0
.end method
