.class Lcom/android/internal/policy/impl/DeviceKeyHandler$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DeviceKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/DeviceKeyHandler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    .line 169
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 170
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 174
    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    # getter for: Lcom/android/internal/policy/impl/DeviceKeyHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->access$100(Lcom/android/internal/policy/impl/DeviceKeyHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 179
    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    # invokes: Lcom/android/internal/policy/impl/DeviceKeyHandler;->updateH2OemSettings()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->access$200(Lcom/android/internal/policy/impl/DeviceKeyHandler;)V

    .line 190
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 184
    const-string v1, "oem_acc_blackscreen_master_switch"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 187
    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    # invokes: Lcom/android/internal/policy/impl/DeviceKeyHandler;->updateO2OemSettings()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->access$300(Lcom/android/internal/policy/impl/DeviceKeyHandler;)V

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 194
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    # invokes: Lcom/android/internal/policy/impl/DeviceKeyHandler;->updateH2OemSettings()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->access$200(Lcom/android/internal/policy/impl/DeviceKeyHandler;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    # invokes: Lcom/android/internal/policy/impl/DeviceKeyHandler;->updateO2OemSettings()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->access$300(Lcom/android/internal/policy/impl/DeviceKeyHandler;)V

    goto :goto_0
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 204
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 205
    return-void
.end method
