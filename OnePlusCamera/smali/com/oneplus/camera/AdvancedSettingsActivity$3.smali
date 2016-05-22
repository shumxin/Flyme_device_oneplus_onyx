.class Lcom/oneplus/camera/AdvancedSettingsActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity;->registerReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$3;->this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$3;->this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;

    # invokes: Lcom/oneplus/camera/AdvancedSettingsActivity;->isSecureMode()Z
    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->access$400(Lcom/oneplus/camera/AdvancedSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    # getter for: Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/camera/AdvancedSettingsActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Intent: "

    const-string v2, ", finish itself"

    invoke-static {v0, v1, p2, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$3;->this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->finish()V

    .line 296
    :cond_0
    return-void
.end method
