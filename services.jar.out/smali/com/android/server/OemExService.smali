.class public final Lcom/android/server/OemExService;
.super Landroid/os/IOemExService$Stub;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExService$OemHander;,
        Lcom/android/server/OemExService$CoverObserver;
    }
.end annotation


# static fields
.field private static final ACTION_BACK_COVER:Ljava/lang/String; = "com.oem.intent.action.THREE_BACK_COVER"

.field private static final ACTION_THREE_KEY:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE"

.field private static final ACTION_THREE_KEY_BOOT:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE_BOOT"

.field private static final EX_CHANNEL_NAME:Ljava/lang/String; = "OemExInputReceiver"

.field private static final TAG:Ljava/lang/String; = "OemExService"

.field public static mCurrentThreeKeyState:Ljava/lang/String;

.field public static switch_state:Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mCoverObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/OemExService$CoverObserver;",
            ">;"
        }
    .end annotation
.end field

.field mExInputChannel:Landroid/view/InputChannel;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInputManager:Lcom/android/server/input/InputManagerService;

.field private mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private mIsPaused:Z

.field private mOemHander:Landroid/os/Handler;

.field private mPower:Lcom/android/server/power/PowerManagerService;

.field private mSystemComplete:Z

.field private mThreeKeyReceiver:Landroid/os/IOemUeventCallback$Stub;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private final motionKeyCode:I

.field vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-string v0, ""

    sput-object v0, Lcom/android/server/OemExService;->mCurrentThreeKeyState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/power/PowerManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p4, "power"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Landroid/os/IOemExService$Stub;-><init>()V

    .line 78
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/OemExService;->DEBUG:Z

    .line 82
    iput-object v2, p0, Lcom/android/server/OemExService;->mExInputChannel:Landroid/view/InputChannel;

    .line 83
    iput-object v2, p0, Lcom/android/server/OemExService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    .line 87
    iput-boolean v1, p0, Lcom/android/server/OemExService;->mIsPaused:Z

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/OemExService;->motionKeyCode:I

    .line 112
    iput-boolean v1, p0, Lcom/android/server/OemExService;->mSystemComplete:Z

    .line 142
    new-instance v0, Lcom/android/server/OemExService$1;

    invoke-direct {v0, p0}, Lcom/android/server/OemExService$1;-><init>(Lcom/android/server/OemExService;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    new-instance v0, Lcom/android/server/OemExService$2;

    invoke-direct {v0, p0}, Lcom/android/server/OemExService$2;-><init>(Lcom/android/server/OemExService;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mThreeKeyReceiver:Landroid/os/IOemUeventCallback$Stub;

    .line 116
    iput-object p1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/server/OemExService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 118
    iput-object p3, p0, Lcom/android/server/OemExService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 119
    iput-object p4, p0, Lcom/android/server/OemExService;->mPower:Lcom/android/server/power/PowerManagerService;

    .line 120
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OemExService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 121
    iget-object v0, p0, Lcom/android/server/OemExService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/OemExService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 126
    new-instance v0, Lcom/android/server/OemExService$OemHander;

    iget-object v1, p0, Lcom/android/server/OemExService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/OemExService$OemHander;-><init>(Lcom/android/server/OemExService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mOemHander:Landroid/os/Handler;

    .line 128
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/OemExService;->vibrator:Landroid/os/Vibrator;

    .line 130
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/OemExService;->mAudioManager:Landroid/media/AudioManager;

    .line 131
    return-void
.end method

.method private CoverObservse_init()V
    .locals 11

    .prologue
    .line 155
    const/16 v8, 0x400

    :try_start_0
    new-array v0, v8, [C

    .line 159
    .local v0, "buffer":[C
    new-instance v6, Ljava/io/File;

    const-string v8, "/sys/class/switch/tri-state-key/state"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v6, "themePatch":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    .line 161
    .local v5, "mSmsgValid":Z
    iget-boolean v8, p0, Lcom/android/server/OemExService;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 162
    const-string v8, "OemExService"

    const-string v9, "oemEvent CoverObservse_init "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    if-eqz v5, :cond_2

    .line 164
    new-instance v3, Ljava/io/FileReader;

    const-string v8, "/sys/class/switch/tri-state-key/state"

    invoke-direct {v3, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, "file":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v3, v0, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 166
    .local v4, "len":I
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 167
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "curState":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.oem.intent.action.THREE_KEY_MODE_BOOT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v7, "threeKey":Landroid/content/Intent;
    const-string v8, "switch_state"

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v8, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 171
    iget-boolean v8, p0, Lcom/android/server/OemExService;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 172
    const-string v8, "OemExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "oemEvent message switch_state  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_1
    const-string v8, "3"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 174
    iget-object v8, p0, Lcom/android/server/OemExService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 175
    iget-object v8, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "zen_mode"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    .end local v0    # "buffer":[C
    .end local v1    # "curState":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v4    # "len":I
    .end local v5    # "mSmsgValid":Z
    .end local v6    # "themePatch":Ljava/io/File;
    .end local v7    # "threeKey":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 178
    .restart local v0    # "buffer":[C
    .restart local v1    # "curState":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "len":I
    .restart local v5    # "mSmsgValid":Z
    .restart local v6    # "themePatch":Ljava/io/File;
    .restart local v7    # "threeKey":Landroid/content/Intent;
    :cond_3
    const-string v8, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 179
    iget-object v8, p0, Lcom/android/server/OemExService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 180
    iget-object v8, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "zen_mode"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    .end local v0    # "buffer":[C
    .end local v1    # "curState":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v4    # "len":I
    .end local v5    # "mSmsgValid":Z
    .end local v6    # "themePatch":Ljava/io/File;
    .end local v7    # "threeKey":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[C
    .restart local v1    # "curState":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "len":I
    .restart local v5    # "mSmsgValid":Z
    .restart local v6    # "themePatch":Ljava/io/File;
    .restart local v7    # "threeKey":Landroid/content/Intent;
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/android/server/OemExService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 185
    iget-object v8, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "zen_mode"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/OemExService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/OemExService;->mSystemComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/OemExService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/OemExService;->mSystemComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/OemExService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/OemExService;->CoverObservse_init()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/OemExService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/OemExService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/OemExService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/OemExService;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->getUeventMessage(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/OemExService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/OemExService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/OemExService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/OemExService;)Landroid/hardware/input/InputManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/OemExService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    return-object v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 285
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/16 v3, 0x3f5

    if-eq v2, v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "msg":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/OemExService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 298
    const-string v1, "OemExService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUeventMessage(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 381
    .local v3, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 382
    .local v4, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 383
    .local v2, "length":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 384
    const/16 v5, 0x3d

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 385
    .local v1, "equals":I
    const/16 v5, 0x20

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 386
    .local v0, "at":I
    if-gez v0, :cond_1

    .line 395
    .end local v0    # "at":I
    .end local v1    # "equals":I
    :cond_0
    return-object v3

    .line 388
    .restart local v0    # "at":I
    .restart local v1    # "equals":I
    :cond_1
    if-le v1, v4, :cond_2

    if-ge v1, v0, :cond_2

    .line 390
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_2
    add-int/lit8 v4, v0, 0x1

    .line 394
    goto :goto_0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 368
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 372
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 375
    :goto_0
    return-object v2

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OemExService"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 5
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 354
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 358
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 363
    :goto_0
    return v2

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "OemExService"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public startUevent(Ljava/lang/String;Landroid/os/IOemUeventCallback;)Z
    .locals 10
    .param p1, "patch"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/IOemUeventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 250
    iget-object v7, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    monitor-enter v7

    .line 252
    :try_start_0
    iget-object v8, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 253
    .local v4, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 254
    iget-object v8, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OemExService$CoverObserver;

    .line 255
    .local v0, "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    iget-object v8, v0, Lcom/android/server/OemExService$CoverObserver;->mCallback:Landroid/os/IOemUeventCallback;

    invoke-interface {v8}, Landroid/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {p2}, Landroid/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    if-ne v8, v9, :cond_0

    .line 256
    monitor-exit v7

    .line 269
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    :goto_1
    return v5

    .line 253
    .restart local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    :cond_1
    new-instance v1, Lcom/android/server/OemExService$CoverObserver;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/OemExService$CoverObserver;-><init>(Lcom/android/server/OemExService;Ljava/lang/String;Landroid/os/IOemUeventCallback;)V

    .line 261
    .local v1, "callNewBackInfo":Lcom/android/server/OemExService$CoverObserver;
    iget-object v8, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :try_start_1
    invoke-interface {p2}, Landroid/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v1, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 264
    invoke-virtual {v1}, Lcom/android/server/OemExService$CoverObserver;->start()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :try_start_2
    monitor-exit v7

    goto :goto_1

    .end local v1    # "callNewBackInfo":Lcom/android/server/OemExService$CoverObserver;
    .end local v3    # "i":I
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 265
    .restart local v1    # "callNewBackInfo":Lcom/android/server/OemExService$CoverObserver;
    .restart local v3    # "i":I
    .restart local v4    # "size":I
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v5, v6

    goto :goto_1
.end method

.method public stopUevent(Landroid/os/IOemUeventCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/os/IOemUeventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 134
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/OemExService;->mSystemComplete:Z

    .line 135
    new-instance v0, Lcom/android/server/OemExService$CoverObserver;

    const-string v1, "/devices/virtual/switch/tri-state-key"

    iget-object v2, p0, Lcom/android/server/OemExService;->mThreeKeyReceiver:Landroid/os/IOemUeventCallback$Stub;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/OemExService$CoverObserver;-><init>(Lcom/android/server/OemExService;Ljava/lang/String;Landroid/os/IOemUeventCallback;)V

    .line 137
    .local v0, "threeObserver":Lcom/android/server/OemExService$CoverObserver;
    invoke-virtual {v0}, Lcom/android/server/OemExService$CoverObserver;->start()V

    .line 139
    invoke-direct {p0}, Lcom/android/server/OemExService;->CoverObservse_init()V

    .line 140
    return-void
.end method
