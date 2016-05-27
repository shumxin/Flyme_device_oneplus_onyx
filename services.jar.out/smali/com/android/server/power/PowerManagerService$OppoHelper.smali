.class Lcom/android/server/power/PowerManagerService$OppoHelper;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OppoHelper"
.end annotation


# static fields
.field private static final BUTTON_LIGHT_BRIGHTNESS:I = 0x66


# instance fields
.field mButtonLight:Lcom/android/server/lights/Light;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/lights/LightsManager;)V
    .locals 1
    .param p2, "mLightsManager"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 5021
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5022
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/lights/Light;

    .line 5023
    return-void
.end method


# virtual methods
.method getScreenBrightDefault()I
    .locals 1

    .prologue
    .line 5018
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$8700(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    return v0
.end method

.method getUserActivitySumm()I
    .locals 1

    .prologue
    .line 5010
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7400(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    return v0
.end method

.method getWakefulness()I
    .locals 1

    .prologue
    .line 5014
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7200(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    return v0
.end method

.method turnOffButtonLight()V
    .locals 1

    .prologue
    .line 5042
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 5043
    return-void
.end method

.method updateButtonBrightness(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "condition"    # Z

    .prologue
    const/16 v7, 0x66

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5026
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$OppoHelper;->getUserActivitySumm()I

    move-result v3

    .line 5027
    .local v3, "tmp":I
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    move v1, v4

    .line 5028
    .local v1, "b1":Z
    :goto_0
    if-nez v3, :cond_2

    move v2, v4

    .line 5029
    .local v2, "b2":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$OppoHelper;->getWakefulness()I

    move-result v6

    if-ne v6, v4, :cond_3

    move v0, v4

    .line 5031
    .local v0, "b":Z
    :goto_2
    if-eqz p2, :cond_4

    .line 5032
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 5033
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v4, v7}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 5039
    :cond_0
    :goto_3
    return-void

    .end local v0    # "b":Z
    .end local v1    # "b1":Z
    .end local v2    # "b2":Z
    :cond_1
    move v1, v5

    .line 5027
    goto :goto_0

    .restart local v1    # "b1":Z
    :cond_2
    move v2, v5

    .line 5028
    goto :goto_1

    .restart local v2    # "b2":Z
    :cond_3
    move v0, v5

    .line 5029
    goto :goto_2

    .line 5036
    .restart local v0    # "b":Z
    :cond_4
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v4, v7}, Lcom/android/server/lights/Light;->setBrightness(I)V

    goto :goto_3
.end method
