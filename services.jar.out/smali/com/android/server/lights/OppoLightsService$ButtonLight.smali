.class public Lcom/android/server/lights/OppoLightsService$ButtonLight;
.super Lcom/android/server/lights/LightsService$LightImpl;
.source "OppoLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/OppoLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ButtonLight"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;
    }
.end annotation


# static fields
.field public static final BRIGHTNESS_DEFAULT:I = 0x64

.field private static final MESSAGE_TURN_LIGHT_OFF:I = 0x3e8

.field public static final MODE_ALWAYS_OFF:I = 0x2

.field public static final MODE_ALWAYS_ON:I = 0x1

.field public static final MODE_AUTO_SENSOR:I = 0x4

.field public static final MODE_AUTO_TIMEOUT:I = 0x3

.field public static final TIMEOUT_DEFAULT:J = 0x1770L


# instance fields
.field private mBrightnessMode:I

.field private mButtonLightMode:I

.field private mButtonLightTimeout:J

.field private mColor:I

.field private mHandler:Landroid/os/Handler;

.field private mHasEnabled:Z

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/lights/OppoLightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/OppoLightsService;I)V
    .locals 4
    .param p2, "nId"    # I

    .prologue
    const/4 v3, 0x0

    .line 156
    iput-object p1, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->this$0:Lcom/android/server/lights/OppoLightsService;

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;I)V

    .line 85
    new-instance v2, Lcom/android/server/lights/OppoLightsService$ButtonLight$1;

    invoke-direct {v2, p0}, Lcom/android/server/lights/OppoLightsService$ButtonLight$1;-><init>(Lcom/android/server/lights/OppoLightsService$ButtonLight;)V

    iput-object v2, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    .line 99
    iput v3, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mColor:I

    .line 100
    iput v3, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mMode:I

    .line 101
    iput v3, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mOnMS:I

    .line 102
    iput v3, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mOffMS:I

    .line 103
    iput v3, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mBrightnessMode:I

    .line 104
    iput-boolean v3, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mHasEnabled:Z

    .line 108
    new-instance v2, Lcom/android/server/lights/OppoLightsService$ButtonLight$2;

    invoke-direct {v2, p0}, Lcom/android/server/lights/OppoLightsService$ButtonLight$2;-><init>(Lcom/android/server/lights/OppoLightsService$ButtonLight;)V

    iput-object v2, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v1, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;-><init>(Lcom/android/server/lights/OppoLightsService$ButtonLight;Landroid/os/Handler;)V

    .line 160
    .local v1, "observer":Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/server/lights/OppoLightsService$ButtonLight$SettingsObserver;->observe()V

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    # getter for: Lcom/android/server/lights/OppoLightsService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/lights/OppoLightsService;->access$300(Lcom/android/server/lights/OppoLightsService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/OppoLightsService;ILcom/android/server/lights/OppoLightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/OppoLightsService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/lights/OppoLightsService$1;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/OppoLightsService$ButtonLight;-><init>(Lcom/android/server/lights/OppoLightsService;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/lights/OppoLightsService$ButtonLight;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/OppoLightsService$ButtonLight;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/lights/OppoLightsService$ButtonLight;->turnButtonLightOff()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/lights/OppoLightsService$ButtonLight;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/OppoLightsService$ButtonLight;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mOffMS:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/lights/OppoLightsService$ButtonLight;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/OppoLightsService$ButtonLight;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mBrightnessMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/lights/OppoLightsService$ButtonLight;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/OppoLightsService$ButtonLight;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/lights/OppoLightsService$ButtonLight;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/OppoLightsService$ButtonLight;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mButtonLightMode:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/lights/OppoLightsService$ButtonLight;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/OppoLightsService$ButtonLight;
    .param p1, "x1"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mButtonLightTimeout:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/server/lights/OppoLightsService$ButtonLight;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/OppoLightsService$ButtonLight;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mHasEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/lights/OppoLightsService$ButtonLight;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/OppoLightsService$ButtonLight;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mColor:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/lights/OppoLightsService$ButtonLight;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/OppoLightsService$ButtonLight;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/lights/OppoLightsService$ButtonLight;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/OppoLightsService$ButtonLight;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mOnMS:I

    return v0
.end method

.method private turnButtonLightOff()V
    .locals 6

    .prologue
    .line 169
    monitor-enter p0

    .line 170
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-super/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 171
    monitor-exit p0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public bridge synthetic pulse()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/server/lights/LightsService$LightImpl;->pulse()V

    return-void
.end method

.method public bridge synthetic pulse(II)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    return-void
.end method

.method public bridge synthetic setBrightness(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(I)V

    return-void
.end method

.method public bridge synthetic setBrightness(II)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(II)V

    return-void
.end method

.method public bridge synthetic setColor(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/server/lights/LightsService$LightImpl;->setColor(I)V

    return-void
.end method

.method public bridge synthetic setFlashing(IIII)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/lights/LightsService$LightImpl;->setFlashing(IIII)V

    return-void
.end method

.method setLightLocked(IIIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .prologue
    const/16 v2, 0x3e8

    const/4 v1, 0x0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mHasEnabled:Z

    .line 182
    iget-object v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    iget v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mButtonLightMode:I

    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-super/range {p0 .. p5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 209
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mColor:I

    .line 210
    iput p2, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mMode:I

    .line 211
    iput p3, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mOnMS:I

    .line 212
    iput p4, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mOffMS:I

    .line 213
    iput p5, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mBrightnessMode:I

    .line 214
    return-void

    .line 186
    :pswitch_1
    invoke-super/range {p0 .. p5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 191
    invoke-super/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    goto :goto_0

    .line 196
    :pswitch_3
    invoke-super/range {p0 .. p5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 197
    iget-object v0, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/lights/OppoLightsService$ButtonLight;->mButtonLightTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic turnOff()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/server/lights/LightsService$LightImpl;->turnOff()V

    return-void
.end method
