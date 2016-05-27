.class public Lcom/android/server/ColorStatusBarManagerService;
.super Lcom/android/server/statusbar/StatusBarManagerService;
.source "ColorStatusBarManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorStatusBarManagerService"


# instance fields
.field private mColorStatusBar:Landroid/app/IColorStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 30
    return-void
.end method

.method private registerColorStatusBar(Landroid/app/IColorStatusBar;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/IColorStatusBar;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/ColorStatusBarManagerService;->mColorStatusBar:Landroid/app/IColorStatusBar;

    .line 50
    return-void
.end method


# virtual methods
.method public hideNavigationBar()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/ColorStatusBarManagerService;->mColorStatusBar:Landroid/app/IColorStatusBar;

    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ColorStatusBarManagerService;->mColorStatusBar:Landroid/app/IColorStatusBar;

    invoke-interface {v0}, Landroid/app/IColorStatusBar;->onNavigationBarHide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 55
    sparse-switch p1, :sswitch_data_0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 57
    :sswitch_0
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/server/ColorStatusBarManagerService;->showNavigationBar()V

    goto :goto_0

    .line 63
    :sswitch_1
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/server/ColorStatusBarManagerService;->hideNavigationBar()V

    goto :goto_0

    .line 69
    :sswitch_2
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IColorStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IColorStatusBar;

    move-result-object v0

    .line 71
    .local v0, "callback":Landroid/app/IColorStatusBar;
    invoke-direct {p0, v0}, Lcom/android/server/ColorStatusBarManagerService;->registerColorStatusBar(Landroid/app/IColorStatusBar;)V

    goto :goto_0

    .line 55
    :sswitch_data_0
    .sparse-switch
        0x2712 -> :sswitch_0
        0x2713 -> :sswitch_1
        0x4e22 -> :sswitch_2
    .end sparse-switch
.end method

.method public showNavigationBar()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/ColorStatusBarManagerService;->mColorStatusBar:Landroid/app/IColorStatusBar;

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ColorStatusBarManagerService;->mColorStatusBar:Landroid/app/IColorStatusBar;

    invoke-interface {v0}, Landroid/app/IColorStatusBar;->onNavigationBarShow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method
