.class Lcom/android/server/am/OppoSecureProtectUtils;
.super Ljava/lang/Object;
.source "OppoSecureProtectUtils.java"


# static fields
.field private static final MONKEY_CONTROLLER:I = 0x1

.field private static final NO_CONTROLLER:I = 0x0

.field private static final SECURE_CONTROLLER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoSecureProtectUtils"

.field private static mControllerType:I


# instance fields
.field private mRequestCodeTemp:I

.field private mResultToTemp:Lcom/android/server/am/ActivityRecord;

.field private mResultWhoTemp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/OppoSecureProtectUtils;->mControllerType:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final isMonkeyController(Lcom/android/server/am/ActivityManagerService;)Z
    .locals 3
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-nez v2, :cond_0

    .line 78
    :goto_0
    return v1

    :cond_0
    sget v2, Lcom/android/server/am/OppoSecureProtectUtils;->mControllerType:I

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static final setControllerLocked(Lcom/android/server/am/ActivityManagerService;Landroid/app/IActivityController;I)V
    .locals 3
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "controller"    # Landroid/app/IActivityController;
    .param p2, "type"    # I

    .prologue
    .line 68
    const-string v0, "OppoSecureProtectUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 71
    sput p2, Lcom/android/server/am/OppoSecureProtectUtils;->mControllerType:I

    .line 72
    return-void
.end method

.method static final setMonkeyControllerLocked(Lcom/android/server/am/ActivityManagerService;Landroid/app/IActivityController;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "controller"    # Landroid/app/IActivityController;

    .prologue
    .line 61
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 62
    .local v0, "type":I
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/server/am/OppoSecureProtectUtils;->setControllerLocked(Lcom/android/server/am/ActivityManagerService;Landroid/app/IActivityController;I)V

    .line 63
    return-void

    .line 61
    .end local v0    # "type":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static final setSecureControllerLocked(Lcom/android/server/am/ActivityManagerService;Landroid/app/IActivityController;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "controller"    # Landroid/app/IActivityController;

    .prologue
    .line 55
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 56
    .local v0, "type":I
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/server/am/OppoSecureProtectUtils;->setControllerLocked(Lcom/android/server/am/ActivityManagerService;Landroid/app/IActivityController;I)V

    .line 57
    return-void

    .line 55
    .end local v0    # "type":I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method handleFinishActivityLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultToTemp:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    .line 122
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultToTemp:Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultWhoTemp:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mRequestCodeTemp:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 125
    :cond_0
    return-void
.end method

.method handleStartActivityLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;)Lcom/android/server/am/ActivityRecord;
    .locals 17
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "launchedFromUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p8, "resultTo"    # Lcom/android/server/am/ActivityRecord;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "reqCode"    # I
    .param p11, "componentSpecified"    # Z
    .param p12, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p13, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p14, "options"    # Landroid/os/Bundle;

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultToTemp:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_0

    .line 100
    new-instance v1, Lcom/android/server/am/ActivityRecord;

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultToTemp:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultWhoTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/am/OppoSecureProtectUtils;->mRequestCodeTemp:I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;)V

    .line 104
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/OppoSecureProtectUtils;->setTempValue(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 114
    :goto_0
    return-object v1

    .line 106
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultToTemp:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    .line 107
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/OppoSecureProtectUtils;->setTempValue(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 109
    :cond_1
    new-instance v1, Lcom/android/server/am/ActivityRecord;

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;)V

    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_0
.end method

.method isSecureController(Lcom/android/server/am/ActivityStackSupervisor;)Z
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    const/4 v0, 0x0

    .line 128
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-nez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    sget v1, Lcom/android/server/am/OppoSecureProtectUtils;->mControllerType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method setTempValue(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 0
    .param p1, "resultToTemp"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWhoTemp"    # Ljava/lang/String;
    .param p3, "requestCodeTemp"    # I

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultToTemp:Lcom/android/server/am/ActivityRecord;

    .line 86
    iput-object p2, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mResultWhoTemp:Ljava/lang/String;

    .line 87
    iput p3, p0, Lcom/android/server/am/OppoSecureProtectUtils;->mRequestCodeTemp:I

    .line 88
    return-void
.end method
