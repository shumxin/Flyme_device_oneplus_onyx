.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$8;
.super Landroid/telephony/PhoneStateListener;
.source "OppoPhoneWindowManager.java"


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
    .line 1367
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1370
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 1371
    packed-switch p1, :pswitch_data_0

    .line 1383
    :goto_0
    :pswitch_0
    return-void

    .line 1373
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z

    goto :goto_0

    .line 1378
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->isMute:Z

    goto :goto_0

    .line 1371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
