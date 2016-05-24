.class public Lcom/meizu/media/camera/AgentActivity;
.super Landroid/app/Activity;
.source "AgentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/AgentActivity$4;
    }
.end annotation


# static fields
.field public static final AGENT_TYPE_START_ACTIVITY:I = 0x0

.field public static final AGENT_TYPE_START_ACTIVITY_FOR_RESULT:I = 0x1

.field public static final EXTRA_AGENT_TYPE:Ljava/lang/String; = "com.oneplus.camera.agent.intent.extra.AGENT_TYPE"

.field public static final EXTRA_COMPONENT:Ljava/lang/String; = "com.oneplus.camera.agent.intent.extra.COMPONENT"

.field private static final REQUEST_CODE_AGENT:I = 0x2710

.field private static final STATE_AGENT:Ljava/lang/String; = "stateAgent"

.field private static final STATE_AGENT_DONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraAgentActivity"


# instance fields
.field private m_AgentType:I

.field private final m_FinishRunnable:Ljava/lang/Runnable;

.field private m_Handler:Landroid/os/Handler;

.field private m_InitialRotation:Lcom/oneplus/base/Rotation;

.field private m_IsAgentDone:Z

.field private m_IsRunning:Z

.field private m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_OrientationSensorHandle:Lcom/oneplus/base/Handle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_IsRunning:Z

    .line 58
    new-instance v0, Lcom/meizu/media/camera/AgentActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/AgentActivity$1;-><init>(Lcom/meizu/media/camera/AgentActivity;)V

    iput-object v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_FinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/AgentActivity;)Lcom/oneplus/base/Rotation;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/AgentActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_InitialRotation:Lcom/oneplus/base/Rotation;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/media/camera/AgentActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/media/camera/AgentActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/meizu/media/camera/AgentActivity;->m_IsRunning:Z

    return p1
.end method

.method private doRequestedStartActivity(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_IsAgentDone:Z

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_IsAgentDone:Z

    .line 100
    iget v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_AgentType:I

    packed-switch v0, :pswitch_data_0

    .line 118
    const-string v0, "CameraAgentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRequestedStartActivity() - Unknown agent type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/media/camera/AgentActivity;->m_AgentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/meizu/media/camera/AgentActivity;->finish()V

    goto :goto_0

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/media/camera/AgentActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/meizu/media/camera/AgentActivity$2;-><init>(Lcom/meizu/media/camera/AgentActivity;Landroid/content/Intent;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 129
    iget v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_AgentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0, p2, p3}, Lcom/meizu/media/camera/AgentActivity;->setResult(ILandroid/content/Intent;)V

    .line 131
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lcom/meizu/media/camera/AgentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 133
    iget-object v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_InitialRotation:Lcom/oneplus/base/Rotation;

    if-eqz v0, :cond_1

    .line 135
    const-string v0, "CameraAgentActivity"

    const-string v1, "onActivityResult() - Finish activity later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/media/camera/AgentActivity;->m_FinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/media/camera/AgentActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_IsRunning:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 150
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const-string v4, "CameraAgentActivity"

    const-string v5, "onCreate() - Start"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    if-eqz p1, :cond_0

    .line 164
    const-string v4, "stateAgent"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_0
    iput-boolean v2, p0, Lcom/meizu/media/camera/AgentActivity;->m_IsAgentDone:Z

    .line 167
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/meizu/media/camera/AgentActivity;->m_Handler:Landroid/os/Handler;

    .line 170
    invoke-virtual {p0}, Lcom/meizu/media/camera/AgentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 171
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 172
    .local v1, "windowAttrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 176
    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 177
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    or-int/lit16 v3, v3, 0x800

    or-int/lit8 v3, v3, 0x2

    or-int/lit16 v3, v3, 0x200

    or-int/lit16 v3, v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 184
    invoke-virtual {p0}, Lcom/meizu/media/camera/AgentActivity;->getRequestedOrientation()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 196
    :goto_1
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->isSystemOrientationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/meizu/media/camera/AgentActivity;->setRequestedOrientation(I)V

    .line 199
    :cond_1
    const-string v2, "CameraAgentActivity"

    const-string v3, "onCreate() - End"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void

    .end local v0    # "window":Landroid/view/Window;
    .end local v1    # "windowAttrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    move v2, v3

    .line 164
    goto :goto_0

    .line 187
    .restart local v0    # "window":Landroid/view/Window;
    .restart local v1    # "windowAttrs":Landroid/view/WindowManager$LayoutParams;
    :sswitch_0
    sget-object v2, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    iput-object v2, p0, Lcom/meizu/media/camera/AgentActivity;->m_InitialRotation:Lcom/oneplus/base/Rotation;

    goto :goto_1

    .line 190
    :sswitch_1
    sget-object v2, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    iput-object v2, p0, Lcom/meizu/media/camera/AgentActivity;->m_InitialRotation:Lcom/oneplus/base/Rotation;

    goto :goto_1

    .line 193
    :sswitch_2
    sget-object v2, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    iput-object v2, p0, Lcom/meizu/media/camera/AgentActivity;->m_InitialRotation:Lcom/oneplus/base/Rotation;

    goto :goto_1

    .line 184
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 208
    const-string v2, "CameraAgentActivity"

    const-string v3, "onRestoreInstanceState"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    if-eqz p1, :cond_0

    .line 210
    const-string v2, "stateAgent"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_IsAgentDone:Z

    .line 211
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 210
    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 219
    const-string v1, "CameraAgentActivity"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/media/camera/AgentActivity;->m_IsRunning:Z

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/meizu/media/camera/AgentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oneplus.camera.agent.intent.extra.COMPONENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 230
    const-string v1, "com.oneplus.camera.agent.intent.extra.AGENT_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/meizu/media/camera/AgentActivity;->m_AgentType:I

    .line 233
    invoke-direct {p0, v0}, Lcom/meizu/media/camera/AgentActivity;->doRequestedStartActivity(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 241
    const-string v0, "CameraAgentActivity"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-boolean v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_IsAgentDone:Z

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "stateAgent"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 245
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 253
    const-string v0, "CameraAgentActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v0, Lcom/meizu/media/camera/AgentActivity$3;

    invoke-direct {v0, p0}, Lcom/meizu/media/camera/AgentActivity$3;-><init>(Lcom/meizu/media/camera/AgentActivity;)V

    iget-object v1, p0, Lcom/meizu/media/camera/AgentActivity;->m_Handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/oneplus/base/OrientationManager;->setCallback(Lcom/oneplus/base/OrientationManager$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 270
    invoke-static {p0}, Lcom/oneplus/base/OrientationManager;->startOrientationSensor(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    .line 271
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 278
    const-string v0, "CameraAgentActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 280
    iget-object v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/media/camera/AgentActivity;->m_IsRunning:Z

    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 283
    return-void
.end method
