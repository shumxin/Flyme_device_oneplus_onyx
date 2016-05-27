.class Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmIntentRecord"
.end annotation


# instance fields
.field mIntentAction:Ljava/lang/String;

.field mNumWakeup:I

.field final synthetic this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;Ljava/lang/String;I)V
    .locals 0
    .param p2, "intentAction"    # Ljava/lang/String;
    .param p3, "numWakeup"    # I

    .prologue
    .line 2641
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2642
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;->mIntentAction:Ljava/lang/String;

    .line 2643
    iput p3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;->mNumWakeup:I

    .line 2644
    return-void
.end method
