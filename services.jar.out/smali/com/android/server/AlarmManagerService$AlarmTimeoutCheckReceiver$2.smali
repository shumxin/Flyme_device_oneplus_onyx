.class Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$2;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V
    .locals 0

    .prologue
    .line 2867
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$2;->this$1:Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;
    .param p2, "rhs"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;

    .prologue
    .line 2870
    iget v0, p1, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;->mNumWakeup:I

    iget v1, p2, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;->mNumWakeup:I

    if-ge v0, v1, :cond_0

    .line 2871
    const/4 v0, 0x1

    .line 2875
    :goto_0
    return v0

    .line 2872
    :cond_0
    iget v0, p1, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;->mNumWakeup:I

    iget v1, p2, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;->mNumWakeup:I

    if-le v0, v1, :cond_1

    .line 2873
    const/4 v0, -0x1

    goto :goto_0

    .line 2875
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2867
    check-cast p1, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$2;->compare(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$AlarmIntentRecord;)I

    move-result v0

    return v0
.end method
