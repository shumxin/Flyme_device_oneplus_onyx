.class Landroid/view/ColorInjector$ViewRootImpl;
.super Ljava/lang/Object;
.source "ColorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ColorInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewRootImpl"
.end annotation


# static fields
.field private static final DBG_INJECT_TOUCHSCREEN:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorInjector.ViewRootImpl"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canDispatchPointerEvent(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 448
    const/4 v0, 0x1

    .line 449
    .local v0, "result":Z
    const-string v2, "color_screenshot"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/screenshot/ColorScreenshotManager;

    .line 451
    .local v1, "sm":Lcom/color/screenshot/ColorScreenshotManager;
    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {v1}, Lcom/color/screenshot/ColorScreenshotManager;->isLongshotHandleState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    const v2, 0x10001002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    .line 454
    const/4 v2, 0x0

    const-string v3, "ColorInjector.ViewRootImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInjectTouchScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_0
    return v0
.end method
