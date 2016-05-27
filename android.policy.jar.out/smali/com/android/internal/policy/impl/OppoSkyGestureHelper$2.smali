.class Lcom/android/internal/policy/impl/OppoSkyGestureHelper$2;
.super Ljava/lang/Object;
.source "OppoSkyGestureHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OppoSkyGestureHelper;->bindSkyGestureService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoSkyGestureHelper;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoSkyGestureHelper$2;->this$0:Lcom/android/internal/policy/impl/OppoSkyGestureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 131
    const-string v0, "OppoSkyGestureHelper"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 135
    const-string v0, "OppoSkyGestureHelper"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method
