.class public Lcom/android/server/ColorInputMethodManagerService;
.super Lcom/android/server/InputMethodManagerService;
.source "ColorInputMethodManagerService.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorInputMethodManagerService"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 41
    return-void
.end method

.method private isLongshotMode()Z
    .locals 4

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/ColorInputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v3, "color_screenshot"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/screenshot/ColorScreenshotManager;

    .line 64
    .local v1, "sm":Lcom/color/screenshot/ColorScreenshotManager;
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Lcom/color/screenshot/ColorScreenshotManager;->isLongshotMode()Z

    move-result v0

    .line 67
    :cond_0
    return v0
.end method


# virtual methods
.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/ColorInputMethodManagerService;->isLongshotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, p2, p3}, Lcom/android/server/ColorInputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v0

    goto :goto_0
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/server/ColorInputMethodManagerService;->isLongshotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v0

    goto :goto_0
.end method
