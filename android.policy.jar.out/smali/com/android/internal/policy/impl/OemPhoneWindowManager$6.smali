.class Lcom/android/internal/policy/impl/OemPhoneWindowManager$6;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OemPhoneWindowManager;->onIdentified(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 1426
    return-void
.end method
