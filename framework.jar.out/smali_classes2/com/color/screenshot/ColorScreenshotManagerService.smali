.class public Lcom/color/screenshot/ColorScreenshotManagerService;
.super Lcom/color/screenshot/IColorScreenshotManager$Stub;
.source "ColorScreenshotManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/screenshot/ColorScreenshotManagerService$1;,
        Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;
    }
.end annotation


# static fields
.field private static final COMPONENT_LONGSHOT:Landroid/content/ComponentName;

.field private static final DBG:Z = true

.field private static final DBG_MOVE:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorScreenshotManagerService"

.field private static sInstance:Lcom/color/screenshot/ColorScreenshotManagerService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.color.screenshot"

    const-string v2, "com.color.screenshot.LongshotService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/color/screenshot/ColorScreenshotManagerService;->COMPONENT_LONGSHOT:Landroid/content/ComponentName;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/color/screenshot/ColorScreenshotManagerService;->sInstance:Lcom/color/screenshot/ColorScreenshotManagerService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/color/screenshot/IColorScreenshotManager$Stub;-><init>()V

    .line 60
    iput-object v2, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mContext:Landroid/content/Context;

    .line 61
    new-instance v1, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    invoke-direct {v1, p0, v2}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;-><init>(Lcom/color/screenshot/ColorScreenshotManagerService;Lcom/color/screenshot/ColorScreenshotManagerService$1;)V

    iput-object v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mUserId:I

    .line 68
    iput-object p1, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mContext:Landroid/content/Context;

    .line 70
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iput v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mUserId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ColorScreenshotManagerService"

    const-string v2, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v1, v2, v0}, Lcom/color/util/ColorLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/color/screenshot/ColorScreenshotManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/color/screenshot/ColorScreenshotManagerService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 162
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 163
    :cond_0
    const-string v0, "ColorScreenshotManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    goto :goto_0
.end method

.method private createIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createLongshotIntent(ZZ)Landroid/content/Intent;
    .locals 2
    .param p1, "statusBarVisible"    # Z
    .param p2, "navBarVisible"    # Z

    .prologue
    .line 156
    sget-object v0, Lcom/color/screenshot/ColorScreenshotManagerService;->COMPONENT_LONGSHOT:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/color/screenshot/ColorScreenshotManagerService;->createIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "statusbar_visible"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "navigationbar_visible"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/color/screenshot/ColorScreenshotManagerService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-object v0, Lcom/color/screenshot/ColorScreenshotManagerService;->sInstance:Lcom/color/screenshot/ColorScreenshotManagerService;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/color/screenshot/ColorScreenshotManagerService;

    invoke-direct {v0, p0}, Lcom/color/screenshot/ColorScreenshotManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/color/screenshot/ColorScreenshotManagerService;->sInstance:Lcom/color/screenshot/ColorScreenshotManagerService;

    .line 83
    :cond_0
    sget-object v0, Lcom/color/screenshot/ColorScreenshotManagerService;->sInstance:Lcom/color/screenshot/ColorScreenshotManagerService;

    return-object v0
.end method


# virtual methods
.method public isLongshotHandleState()Z
    .locals 4

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    # getter for: Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;
    invoke-static {v2}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->access$100(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;)Lcom/color/screenshot/IColorLongshot;

    move-result-object v2

    invoke-interface {v2}, Lcom/color/screenshot/IColorLongshot;->isHandleState()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :goto_0
    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ColorScreenshotManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public isLongshotMode()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    # getter for: Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;
    invoke-static {v0}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->access$100(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;)Lcom/color/screenshot/IColorLongshot;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongshotMoveState()Z
    .locals 4

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    # getter for: Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;
    invoke-static {v2}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->access$100(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;)Lcom/color/screenshot/IColorLongshot;

    move-result-object v2

    invoke-interface {v2}, Lcom/color/screenshot/IColorLongshot;->isMoveState()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 127
    :goto_0
    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ColorScreenshotManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public notifyLongshotScroll(Z)V
    .locals 3
    .param p1, "isOverScroll"    # Z

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    # getter for: Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->mService:Lcom/color/screenshot/IColorLongshot;
    invoke-static {v1}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->access$100(Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;)Lcom/color/screenshot/IColorLongshot;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/color/screenshot/IColorLongshot;->notifyScroll(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ColorScreenshotManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public registerLongshotListener(Lcom/color/screenshot/IColorLongshotListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/color/screenshot/IColorLongshotListener;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    invoke-virtual {v0, p1}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->registerListener(Lcom/color/screenshot/IColorLongshotListener;)V

    .line 99
    return-void
.end method

.method public takeLongshot(ZZ)V
    .locals 5
    .param p1, "statusBarVisible"    # Z
    .param p2, "navBarVisible"    # Z

    .prologue
    const/4 v4, 0x1

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/color/screenshot/ColorScreenshotManagerService;->createLongshotIntent(ZZ)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    invoke-direct {p0, v1, v2, v4}, Lcom/color/screenshot/ColorScreenshotManagerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 93
    .local v0, "result":Z
    const-string v1, "ColorScreenshotManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start : bindService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/color/util/ColorLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public unregisterLongshotListener(Lcom/color/screenshot/IColorLongshotListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/color/screenshot/IColorLongshotListener;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/color/screenshot/ColorScreenshotManagerService;->mLongshot:Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;

    invoke-virtual {v0, p1}, Lcom/color/screenshot/ColorScreenshotManagerService$LongshotConnection;->unregisterListener(Lcom/color/screenshot/IColorLongshotListener;)V

    .line 104
    return-void
.end method
