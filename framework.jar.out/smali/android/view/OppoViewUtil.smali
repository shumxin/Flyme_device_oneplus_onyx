.class public Landroid/view/OppoViewUtil;
.super Ljava/lang/Object;
.source "OppoViewUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoViewUtil"

.field private static mExVibrator:Landroid/os/OppoExVibrator;

.field private static final mToken:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Landroid/view/OppoViewUtil;->mToken:Landroid/os/Binder;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Landroid/view/OppoViewUtil;->mExVibrator:Landroid/os/OppoExVibrator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static vibrate(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 47
    .local v1, "mContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 48
    .local v4, "tempContext":Landroid/content/Context;
    if-nez v4, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "sound_effects_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    sget-object v5, Landroid/view/OppoViewUtil;->mExVibrator:Landroid/os/OppoExVibrator;

    if-nez v5, :cond_2

    .line 59
    new-instance v5, Landroid/os/OppoExVibrator;

    invoke-direct {v5}, Landroid/os/OppoExVibrator;-><init>()V

    sput-object v5, Landroid/view/OppoViewUtil;->mExVibrator:Landroid/os/OppoExVibrator;

    .line 62
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 63
    .local v3, "owningUid":I
    invoke-virtual {v4}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "owningPackage":Ljava/lang/String;
    sget-object v5, Landroid/view/OppoViewUtil;->mExVibrator:Landroid/os/OppoExVibrator;

    if-eqz v5, :cond_0

    .line 67
    :try_start_0
    sget-object v5, Landroid/view/OppoViewUtil;->mExVibrator:Landroid/os/OppoExVibrator;

    sget-object v6, Landroid/view/OppoViewUtil;->mToken:Landroid/os/Binder;

    invoke-virtual {v5, v3, v2, v6}, Landroid/os/OppoExVibrator;->vibrateNotCheck(ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "OppoViewUtil"

    const-string v6, "Failing registerInputEvent"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
