.class public Lcom/android/server/TriStateKeyService;
.super Lcom/android/server/SystemService;
.source "TriStateKeyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TriStateKeyService$TriStatekeyDumper;,
        Lcom/android/server/TriStateKeyService$KeyObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Ljava/lang/Boolean;

.field private static final EVENT_KEY:Ljava/lang/String; = "SWITCH_STATE"

.field private static final INTENT_BROADCAST_DELAY:I = 0x7d

.field private static final SYSFS_PATH:Ljava/lang/String; = "/sys/class/switch/tri-state-key/state"

.field public static final TAG:Ljava/lang/String;

.field private static final UEVENT_PATH:Ljava/lang/String; = "/devices/virtual/switch/tri-state-key"

.field private static keyEventHandler:Landroid/os/Handler;

.field private static keyObserver:Lcom/android/server/TriStateKeyService$KeyObserver;

.field private static mContext:Landroid/content/Context;

.field private static mState:I


# instance fields
.field private keyEventRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/server/TriStateKeyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TriStateKeyService;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/TriStateKeyService;->DEBUG:Ljava/lang/Boolean;

    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/android/server/TriStateKeyService;->mState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/android/server/TriStateKeyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TriStateKeyService$1;-><init>(Lcom/android/server/TriStateKeyService;)V

    iput-object v0, p0, Lcom/android/server/TriStateKeyService;->keyEventRunnable:Ljava/lang/Runnable;

    .line 47
    sput-object p1, Lcom/android/server/TriStateKeyService;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/server/TriStateKeyService;->keyEventHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TriStateKeyService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TriStateKeyService;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/TriStateKeyService;->sendStateIntent()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/android/server/TriStateKeyService;->mState:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 30
    sput p0, Lcom/android/server/TriStateKeyService;->mState:I

    return p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/server/TriStateKeyService;->keyEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TriStateKeyService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TriStateKeyService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/TriStateKeyService;->keyEventRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private sendStateIntent()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "switch_state"

    sget v2, Lcom/android/server/TriStateKeyService;->mState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    sget-object v1, Lcom/android/server/TriStateKeyService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 58
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 59
    sget-object v0, Lcom/android/server/TriStateKeyService;->keyObserver:Lcom/android/server/TriStateKeyService$KeyObserver;

    invoke-virtual {v0}, Lcom/android/server/TriStateKeyService$KeyObserver;->startObserving()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 61
    sget-object v0, Lcom/android/server/TriStateKeyService;->keyObserver:Lcom/android/server/TriStateKeyService$KeyObserver;

    invoke-virtual {v0}, Lcom/android/server/TriStateKeyService$KeyObserver;->broadcastState()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/android/server/TriStateKeyService$KeyObserver;

    const-string v1, "/sys/class/switch/tri-state-key/state"

    const-string v2, "/devices/virtual/switch/tri-state-key"

    const-string v3, "SWITCH_STATE"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/TriStateKeyService$KeyObserver;-><init>(Lcom/android/server/TriStateKeyService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/TriStateKeyService;->keyObserver:Lcom/android/server/TriStateKeyService$KeyObserver;

    .line 55
    return-void
.end method
