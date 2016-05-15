.class public final Lcom/android/server/OemExService;
.super Lcom/oem/os/IOemExService$Stub;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExService$OemHander;,
        Lcom/android/server/OemExService$CoverObserver;,
        Lcom/android/server/OemExService$OemExInputCallBack;,
        Lcom/android/server/OemExService$OemExInputEventReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_BACK_COVER:Ljava/lang/String; = "com.oem.intent.action.THREE_BACK_COVER"

.field private static final ACTION_THREE_KEY:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE"

.field private static final ACTION_THREE_KEY_BOOT:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE_BOOT"

.field static final DEBUG:Z = false

.field private static final EX_CHANNEL_NAME:Ljava/lang/String; = "OemExInputReceiver"

.field private static final TAG:Ljava/lang/String; = "OemExService"

.field public static mCurrentThreeKeyState:Ljava/lang/String;

.field public static switch_state:Ljava/lang/String;


# instance fields
.field private mBackCoverKeyReceiver:Lcom/oem/os/IOemUeventCallback$Stub;

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

.field mExInputEventReceiver:Lcom/android/server/OemExService$OemExInputEventReceiver;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mInputCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/OemExService$OemExInputCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mInputManager:Lcom/android/server/input/InputManagerService;

.field private mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private mIsPaused:Z

.field private mOemHander:Landroid/os/Handler;

.field private mPower:Lcom/android/server/power/PowerManagerService;

.field private mSystemComplete:Z

.field private mThreeKeyReceiver:Lcom/oem/os/IOemUeventCallback$Stub;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private final motionKeyCode:I

.field vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-string v0, ""

    sput-object v0, Lcom/android/server/OemExService;->mCurrentThreeKeyState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/power/PowerManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p4, "power"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Lcom/oem/os/IOemExService$Stub;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/android/server/OemExService;->mExInputChannel:Landroid/view/InputChannel;

    .line 78
    iput-object v0, p0, Lcom/android/server/OemExService;->mExInputEventReceiver:Lcom/android/server/OemExService$OemExInputEventReceiver;

    .line 79
    iput-object v0, p0, Lcom/android/server/OemExService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    .line 85
    iput-boolean v1, p0, Lcom/android/server/OemExService;->mIsPaused:Z

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/OemExService;->motionKeyCode:I

    .line 108
    iput-boolean v1, p0, Lcom/android/server/OemExService;->mSystemComplete:Z

    .line 161
    new-instance v0, Lcom/android/server/OemExService$1;

    invoke-direct {v0, p0}, Lcom/android/server/OemExService$1;-><init>(Lcom/android/server/OemExService;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 533
    new-instance v0, Lcom/android/server/OemExService$2;

    invoke-direct {v0, p0}, Lcom/android/server/OemExService$2;-><init>(Lcom/android/server/OemExService;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mThreeKeyReceiver:Lcom/oem/os/IOemUeventCallback$Stub;

    .line 638
    new-instance v0, Lcom/android/server/OemExService$3;

    invoke-direct {v0, p0}, Lcom/android/server/OemExService$3;-><init>(Lcom/android/server/OemExService;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mBackCoverKeyReceiver:Lcom/oem/os/IOemUeventCallback$Stub;

    .line 112
    iput-object p1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/server/OemExService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 114
    iput-object p3, p0, Lcom/android/server/OemExService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 115
    iput-object p4, p0, Lcom/android/server/OemExService;->mPower:Lcom/android/server/power/PowerManagerService;

    .line 116
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OemExService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 117
    iget-object v0, p0, Lcom/android/server/OemExService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 119
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/OemExService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 121
    new-instance v0, Lcom/android/server/OemExService$OemHander;

    iget-object v1, p0, Lcom/android/server/OemExService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/OemExService$OemHander;-><init>(Lcom/android/server/OemExService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mOemHander:Landroid/os/Handler;

    .line 123
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/OemExService;->vibrator:Landroid/os/Vibrator;

    .line 124
    return-void
.end method

.method private CoverObservse_init()V
    .locals 15

    .prologue
    .line 174
    const/16 v12, 0x400

    :try_start_0
    new-array v1, v12, [C

    .line 178
    .local v1, "buffer":[C
    new-instance v10, Ljava/io/File;

    const-string v12, "/sys/class/switch/tri-state-key/state"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v10, "themePatch":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v8

    .line 180
    .local v8, "mSmsgValid":Z
    const-string v12, "OemExService"

    const-string v13, "oemEvent CoverObservse_init "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz v8, :cond_0

    .line 182
    new-instance v5, Ljava/io/FileReader;

    const-string v12, "/sys/class/switch/tri-state-key/state"

    invoke-direct {v5, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 183
    .local v5, "file":Ljava/io/FileReader;
    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual {v5, v1, v12, v13}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 184
    .local v6, "len":I
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 185
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v1, v13, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "curState":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.oem.intent.action.THREE_KEY_MODE_BOOT"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v11, "threeKey":Landroid/content/Intent;
    const-string v12, "switch_state"

    invoke-virtual {v11, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v12, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v11, v13}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 189
    const-string v12, "OemExService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "oemEvent message switch_state  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v12, "3"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 193
    invoke-direct {p0}, Lcom/android/server/OemExService;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v7

    .line 194
    .local v7, "mConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 195
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 196
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 197
    const/4 v12, 0x0

    iput v12, v7, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 198
    invoke-direct {p0, v7}, Lcom/android/server/OemExService;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 199
    iget-object v12, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "zen_mode"

    const/4 v14, 0x3

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    .end local v3    # "curState":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .end local v7    # "mConfig":Landroid/service/notification/ZenModeConfig;
    .end local v11    # "threeKey":Landroid/content/Intent;
    :cond_0
    :goto_0
    new-instance v9, Ljava/io/File;

    const-string v12, "/sys/class/switch/switch-theme/state"

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v9, "switchPatch":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    .line 229
    if-eqz v8, :cond_1

    .line 230
    const/16 v12, 0x400

    new-array v2, v12, [C

    .line 231
    .local v2, "buffer2":[C
    new-instance v5, Ljava/io/FileReader;

    const-string v12, "/sys/class/switch/switch-theme/state"

    invoke-direct {v5, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v5    # "file":Ljava/io/FileReader;
    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual {v5, v2, v12, v13}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 233
    .restart local v6    # "len":I
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 234
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v2, v13, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 235
    .restart local v3    # "curState":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v12, "com.oem.intent.action.THREE_BACK_COVER"

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "back_cover":Landroid/content/Intent;
    const-string v12, "switch_state"

    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v12, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v0, v13}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 243
    .end local v0    # "back_cover":Landroid/content/Intent;
    .end local v1    # "buffer":[C
    .end local v2    # "buffer2":[C
    .end local v3    # "curState":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .end local v8    # "mSmsgValid":Z
    .end local v9    # "switchPatch":Ljava/io/File;
    .end local v10    # "themePatch":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 201
    .restart local v1    # "buffer":[C
    .restart local v3    # "curState":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "len":I
    .restart local v8    # "mSmsgValid":Z
    .restart local v10    # "themePatch":Ljava/io/File;
    .restart local v11    # "threeKey":Landroid/content/Intent;
    :cond_2
    const-string v12, "1"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 204
    invoke-direct {p0}, Lcom/android/server/OemExService;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v7

    .line 205
    .restart local v7    # "mConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 206
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 207
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 208
    const/4 v12, 0x1

    iput v12, v7, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 209
    invoke-direct {p0, v7}, Lcom/android/server/OemExService;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 210
    iget-object v12, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "zen_mode"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v1    # "buffer":[C
    .end local v3    # "curState":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .end local v7    # "mConfig":Landroid/service/notification/ZenModeConfig;
    .end local v8    # "mSmsgValid":Z
    .end local v10    # "themePatch":Ljava/io/File;
    .end local v11    # "threeKey":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 241
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 215
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "buffer":[C
    .restart local v3    # "curState":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "len":I
    .restart local v8    # "mSmsgValid":Z
    .restart local v10    # "themePatch":Ljava/io/File;
    .restart local v11    # "threeKey":Landroid/content/Intent;
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/OemExService;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v7

    .line 216
    .restart local v7    # "mConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 217
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 218
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 219
    const/4 v12, 0x2

    iput v12, v7, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 220
    invoke-direct {p0, v7}, Lcom/android/server/OemExService;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 221
    iget-object v12, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "zen_mode"

    const/4 v14, 0x2

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/OemExService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/OemExService;->mSystemComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/OemExService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/OemExService;->mSystemComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/OemExService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/OemExService;->CoverObservse_init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/OemExService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/OemExService;->mOemHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/OemExService;)Landroid/hardware/input/InputManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/OemExService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/OemExService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/OemExService;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/OemExService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/OemExService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/OemExService;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->getUeventMessage(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/OemExService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/OemExService;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/OemExService;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/OemExService;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 252
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

    .line 266
    :cond_0
    :goto_0
    return v1

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 261
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

    .line 265
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "OemExService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
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
    .line 620
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 621
    .local v3, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 622
    .local v4, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 623
    .local v2, "length":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 624
    const/16 v5, 0x3d

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 625
    .local v1, "equals":I
    const/16 v5, 0x20

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 626
    .local v0, "at":I
    if-gez v0, :cond_1

    .line 635
    .end local v0    # "at":I
    .end local v1    # "equals":I
    :cond_0
    return-object v3

    .line 628
    .restart local v0    # "at":I
    .restart local v1    # "equals":I
    :cond_1
    if-le v1, v4, :cond_2

    if-ge v1, v0, :cond_2

    .line 630
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :cond_2
    add-int/lit8 v4, v0, 0x1

    .line 634
    goto :goto_0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 609
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 612
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 615
    :goto_0
    return-object v2

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OemExService"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private native setLCDGammaData(I)V
.end method

.method private native setLaserCrossTalk(I)V
.end method

.method private native setLaserOffset(I)V
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 5
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 596
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 599
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 604
    :goto_0
    return v2

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "OemExService"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableInputReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "enableInputReceiver()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemExService;->mExInputEventReceiver:Lcom/android/server/OemExService$OemExInputEventReceiver;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/server/OemExService;->mExInputEventReceiver:Lcom/android/server/OemExService$OemExInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/OemExService$OemExInputEventReceiver;->dispose()V

    .line 342
    iput-object v2, p0, Lcom/android/server/OemExService;->mExInputEventReceiver:Lcom/android/server/OemExService$OemExInputEventReceiver;

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemExService;->mExInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/android/server/OemExService;->mExInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 347
    iput-object v2, p0, Lcom/android/server/OemExService;->mExInputChannel:Landroid/view/InputChannel;

    .line 349
    :cond_2
    return-void
.end method

.method public enableInputReceiver()V
    .locals 3

    .prologue
    .line 323
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "enableInputReceiver()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemExService;->mExInputEventReceiver:Lcom/android/server/OemExService$OemExInputEventReceiver;

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/server/OemExService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-string v1, "OemExInputReceiver"

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemExService;->mExInputChannel:Landroid/view/InputChannel;

    .line 330
    new-instance v0, Lcom/android/server/OemExService$OemExInputEventReceiver;

    iget-object v1, p0, Lcom/android/server/OemExService;->mExInputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/android/server/OemExService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/OemExService$OemExInputEventReceiver;-><init>(Lcom/android/server/OemExService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mExInputEventReceiver:Lcom/android/server/OemExService$OemExInputEventReceiver;

    .line 333
    :cond_1
    return-void
.end method

.method public pauseExInputEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 423
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "enableInputReceiver()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemExService;->mIsPaused:Z

    .line 428
    return-void
.end method

.method public registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z
    .locals 9
    .param p1, "callBackAdd"    # Lcom/oem/os/IOemExInputCallBack;
    .param p2, "keycode"    # I

    .prologue
    const/4 v5, 0x0

    .line 270
    const-string v6, "android.permission.BIND_OEMEX_SERVICE"

    const-string v7, "registerInputEvent()"

    invoke-direct {p0, v6, v7}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 272
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 275
    :cond_0
    iget-object v6, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    monitor-enter v6

    .line 276
    :try_start_0
    iget-object v7, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 277
    .local v4, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 278
    iget-object v7, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OemExService$OemExInputCallBack;

    .line 279
    .local v0, "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    # getter for: Lcom/android/server/OemExService$OemExInputCallBack;->mCallBack:Lcom/oem/os/IOemExInputCallBack;
    invoke-static {v0}, Lcom/android/server/OemExService$OemExInputCallBack;->access$200(Lcom/android/server/OemExService$OemExInputCallBack;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v7

    invoke-interface {v7}, Lcom/oem/os/IOemExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {p1}, Lcom/oem/os/IOemExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_1

    .line 280
    monitor-exit v6

    .line 297
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    :goto_1
    return v5

    .line 277
    .restart local v0    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    :cond_2
    new-instance v1, Lcom/android/server/OemExService$OemExInputCallBack;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/OemExService$OemExInputCallBack;-><init>(Lcom/android/server/OemExService;Lcom/oem/os/IOemExInputCallBack;I)V

    .line 285
    .local v1, "callNewBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    iget-object v7, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :try_start_1
    invoke-interface {p1}, Lcom/oem/os/IOemExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v1, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :try_start_2
    iget-object v5, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 296
    :cond_3
    monitor-exit v6

    .line 297
    const/4 v5, 0x1

    goto :goto_1

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Landroid/os/RemoteException;
    monitor-exit v6

    goto :goto_1

    .line 296
    .end local v1    # "callNewBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public resumeExInputEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 433
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "enableInputReceiver()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemExService;->mIsPaused:Z

    .line 438
    return-void
.end method

.method public setFingerprintRecognized()V
    .locals 2

    .prologue
    .line 744
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "setFingerprintRecognized()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sFingerprintRecognized:Z

    .line 749
    return-void
.end method

.method public setGammaData(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLCDGammaData(I)V

    .line 753
    return-void
.end method

.method public setHomeUpLock()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 726
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "setHomeUpLock()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_0
    sput v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sLockHomeUp:I

    .line 732
    return v2
.end method

.method public setHomeUpLockValue(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 736
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "setHomeUpLock()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sLockHomeUp:I

    .line 741
    return-void

    .line 740
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInteractive(ZJ)Z
    .locals 4
    .param p1, "interactive"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    const/4 v2, 0x1

    .line 687
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "setInteractive()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    if-nez p1, :cond_1

    .line 692
    iget-object v0, p0, Lcom/android/server/OemExService;->mOemHander:Landroid/os/Handler;

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemExService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    .line 695
    return v2
.end method

.method public setKeyMode(I)Z
    .locals 4
    .param p1, "keyMode"    # I

    .prologue
    .line 710
    const-string v2, "android.permission.BIND_OEMEX_SERVICE"

    const-string v3, "setKeyMode()"

    invoke-direct {p0, v2, v3}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 712
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 715
    :cond_0
    sput p1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->sCurrentKeyLockMode:I

    .line 717
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 718
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem.keylock.mode"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 720
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 722
    const/4 v2, 0x1

    return v2
.end method

.method public setLaserSensorCrossTalk(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLaserCrossTalk(I)V

    .line 761
    return-void
.end method

.method public setLaserSensorOffset(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLaserOffset(I)V

    .line 757
    return-void
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 700
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "setInteractive()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const/4 v0, 0x1

    return v0
.end method

.method public startUevent(Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)Z
    .locals 10
    .param p1, "patch"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oem/os/IOemUeventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 486
    const-string v7, "android.permission.BIND_OEMEX_SERVICE"

    const-string v8, "enableInputReceiver()"

    invoke-direct {p0, v7, v8}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 488
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 490
    :cond_0
    iget-object v7, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    monitor-enter v7

    .line 492
    :try_start_0
    iget-object v8, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 493
    .local v4, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 494
    iget-object v8, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OemExService$CoverObserver;

    .line 495
    .local v0, "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    iget-object v8, v0, Lcom/android/server/OemExService$CoverObserver;->mCallback:Lcom/oem/os/IOemUeventCallback;

    invoke-interface {v8}, Lcom/oem/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {p2}, Lcom/oem/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 496
    monitor-exit v7

    .line 509
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    :goto_1
    return v5

    .line 493
    .restart local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 500
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    :cond_2
    new-instance v1, Lcom/android/server/OemExService$CoverObserver;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/OemExService$CoverObserver;-><init>(Lcom/android/server/OemExService;Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)V

    .line 501
    .local v1, "callNewBackInfo":Lcom/android/server/OemExService$CoverObserver;
    iget-object v8, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :try_start_1
    invoke-interface {p2}, Lcom/oem/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v1, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 504
    invoke-virtual {v1}, Lcom/android/server/OemExService$CoverObserver;->start()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
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

    .line 505
    .restart local v1    # "callNewBackInfo":Lcom/android/server/OemExService$CoverObserver;
    .restart local v3    # "i":I
    .restart local v4    # "size":I
    :catch_0
    move-exception v2

    .line 506
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v5, v6

    goto :goto_1
.end method

.method public stopUevent(Lcom/oem/os/IOemUeventCallback;)Z
    .locals 6
    .param p1, "callback"    # Lcom/oem/os/IOemUeventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 514
    const-string v3, "android.permission.BIND_OEMEX_SERVICE"

    const-string v4, "enableInputReceiver()"

    invoke-direct {p0, v3, v4}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 516
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 518
    :cond_0
    iget-object v4, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    monitor-enter v4

    .line 519
    :try_start_0
    iget-object v3, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 520
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 521
    iget-object v3, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OemExService$CoverObserver;

    .line 522
    .local v0, "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    iget-object v3, v0, Lcom/android/server/OemExService$CoverObserver;->mCallback:Lcom/oem/os/IOemUeventCallback;

    invoke-interface {v3}, Lcom/oem/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/oem/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_2

    .line 523
    invoke-virtual {v0}, Lcom/android/server/OemExService$CoverObserver;->stop()V

    .line 524
    iget-object v3, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 525
    invoke-interface {p1}, Lcom/oem/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 529
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    :cond_1
    monitor-exit v4

    .line 530
    const/4 v3, 0x1

    return v3

    .line 520
    .restart local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/server/OemExService;->enableInputReceiver()V

    .line 131
    new-instance v1, Lcom/android/server/OemPowerUI;

    invoke-direct {v1}, Lcom/android/server/OemPowerUI;-><init>()V

    .line 132
    .local v1, "oemPowerUI":Lcom/android/server/OemPowerUI;
    iget-object v3, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/server/OemPowerUI;->start(Landroid/content/Context;)V

    .line 137
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/OemExService;->mSystemComplete:Z

    .line 139
    new-instance v2, Lcom/android/server/OemExService$CoverObserver;

    const-string v3, "/devices/virtual/switch/tri-state-key"

    iget-object v4, p0, Lcom/android/server/OemExService;->mThreeKeyReceiver:Lcom/oem/os/IOemUeventCallback$Stub;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemExService$CoverObserver;-><init>(Lcom/android/server/OemExService;Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)V

    .line 142
    .local v2, "threeObserver":Lcom/android/server/OemExService$CoverObserver;
    invoke-virtual {v2}, Lcom/android/server/OemExService$CoverObserver;->start()V

    .line 144
    new-instance v0, Lcom/android/server/OemExService$CoverObserver;

    const-string v3, "/devices/virtual/switch/switch-theme"

    iget-object v4, p0, Lcom/android/server/OemExService;->mBackCoverKeyReceiver:Lcom/oem/os/IOemUeventCallback$Stub;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/OemExService$CoverObserver;-><init>(Lcom/android/server/OemExService;Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)V

    .line 147
    .local v0, "mBackCoverObserver":Lcom/android/server/OemExService$CoverObserver;
    invoke-virtual {v0}, Lcom/android/server/OemExService$CoverObserver;->start()V

    .line 152
    iget-object v3, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem.keylock.mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    invoke-direct {p0}, Lcom/android/server/OemExService;->CoverObservse_init()V

    .line 159
    .end local v0    # "mBackCoverObserver":Lcom/android/server/OemExService$CoverObserver;
    .end local v2    # "threeObserver":Lcom/android/server/OemExService$CoverObserver;
    :cond_0
    return-void
.end method

.method public unregisterInputEvent(Lcom/oem/os/IOemExInputCallBack;)V
    .locals 6
    .param p1, "callBackRemove"    # Lcom/oem/os/IOemExInputCallBack;

    .prologue
    .line 301
    const-string v3, "android.permission.BIND_OEMEX_SERVICE"

    const-string v4, "unregisterInputEvent()"

    invoke-direct {p0, v3, v4}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 305
    :cond_0
    iget-object v4, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 306
    :try_start_0
    iget-object v3, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 307
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 308
    iget-object v3, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OemExService$OemExInputCallBack;

    .line 309
    .local v0, "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    # getter for: Lcom/android/server/OemExService$OemExInputCallBack;->mCallBack:Lcom/oem/os/IOemExInputCallBack;
    invoke-static {v0}, Lcom/android/server/OemExService$OemExInputCallBack;->access$200(Lcom/android/server/OemExService$OemExInputCallBack;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v3

    invoke-interface {v3}, Lcom/oem/os/IOemExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/oem/os/IOemExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_3

    .line 310
    iget-object v3, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 311
    invoke-interface {p1}, Lcom/oem/os/IOemExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 315
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    :cond_1
    iget-object v3, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/android/server/OemExService;->disableInputReceiver()V

    .line 319
    :cond_2
    monitor-exit v4

    .line 320
    return-void

    .line 307
    .restart local v0    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
