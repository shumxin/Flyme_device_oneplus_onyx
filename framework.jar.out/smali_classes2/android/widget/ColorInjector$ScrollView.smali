.class Landroid/widget/ColorInjector$ScrollView;
.super Ljava/lang/Object;
.source "ColorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ColorInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollView"
.end annotation


# static fields
.field private static final DBG_ONOVERSCROLLED:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorInjector.ScrollView"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onOverScrolled(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOverScroll"    # Z

    .prologue
    const/4 v6, 0x0

    .line 35
    const-string v3, "ColorInjector.ScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOverScrolled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v3, "color_screenshot"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/screenshot/ColorScreenshotManager;

    .line 38
    .local v1, "sm":Lcom/color/screenshot/ColorScreenshotManager;
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Lcom/color/screenshot/ColorScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    .line 40
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 42
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    const-string v3, "onOverScrolled"

    invoke-static {v2, v3, v6}, Lcom/color/util/ColorLog;->printStackTrace([Ljava/lang/StackTraceElement;Ljava/lang/String;Z)V

    .line 43
    invoke-virtual {v1, p1}, Lcom/color/screenshot/ColorScreenshotManager;->notifyLongshotScroll(Z)V

    .line 46
    .end local v0    # "result":Z
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method
