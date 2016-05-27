.class Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/OppoGlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnovativeV2HAction"
.end annotation


# instance fields
.field private final AIRPLANE_OPTION:I

.field private final ITEM_IDS:[I

.field private final SHUTDOWN_OPTION:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1044
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->ITEM_IDS:[I

    .line 1046
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->SHUTDOWN_OPTION:I

    .line 1047
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->AIRPLANE_OPTION:I

    .line 1055
    iput-object p3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->mHandler:Landroid/os/Handler;

    .line 1056
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->mContext:Landroid/content/Context;

    .line 1057
    return-void

    .line 1044
    :array_0
    .array-data 4
        0xc02048c
        0xc02048d
    .end array-data
.end method

.method private indexToOption(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1093
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1061
    const v2, 0xc09043e

    const/4 v3, 0x0

    invoke-virtual {p4, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->view:Landroid/view/View;

    .line 1062
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v3}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$2000(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1063
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->ITEM_IDS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1064
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->ITEM_IDS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1065
    .local v1, "itemView":Landroid/view/View;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1066
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1063
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1068
    .end local v1    # "itemView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->view:Landroid/view/View;

    return-object v2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1086
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1097
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_0

    .line 1144
    :goto_0
    return-void

    .line 1101
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1103
    .local v1, "index":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->indexToOption(I)I

    move-result v4

    if-nez v4, :cond_4

    .line 1104
    const-string v4, "OppoGlobalActions"

    const-string v6, "PRESS SHUTDOW OPTION"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    sput-boolean v3, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    .line 1109
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "enable_quickboot"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 1112
    .local v3, "quickbootEnabled":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 1113
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/OppoGlobalActions;->startQuickBoot()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$2100(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    goto :goto_0

    .end local v3    # "quickbootEnabled":Z
    :cond_1
    move v3, v5

    .line 1109
    goto :goto_1

    .line 1117
    .restart local v3    # "quickbootEnabled":Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$2200(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 1143
    .end local v3    # "quickbootEnabled":Z
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1118
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->indexToOption(I)I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1119
    const-string v4, "OppoGlobalActions"

    const-string v6, "----PRESS REBOOT OPTION "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    sput-boolean v3, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    .line 1122
    const-string v4, "ro.SHUT_DOWN_DEVICE"

    const-string v6, "1"

    invoke-static {v4, v6}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1132
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 1134
    .local v2, "pm":Landroid/os/IPowerManager;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v4, v6, v7}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1135
    .end local v2    # "pm":Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "OppoGlobalActions"

    const-string v5, "PowerManager service died!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 1074
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 1071
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1082
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1078
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 1089
    return-void
.end method
