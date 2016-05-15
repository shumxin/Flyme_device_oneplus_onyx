.class Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyLockModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;

    .prologue
    .line 1251
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1259
    const-string v1, "com.oem.intent.action.KEY_LOCK_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KeyLockMode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1261
    .local v0, "mode":I
    sput v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    .line 1262
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1263
    sget v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    packed-switch v1, :pswitch_data_0

    .line 1282
    .end local v0    # "mode":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1275
    .restart local v0    # "mode":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->forceReloadOemSettings()V

    goto :goto_0

    .line 1263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
