.class public Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;
.super Landroid/os/Handler;
.source "PhoneWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneWindowPolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowPolicy;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 58
    const-string v0, "PhoneWindowPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage , msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    const-string v0, "PhoneWindowPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_RESET_VOLUME_UP, msg.arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVolumeUpKeyTriggerSeq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeUpKeyTriggerSeq:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->access$000(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "PhoneWindowPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVolumeUpKeyTriggerRepeatCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeUpKeyTriggerRepeatCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->access$100(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeUpKeyTriggerSeq:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->access$000(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeUpKeyTriggerRepeatCount:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->access$100(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->access$200()Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowPolicy;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->access$300(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset mScreenshotChordVolumeUpKeyTriggered = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :pswitch_1
    const-string v0, "PhoneWindowPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_RESET_VOLUME_DOWN, msg.arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVolumeDownKeyTriggerSeq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeDownKeyTriggerSeq:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->access$400(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, "PhoneWindowPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVolumeDownKeyTriggerRepeatCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeDownKeyTriggerRepeatCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->access$500(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeDownKeyTriggerSeq:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->access$400(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeDownKeyTriggerRepeatCount:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->access$500(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->access$200()Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-result-object v0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowPolicy;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->access$300(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset mScreenshotChordVolumeDownKeyTriggered = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
