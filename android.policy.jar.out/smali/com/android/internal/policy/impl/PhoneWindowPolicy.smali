.class public Lcom/android/internal/policy/impl/PhoneWindowPolicy;
.super Ljava/lang/Object;
.source "PhoneWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;
    }
.end annotation


# static fields
.field private static final KEY_RESET_TIMEOUT:I = 0x7d0

.field private static final MSG_RESET_VOLUME_DOWN:I = 0x69

.field private static final MSG_RESET_VOLUME_UP:I = 0x6a

.field private static mContext:Landroid/content/Context;

.field private static mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mVolumeDownKeyTriggerRepeatCount:I

.field private mVolumeDownKeyTriggerSeq:I

.field private mVolumeUpKeyTriggerRepeatCount:I

.field private mVolumeUpKeyTriggerSeq:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "PhoneWindowPolicy"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->TAG:Ljava/lang/String;

    .line 44
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeUpKeyTriggerSeq:I

    .line 45
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeUpKeyTriggerRepeatCount:I

    .line 46
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeDownKeyTriggerSeq:I

    .line 47
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeDownKeyTriggerRepeatCount:I

    .line 90
    sput-object p1, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mContext:Landroid/content/Context;

    .line 91
    sput-object p2, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 92
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowPolicy$PhoneWindowPolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mHandler:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeUpKeyTriggerSeq:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeUpKeyTriggerRepeatCount:I

    return v0
.end method

.method static synthetic access$200()Lcom/android/internal/policy/impl/PhoneWindowManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeDownKeyTriggerSeq:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindowPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowPolicy;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeDownKeyTriggerRepeatCount:I

    return v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 145
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 97
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 98
    .local v1, "repeatCount":I
    const/16 v2, 0x18

    if-ne v0, v2, :cond_0

    .line 99
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeUpKeyTriggerRepeatCount:I

    .line 101
    :cond_0
    const/16 v2, 0x19

    if-ne v0, v2, :cond_1

    .line 102
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeDownKeyTriggerRepeatCount:I

    .line 104
    :cond_1
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const-wide/16 v10, 0x7d0

    const/4 v2, 0x1

    const/16 v9, 0x6a

    const/16 v8, 0x69

    const/4 v5, 0x0

    .line 107
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 108
    .local v3, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    move v1, v2

    .line 109
    .local v1, "down":Z
    :goto_0
    const/high16 v0, 0x20000000

    .line 110
    .local v0, "FLAG_INTERACTIVE":I
    const/high16 v6, 0x20000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_3

    .line 111
    .local v2, "interactive":Z
    :goto_1
    const/16 v6, 0x19

    if-ne v3, v6, :cond_5

    .line 112
    if-eqz v1, :cond_4

    .line 113
    if-eqz v2, :cond_0

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_0

    .line 115
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mHandler:Landroid/os/Handler;

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeDownKeyTriggerSeq:I

    invoke-virtual {v6, v8, v7, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 117
    .local v4, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 119
    .end local v4    # "msg":Landroid/os/Message;
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeDownKeyTriggerRepeatCount:I

    .line 138
    :cond_1
    :goto_2
    return v5

    .end local v0    # "FLAG_INTERACTIVE":I
    .end local v1    # "down":Z
    .end local v2    # "interactive":Z
    :cond_2
    move v1, v5

    .line 108
    goto :goto_0

    .restart local v0    # "FLAG_INTERACTIVE":I
    .restart local v1    # "down":Z
    :cond_3
    move v2, v5

    .line 110
    goto :goto_1

    .line 121
    .restart local v2    # "interactive":Z
    :cond_4
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeDownKeyTriggerSeq:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeDownKeyTriggerSeq:I

    .line 122
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    .line 124
    :cond_5
    const/16 v6, 0x18

    if-ne v3, v6, :cond_1

    .line 125
    if-eqz v1, :cond_7

    .line 126
    if-eqz v2, :cond_6

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    if-nez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_6

    .line 128
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mHandler:Landroid/os/Handler;

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeUpKeyTriggerSeq:I

    invoke-virtual {v6, v9, v7, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 130
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 132
    .end local v4    # "msg":Landroid/os/Message;
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeUpKeyTriggerRepeatCount:I

    goto :goto_2

    .line 134
    :cond_7
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeUpKeyTriggerSeq:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mVolumeUpKeyTriggerSeq:I

    .line 135
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method
