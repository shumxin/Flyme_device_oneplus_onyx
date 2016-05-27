.class public Landroid/view/OppoScreenShotUtil;
.super Ljava/lang/Object;
.source "OppoScreenShotUtil.java"


# static fields
.field private static DEBUG:Z = false

.field private static final PERSIST_KEY:Ljava/lang/String; = "sys.oppo.screenshot"

.field private static final TAG:Ljava/lang/String; = "OppoScreenShotUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/OppoScreenShotUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPauseDeliverPointer()Z
    .locals 2

    .prologue
    .line 54
    const-string/jumbo v0, "sys.oppo.screenshot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static dealPausedDeliverPointer(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 58
    sget-boolean v1, Landroid/view/OppoScreenShotUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoScreenShotUtil"

    const-string v2, "dealPausedDeliverPointer ------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    if-eqz p1, :cond_1

    .line 60
    move-object v0, p0

    .line 61
    .local v0, "newEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    .line 64
    .end local v0    # "newEvent":Landroid/view/MotionEvent;
    :cond_1
    return-void
.end method

.method public static pauseDeliverPointerEvent()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "sys.oppo.screenshot"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static resumeDeliverPointerEvent()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "sys.oppo.screenshot"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
