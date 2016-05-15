.class public Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;
.super Landroid/os/Handler;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DelayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .line 1055
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1056
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1060
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 1061
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 1082
    :goto_0
    return-void

    .line 1064
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/KeyEvent;

    .line 1065
    .local v16, "event":Landroid/view/KeyEvent;
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DelayHandler MSG_DELAY_KEY swapeFromButton ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-boolean v8, v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    if-nez v6, :cond_1

    .line 1067
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 1069
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v17

    .line 1070
    .local v17, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1071
    .local v4, "now":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    const/16 v15, 0x2002

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1076
    .local v3, "upEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    .line 1078
    .local v2, "downEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1079
    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1081
    .end local v2    # "downEvent":Landroid/view/KeyEvent;
    .end local v3    # "upEvent":Landroid/view/KeyEvent;
    .end local v4    # "now":J
    .end local v17    # "im":Landroid/hardware/input/InputManager;
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$DelayHandler;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    goto :goto_0
.end method
