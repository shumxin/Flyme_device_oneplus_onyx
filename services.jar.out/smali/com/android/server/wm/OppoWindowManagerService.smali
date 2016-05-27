.class public Lcom/android/server/wm/OppoWindowManagerService;
.super Lcom/android/server/wm/WindowManagerService;
.source "OppoWindowManagerService.java"

# interfaces
.implements Landroid/view/IOppoWindowManager;


# static fields
.field private static final MAX_SCREENSHOT_RETRIES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OppoWindowManagerService"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p3, "haveInputMethods"    # Z
    .param p4, "showBootMsgs"    # Z
    .param p5, "onlyCore"    # Z

    .prologue
    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V

    .line 94
    return-void
.end method

.method private convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V
    .locals 2
    .param p1, "crop"    # Landroid/graphics/Rect;
    .param p2, "rot"    # I
    .param p3, "dw"    # I
    .param p4, "dh"    # I

    .prologue
    .line 636
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 637
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 638
    .local v0, "tmp":I
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, p3, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 639
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 640
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, p3, v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 641
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 656
    .end local v0    # "tmp":I
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 643
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 644
    .restart local v0    # "tmp":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p4, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 645
    sub-int v1, p4, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 646
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 647
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, p3, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 648
    sub-int v1, p3, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 649
    .end local v0    # "tmp":I
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 650
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 651
    .restart local v0    # "tmp":I
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 652
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p4, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 653
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 654
    sub-int v1, p4, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private getActiveAudioPids()Ljava/lang/String;
    .locals 4

    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 273
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v2, "get_pid"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "pids":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 275
    :cond_0
    const/4 v1, 0x0

    .line 277
    .end local v1    # "pids":Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method checkDrawnWindowsLocked()V
    .locals 4

    .prologue
    .line 662
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_3

    .line 663
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 664
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v2, :cond_0

    .line 665
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_1

    .line 666
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 662
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 667
    :cond_1
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v2, :cond_2

    .line 668
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 669
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v2, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/OppoWindowManagerPolicy;->doesNeedWaitingKeyguard()Z

    move-result v2

    if-nez v2, :cond_0

    .line 670
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 675
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 676
    sget-boolean v2, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREEN_ON:Z

    if-eqz v2, :cond_4

    const-string v2, "OppoWindowManagerService"

    const-string v3, "oppo checkDrawnWindowsLocked All windows drawn!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 678
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 681
    :cond_5
    invoke-super {p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 682
    return-void
.end method

.method public checkIsFloatWindowForbidden(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 322
    invoke-static {p1, p2}, Landroid/view/OppoWindowManagerImplHelper;->checkIsFloatWindowForbidden(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getFocusedWindowFrame(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 356
    if-eqz p1, :cond_0

    .line 357
    const-class v2, Landroid/view/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal;

    .line 359
    .local v1, "windowManagerInternal":Landroid/view/WindowManagerInternal;
    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 360
    .local v0, "focusedWindow":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v1, v0, p1}, Landroid/view/WindowManagerInternal;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 364
    .end local v0    # "focusedWindow":Landroid/os/IBinder;
    .end local v1    # "windowManagerInternal":Landroid/view/WindowManagerInternal;
    :cond_0
    return-void
.end method

.method public isFullScreen()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 282
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_4

    .line 283
    invoke-direct {p0}, Lcom/android/server/wm/OppoWindowManagerService;->getActiveAudioPids()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "pids":Ljava/lang/String;
    if-nez v3, :cond_0

    move v7, v8

    .line 317
    .end local v3    # "pids":Ljava/lang/String;
    :goto_0
    return v7

    .line 288
    .restart local v3    # "pids":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v8

    .line 289
    goto :goto_0

    .line 292
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    .line 293
    .local v2, "list":Lcom/android/server/wm/WindowList;
    if-eqz v2, :cond_4

    .line 294
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 295
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 296
    .local v5, "screenWidth":I
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 298
    .local v4, "screenHeight":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    .line 299
    .local v6, "size":I
    if-lez v6, :cond_3

    .line 300
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 301
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_2

    .line 302
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v7, v5, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v7, v4, :cond_2

    move v7, v9

    .line 304
    goto :goto_0

    .line 300
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    .end local v1    # "i":I
    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_4

    .line 310
    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v7, v5, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/OppoWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v7, v4, :cond_4

    move v7, v9

    .line 312
    goto/16 :goto_0

    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "list":Lcom/android/server/wm/WindowList;
    .end local v3    # "pids":Ljava/lang/String;
    .end local v4    # "screenHeight":I
    .end local v5    # "screenWidth":I
    .end local v6    # "size":I
    :cond_4
    move v7, v8

    .line 317
    goto/16 :goto_0
.end method

.method public isInputShow()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRotatingLw()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "mScreenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/server/wm/OppoWindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 240
    :cond_0
    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 243
    :cond_1
    return v1
.end method

.method public isStatusBarVisible()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/OppoWindowManagerPolicy;->isStatusBarVisible()Z

    move-result v0

    return v0
.end method

.method public isWindowShownForUid(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 688
    iget-object v6, p0, Lcom/android/server/wm/OppoWindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 689
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/OppoWindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 690
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 691
    iget-object v5, p0, Lcom/android/server/wm/OppoWindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 692
    .local v4, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "winNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 693
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 694
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget v5, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v5, p1, :cond_0

    .line 695
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v5, :cond_0

    .line 699
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v5, :cond_0

    .line 700
    const/4 v5, 0x1

    monitor-exit v6

    .line 707
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v3    # "winNdx":I
    .end local v4    # "windowList":Lcom/android/server/wm/WindowList;
    :goto_2
    return v5

    .line 692
    .restart local v2    # "w":Lcom/android/server/wm/WindowState;
    .restart local v3    # "winNdx":I
    .restart local v4    # "windowList":Lcom/android/server/wm/WindowList;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 690
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    .end local v3    # "winNdx":I
    .end local v4    # "windowList":Lcom/android/server/wm/WindowList;
    :cond_2
    monitor-exit v6

    .line 707
    const/4 v5, 0x0

    goto :goto_2

    .line 706
    .end local v0    # "displayNdx":I
    .end local v1    # "numDisplays":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 101
    packed-switch p1, :pswitch_data_0

    .line 215
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 104
    :pswitch_1
    const-string v7, "android.view.IWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->showStatusBar()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 110
    :pswitch_2
    const-string v7, "android.view.IWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, "arg0":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/OppoWindowManagerService;->rm_add_StatusBarRunnable(I)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 118
    .end local v0    # "arg0":I
    :pswitch_3
    const-string v9, "android.view.IWindowManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->isStatusBarVisible()Z

    move-result v3

    .line 120
    .local v3, "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v3, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 127
    .end local v3    # "result":Z
    :pswitch_4
    const-string v9, "android.view.IWindowManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->isInputShow()Z

    move-result v3

    .line 129
    .restart local v3    # "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v3, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 134
    .end local v3    # "result":Z
    :pswitch_5
    const-string v9, "android.view.IWindowManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->isFullScreen()Z

    move-result v3

    .line 136
    .restart local v3    # "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v3, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 143
    .end local v3    # "result":Z
    :pswitch_6
    const-string v9, "android.view.IWindowManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 146
    .local v5, "type":I
    invoke-virtual {p0, v2, v5}, Lcom/android/server/wm/OppoWindowManagerService;->checkIsFloatWindowForbidden(Ljava/lang/String;I)Z

    move-result v3

    .line 147
    .restart local v3    # "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v3, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 155
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "result":Z
    .end local v5    # "type":I
    :pswitch_7
    const-string v9, "android.view.IWindowManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->isRotatingLw()Z

    move-result v3

    .line 157
    .restart local v3    # "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v3, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    .end local v3    # "result":Z
    :pswitch_8
    const-string v7, "android.view.IWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    .line 167
    sget-object v7, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MagnificationSpec;

    .line 171
    .local v4, "spec":Landroid/view/MagnificationSpec;
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/server/wm/OppoWindowManagerService;->setMagnificationSpecEx(Landroid/view/MagnificationSpec;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 169
    .end local v4    # "spec":Landroid/view/MagnificationSpec;
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "spec":Landroid/view/MagnificationSpec;
    goto :goto_1

    .line 178
    .end local v4    # "spec":Landroid/view/MagnificationSpec;
    :pswitch_9
    const-string v9, "android.view.IWindowManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    .line 181
    sget-object v9, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 185
    .local v1, "frame":Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/OppoWindowManagerService;->getFocusedWindowFrame(Landroid/graphics/Rect;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v1, :cond_7

    .line 188
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-virtual {v1, p3, v8}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 183
    .end local v1    # "frame":Landroid/graphics/Rect;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "frame":Landroid/graphics/Rect;
    goto :goto_2

    .line 191
    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 199
    .end local v1    # "frame":Landroid/graphics/Rect;
    :pswitch_a
    const-string v7, "android.view.IWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->requestDismissKeyguard()V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 207
    :pswitch_b
    const-string v9, "android.view.IWindowManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 209
    .local v6, "uid":I
    invoke-virtual {p0, v6}, Lcom/android/server/wm/OppoWindowManagerService;->isWindowShownForUid(I)Z

    move-result v3

    .line 210
    .restart local v3    # "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v3, :cond_8

    move v7, v8

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x2717
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public requestDismissKeyguard()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/OppoWindowManagerPolicy;->requestDismissKeyguard()V

    .line 225
    :cond_0
    return-void
.end method

.method public rm_add_StatusBarRunnable(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/OppoWindowManagerPolicy;->rm_add_StatusBarRunnable(I)V

    .line 254
    return-void
.end method

.method public screenshotApplications(Landroid/os/IBinder;IIIZ)Landroid/graphics/Bitmap;
    .locals 44
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force565"    # Z

    .prologue
    .line 380
    const-string v5, "android.permission.READ_FRAME_BUFFER"

    const-string v6, "screenshotApplications()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/OppoWindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 382
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 384
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/OppoWindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v25

    .line 385
    .local v25, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v25, :cond_2

    .line 386
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_1

    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Screenshot of "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, ": returning null. No Display for displayId="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_1
    const/16 v34, 0x0

    .line 628
    :goto_0
    return-object v34

    .line 390
    :cond_2
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v26

    .line 391
    .local v26, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v27, v0

    .line 392
    .local v27, "dw":I
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v24, v0

    .line 393
    .local v24, "dh":I
    if-eqz v27, :cond_3

    if-nez v24, :cond_5

    .line 394
    :cond_3
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_4

    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Screenshot of "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, ": returning null. logical widthxheight="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, "x"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_4
    const/16 v34, 0x0

    goto :goto_0

    .line 398
    :cond_5
    const/4 v11, 0x0

    .line 400
    .local v11, "bm":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 401
    .local v8, "maxLayer":I
    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    .line 402
    .local v29, "frame":Landroid/graphics/Rect;
    new-instance v39, Landroid/graphics/Rect;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Rect;-><init>()V

    .line 405
    .local v39, "stackBounds":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 409
    .local v10, "rot":I
    if-nez p1, :cond_9

    .line 410
    const/16 v38, 0x1

    .line 411
    .local v38, "screenshotReady":Z
    const/4 v7, 0x0

    .line 417
    .local v7, "minLayer":I
    :goto_1
    const/16 v35, 0x0

    .line 418
    .local v35, "retryCount":I
    const/16 v22, 0x0

    .line 420
    .local v22, "appWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v5}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_a

    const/16 v21, 0x1

    .line 425
    .local v21, "appIsImTarget":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit16 v0, v5, 0x3e8

    move/from16 v19, v0

    .local v19, "aboveAppLayer":I
    move/from16 v36, v35

    .line 429
    .end local v35    # "retryCount":I
    .local v36, "retryCount":I
    :goto_3
    add-int/lit8 v35, v36, 0x1

    .end local v36    # "retryCount":I
    .restart local v35    # "retryCount":I
    if-lez v36, :cond_6

    .line 431
    const-wide/16 v14, 0x64

    :try_start_0
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/OppoWindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v13

    .line 437
    const/16 v22, 0x0

    .line 438
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v42

    .line 441
    .local v42, "windows":Lcom/android/server/wm/WindowList;
    const/16 v32, 0x0

    .line 442
    .local v32, "mStatusBarHeight":I
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v31, v5, -0x1

    .local v31, "j":I
    :goto_5
    if-ltz v31, :cond_7

    .line 443
    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/wm/WindowState;

    .line 444
    .local v33, "mws":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "StatusBar"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 447
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowState;->getShownFrameLw()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowState;->getShownFrameLw()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    sub-int v32, v5, v6

    .line 453
    .end local v33    # "mws":Lcom/android/server/wm/WindowState;
    :cond_7
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v30, v5, -0x1

    .local v30, "i":I
    :goto_6
    if-ltz v30, :cond_13

    .line 454
    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/wm/WindowState;

    .line 455
    .local v43, "ws":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v43

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v5, :cond_c

    .line 453
    :cond_8
    :goto_7
    add-int/lit8 v30, v30, -0x1

    goto :goto_6

    .line 413
    .end local v7    # "minLayer":I
    .end local v19    # "aboveAppLayer":I
    .end local v21    # "appIsImTarget":Z
    .end local v22    # "appWin":Lcom/android/server/wm/WindowState;
    .end local v30    # "i":I
    .end local v31    # "j":I
    .end local v32    # "mStatusBarHeight":I
    .end local v35    # "retryCount":I
    .end local v38    # "screenshotReady":Z
    .end local v42    # "windows":Lcom/android/server/wm/WindowList;
    .end local v43    # "ws":Lcom/android/server/wm/WindowState;
    :cond_9
    const/16 v38, 0x0

    .line 414
    .restart local v38    # "screenshotReady":Z
    const v7, 0x7fffffff

    .restart local v7    # "minLayer":I
    goto/16 :goto_1

    .line 420
    .restart local v22    # "appWin":Lcom/android/server/wm/WindowState;
    .restart local v35    # "retryCount":I
    :cond_a
    const/16 v21, 0x0

    goto :goto_2

    .line 442
    .restart local v19    # "aboveAppLayer":I
    .restart local v21    # "appIsImTarget":Z
    .restart local v31    # "j":I
    .restart local v32    # "mStatusBarHeight":I
    .restart local v33    # "mws":Lcom/android/server/wm/WindowState;
    .restart local v42    # "windows":Lcom/android/server/wm/WindowList;
    :cond_b
    add-int/lit8 v31, v31, -0x1

    goto :goto_5

    .line 458
    .end local v33    # "mws":Lcom/android/server/wm/WindowState;
    .restart local v30    # "i":I
    .restart local v43    # "ws":Lcom/android/server/wm/WindowState;
    :cond_c
    move-object/from16 v0, v43

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v0, v19

    if-ge v5, v0, :cond_8

    .line 461
    move-object/from16 v0, v43

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v5, :cond_11

    .line 462
    if-eqz v21, :cond_8

    .line 478
    :cond_d
    :goto_8
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v41, v0

    .line 479
    .local v41, "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v41

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    if-ge v8, v5, :cond_e

    .line 480
    move-object/from16 v0, v41

    iget v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    .line 482
    :cond_e
    move-object/from16 v0, v41

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    if-le v7, v5, :cond_f

    .line 483
    move-object/from16 v0, v41

    iget v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    .line 489
    :cond_f
    move-object/from16 v0, v43

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v5, :cond_10

    .line 496
    move/from16 v23, v24

    .line 497
    .local v23, "bottom":I
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    .line 498
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v6, 0x0

    move/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v5, v0, v1, v6}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v23

    .line 502
    :goto_9
    const/4 v5, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v27

    move/from16 v3, v23

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 503
    move-object/from16 v0, v43

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    .line 504
    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 507
    .end local v23    # "bottom":I
    :cond_10
    move-object/from16 v0, v43

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_8

    move-object/from16 v0, v43

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_8

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 509
    const/16 v38, 0x1

    goto/16 :goto_7

    .line 465
    .end local v41    # "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_11
    move-object/from16 v0, v43

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v5, :cond_d

    .line 467
    if-eqz p1, :cond_d

    .line 468
    move-object/from16 v0, v43

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_8

    move-object/from16 v0, v43

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_8

    .line 473
    move-object/from16 v22, v43

    goto/16 :goto_8

    .line 500
    .restart local v23    # "bottom":I
    .restart local v41    # "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v6, 0x1

    move/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v5, v0, v1, v6}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v23

    goto :goto_9

    .line 513
    .end local v23    # "bottom":I
    .end local v41    # "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    .end local v43    # "ws":Lcom/android/server/wm/WindowState;
    :cond_13
    if-eqz p1, :cond_15

    if-nez v22, :cond_15

    .line 515
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_14

    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Screenshot: Couldn\'t find a surface matching "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_14
    const/16 v34, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 598
    .end local v30    # "i":I
    .end local v31    # "j":I
    .end local v32    # "mStatusBarHeight":I
    .end local v42    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v5

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 520
    .restart local v30    # "i":I
    .restart local v31    # "j":I
    .restart local v32    # "mStatusBarHeight":I
    .restart local v42    # "windows":Lcom/android/server/wm/WindowList;
    :cond_15
    if-nez v38, :cond_19

    .line 521
    const/4 v5, 0x3

    move/from16 v0, v35

    if-le v0, v5, :cond_17

    .line 522
    :try_start_2
    const-string v6, "OppoWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Screenshot max retries "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " of "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " appWin="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v22, :cond_16

    const-string v5, "null"

    :goto_a
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/16 v34, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 522
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " drawState="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v15, v15, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    .line 529
    :cond_17
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_18

    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Screenshot: No image ready for "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, ", "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " drawState="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v14, v14, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_18
    monitor-exit v13

    move/from16 v36, v35

    .end local v35    # "retryCount":I
    .restart local v36    # "retryCount":I
    goto/16 :goto_3

    .line 539
    .end local v36    # "retryCount":I
    .restart local v35    # "retryCount":I
    :cond_19
    if-nez v8, :cond_1b

    .line 540
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_1a

    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Screenshot of "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, ": returning null maxLayer="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_1a
    const/16 v34, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 546
    :cond_1b
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 550
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 553
    .local v4, "crop":Landroid/graphics/Rect;
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_1e

    .line 557
    mul-int v5, v24, p3

    div-int p4, v5, v27

    .line 566
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/OppoWindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v10

    .line 568
    const/4 v5, 0x1

    if-eq v10, v5, :cond_1c

    const/4 v5, 0x3

    if-ne v10, v5, :cond_1d

    .line 569
    :cond_1c
    const/4 v5, 0x1

    if-ne v10, v5, :cond_1f

    const/4 v10, 0x3

    .line 573
    :cond_1d
    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v24

    invoke-direct {v0, v4, v10, v1, v2}, Lcom/android/server/wm/OppoWindowManagerService;->convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V

    .line 574
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_20

    .line 575
    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Screenshot: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, "x"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " from "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " to "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " appToken="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/16 v30, 0x0

    :goto_d
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    move/from16 v0, v30

    if-ge v0, v5, :cond_20

    .line 578
    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/wm/WindowState;

    .line 579
    .local v40, "win":Lcom/android/server/wm/WindowState;
    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, ": "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    iget v14, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " animLayer="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v14, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " surfaceLayer="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v14, v14, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    add-int/lit8 v30, v30, 0x1

    goto :goto_d

    .line 562
    .end local v40    # "win":Lcom/android/server/wm/WindowState;
    :cond_1e
    mul-int v5, v27, p4

    div-int p3, v5, v24

    goto/16 :goto_b

    .line 569
    :cond_1f
    const/4 v10, 0x1

    goto/16 :goto_c

    .line 585
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/OppoWindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v37

    .line 587
    .local v37, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v37, :cond_22

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v9, 0x1

    .line 589
    .local v9, "inRotation":Z
    :goto_e
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_21

    if-eqz v9, :cond_21

    const-string v5, "OppoWindowManagerService"

    const-string v6, "Taking screenshot while rotating"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move/from16 v5, p3

    move/from16 v6, p4

    .line 591
    invoke-static/range {v4 .. v10}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 593
    if-nez v11, :cond_23

    .line 594
    const-string v5, "OppoWindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Screenshot failure taking screenshot for ("

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, "x"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, ") to layer "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/16 v34, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 587
    .end local v9    # "inRotation":Z
    :cond_22
    const/4 v9, 0x0

    goto :goto_e

    .line 598
    .restart local v9    # "inRotation":Z
    :cond_23
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 603
    sget-boolean v5, Lcom/android/server/wm/OppoWindowManagerService;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_25

    .line 605
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    new-array v12, v5, [I

    .line 606
    .local v12, "buffer":[I
    const/4 v13, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 607
    const/16 v20, 0x1

    .line 608
    .local v20, "allBlack":Z
    const/4 v5, 0x0

    aget v28, v12, v5

    .line 609
    .local v28, "firstColor":I
    const/16 v30, 0x0

    :goto_f
    array-length v5, v12

    move/from16 v0, v30

    if-ge v0, v5, :cond_24

    .line 610
    aget v5, v12, v30

    move/from16 v0, v28

    if-eq v5, v0, :cond_26

    .line 611
    const/16 v20, 0x0

    .line 615
    :cond_24
    if-eqz v20, :cond_25

    .line 616
    const-string v6, "OppoWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Screenshot "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " was monochrome("

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ")! mSurfaceLayer="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v22, :cond_27

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_10
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " minLayer="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " maxLayer="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .end local v12    # "buffer":[I
    .end local v20    # "allBlack":Z
    .end local v28    # "firstColor":I
    :cond_25
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v34

    .line 627
    .local v34, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 609
    .end local v34    # "ret":Landroid/graphics/Bitmap;
    .restart local v12    # "buffer":[I
    .restart local v20    # "allBlack":Z
    .restart local v28    # "firstColor":I
    :cond_26
    add-int/lit8 v30, v30, 0x1

    goto :goto_f

    .line 616
    :cond_27
    const-string v5, "null"

    goto :goto_10

    .line 432
    .end local v4    # "crop":Landroid/graphics/Rect;
    .end local v9    # "inRotation":Z
    .end local v12    # "buffer":[I
    .end local v20    # "allBlack":Z
    .end local v28    # "firstColor":I
    .end local v30    # "i":I
    .end local v31    # "j":I
    .end local v32    # "mStatusBarHeight":I
    .end local v37    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v42    # "windows":Lcom/android/server/wm/WindowList;
    :catch_0
    move-exception v5

    goto/16 :goto_4
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I
    .param p10, "transferFrom"    # Landroid/os/IBinder;
    .param p11, "createIfNeeded"    # Z

    .prologue
    .line 331
    const-string v0, "com.oppo.launcher"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-super/range {v0 .. v11}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-super/range {p0 .. p11}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    goto :goto_0
.end method

.method public setMagnificationSpecEx(Landroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 346
    if-eqz p1, :cond_0

    .line 347
    const-class v1, Landroid/view/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    .line 349
    .local v0, "windowManagerInternal":Landroid/view/WindowManagerInternal;
    invoke-virtual {v0, p1}, Landroid/view/WindowManagerInternal;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 351
    .end local v0    # "windowManagerInternal":Landroid/view/WindowManagerInternal;
    :cond_0
    return-void
.end method

.method public showStatusBar()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Landroid/view/OppoWindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/OppoWindowManagerPolicy;->showStatusBar()V

    .line 249
    return-void
.end method
