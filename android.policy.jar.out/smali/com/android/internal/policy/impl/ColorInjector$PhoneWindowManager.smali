.class Lcom/android/internal/policy/impl/ColorInjector$PhoneWindowManager;
.super Ljava/lang/Object;
.source "ColorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ColorInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneWindowManager"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorInjector.PhoneWindowManager"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static takeLongshot(Landroid/content/Context;ZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statusBarVisible"    # Z
    .param p2, "navBarVisible"    # Z

    .prologue
    .line 36
    const-string v1, "ColorInjector.PhoneWindowManager"

    const-string v2, "takeLongshot"

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "color_screenshot"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/screenshot/ColorScreenshotManager;

    .line 39
    .local v0, "sm":Lcom/color/screenshot/ColorScreenshotManager;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1, p2}, Lcom/color/screenshot/ColorScreenshotManager;->takeLongshot(ZZ)V

    .line 42
    :cond_0
    return-void
.end method
