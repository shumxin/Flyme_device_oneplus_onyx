.class Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OppoLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/OppoLightsService$ButtonLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;


# direct methods
.method constructor <init>(Lcom/android/server/lights/OppoLightsService$ButtonLight;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    .line 119
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 120
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v1, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    iget-object v1, v1, Lcom/android/server/lights/OppoLightsService$ButtonLight;->this$0:Lcom/android/server/lights/OppoLightsService;

    # getter for: Lcom/android/server/lights/OppoLightsService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/lights/OppoLightsService;->access$300(Lcom/android/server/lights/OppoLightsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "button_light_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    const-string v1, "button_light_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->update()V

    .line 131
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->update()V

    .line 135
    return-void
.end method

.method public update()V
    .locals 10

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    iget-object v0, v0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->this$0:Lcom/android/server/lights/OppoLightsService;

    # getter for: Lcom/android/server/lights/OppoLightsService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/lights/OppoLightsService;->access$300(Lcom/android/server/lights/OppoLightsService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 139
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string v0, "button_light_mode"

    const/4 v1, 0x3

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 141
    .local v6, "buttonLightMode":I
    iget-object v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    # setter for: Lcom/android/server/lights/OppoLightsService$ButtonLight;->mButtonLightMode:I
    invoke-static {v0, v6}, Lcom/android/server/lights/OppoLightsService$ButtonLight;->access$402(Lcom/android/server/lights/OppoLightsService$ButtonLight;I)I

    .line 144
    const-string v0, "button_light_timeout"

    const-wide/16 v2, 0x1770

    invoke-static {v7, v0, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 146
    .local v8, "buttonLightTimeout":J
    iget-object v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    # setter for: Lcom/android/server/lights/OppoLightsService$ButtonLight;->mButtonLightTimeout:J
    invoke-static {v0, v8, v9}, Lcom/android/server/lights/OppoLightsService$ButtonLight;->access$502(Lcom/android/server/lights/OppoLightsService$ButtonLight;J)J

    .line 147
    const-string v0, "OppoLightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++++++SettingsObserver update buttonLightTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    # getter for: Lcom/android/server/lights/OppoLightsService$ButtonLight;->mHasEnabled:Z
    invoke-static {v0}, Lcom/android/server/lights/OppoLightsService$ButtonLight;->access$600(Lcom/android/server/lights/OppoLightsService$ButtonLight;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    iget-object v1, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    # getter for: Lcom/android/server/lights/OppoLightsService$ButtonLight;->mColor:I
    invoke-static {v1}, Lcom/android/server/lights/OppoLightsService$ButtonLight;->access$700(Lcom/android/server/lights/OppoLightsService$ButtonLight;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    # getter for: Lcom/android/server/lights/OppoLightsService$ButtonLight;->mMode:I
    invoke-static {v2}, Lcom/android/server/lights/OppoLightsService$ButtonLight;->access$800(Lcom/android/server/lights/OppoLightsService$ButtonLight;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    # getter for: Lcom/android/server/lights/OppoLightsService$ButtonLight;->mOnMS:I
    invoke-static {v3}, Lcom/android/server/lights/OppoLightsService$ButtonLight;->access$900(Lcom/android/server/lights/OppoLightsService$ButtonLight;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    # getter for: Lcom/android/server/lights/OppoLightsService$ButtonLight;->mOffMS:I
    invoke-static {v4}, Lcom/android/server/lights/OppoLightsService$ButtonLight;->access$1000(Lcom/android/server/lights/OppoLightsService$ButtonLight;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->this$1:Lcom/android/server/lights/OppoLightsService$ButtonLight;

    # getter for: Lcom/android/server/lights/OppoLightsService$ButtonLight;->mBrightnessMode:I
    invoke-static {v5}, Lcom/android/server/lights/OppoLightsService$ButtonLight;->access$1100(Lcom/android/server/lights/OppoLightsService$ButtonLight;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/lights/OppoLightsService$ButtonLight;->setLightLocked(IIIII)V

    .line 153
    :cond_0
    return-void
.end method
