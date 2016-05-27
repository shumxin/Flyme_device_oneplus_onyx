.class public Lcom/android/internal/policy/impl/OppoShotScreenHelper$ShotScreenObserver;
.super Landroid/database/ContentObserver;
.source "OppoShotScreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoShotScreenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShotScreenObserver"
.end annotation


# static fields
.field private static final OPPO_SMART_APPERCEIVE_DOUBLE_VOLUME:Ljava/lang/String; = "oppo_double_finger_control_volume_enabled"

.field private static final OPPO_SMART_SCREEN_CAPTURE:Ljava/lang/String; = "oppo_smart_apperceive_screen_capture"


# instance fields
.field private mSmartDoubleVolume:I

.field private mSmartScreenCapture:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/OppoShotScreenHelper;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, -0x1

    .line 149
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$ShotScreenObserver;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    .line 150
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 145
    iput v0, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$ShotScreenObserver;->mSmartScreenCapture:I

    .line 147
    iput v0, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$ShotScreenObserver;->mSmartDoubleVolume:I

    .line 151
    # setter for: Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->access$002(Lcom/android/internal/policy/impl/OppoShotScreenHelper;Landroid/content/Context;)Landroid/content/Context;

    .line 152
    return-void
.end method

.method private updateService()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 170
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$ShotScreenObserver;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    # getter for: Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->access$000(Lcom/android/internal/policy/impl/OppoShotScreenHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "oppo_smart_apperceive_screen_capture"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 173
    .local v2, "smartScreenCapture":I
    iget v3, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$ShotScreenObserver;->mSmartScreenCapture:I

    if-ne v3, v5, :cond_0

    if-nez v2, :cond_0

    .line 175
    invoke-static {}, Landroid/view/OppoScreenShotUtil;->resumeDeliverPointerEvent()V

    .line 178
    :cond_0
    iput v2, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$ShotScreenObserver;->mSmartScreenCapture:I

    .line 180
    const-string v3, "oppo_double_finger_control_volume_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 182
    .local v1, "smartDoubleVolume":I
    iget v3, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$ShotScreenObserver;->mSmartDoubleVolume:I

    if-ne v3, v5, :cond_1

    if-nez v2, :cond_1

    .line 183
    invoke-static {}, Landroid/view/OppoScreenShotUtil;->resumeDeliverPointerEvent()V

    .line 186
    :cond_1
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoShotScreenHelper$ShotScreenObserver;->this$0:Lcom/android/internal/policy/impl/OppoShotScreenHelper;

    # getter for: Lcom/android/internal/policy/impl/OppoShotScreenHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoShotScreenHelper;->access$000(Lcom/android/internal/policy/impl/OppoShotScreenHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "oppo_smart_apperceive_screen_capture"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 159
    const-string v1, "oppo_double_finger_control_volume_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoShotScreenHelper$ShotScreenObserver;->updateService()V

    .line 163
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoShotScreenHelper$ShotScreenObserver;->updateService()V

    .line 167
    return-void
.end method
