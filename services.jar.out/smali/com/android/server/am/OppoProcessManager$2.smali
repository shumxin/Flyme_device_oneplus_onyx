.class Lcom/android/server/am/OppoProcessManager$2;
.super Ljava/lang/Object;
.source "OppoProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OppoProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoProcessManager;

.field final synthetic val$app:Lcom/android/server/am/ProcessRecord;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager$2;->this$0:Lcom/android/server/am/OppoProcessManager;

    iput-object p2, p0, Lcom/android/server/am/OppoProcessManager$2;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/OppoProcessManager$2;->val$app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager$2;->val$pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager$2;->val$app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v0, v1}, Lcom/android/server/OppoBPMHelper;->cancelNotificationsWithPkg(Ljava/lang/String;I)V

    .line 614
    return-void
.end method
