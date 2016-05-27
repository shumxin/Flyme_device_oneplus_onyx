.class Lcom/android/server/am/OppoCrashClearManager$1;
.super Ljava/lang/Object;
.source "OppoCrashClearManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OppoCrashClearManager;->dataClearAlert(Lcom/android/server/am/ProcessRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoCrashClearManager;

.field final synthetic val$tmpApp:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoCrashClearManager;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/server/am/OppoCrashClearManager$1;->this$0:Lcom/android/server/am/OppoCrashClearManager;

    iput-object p2, p0, Lcom/android/server/am/OppoCrashClearManager$1;->val$tmpApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/am/OppoCrashClearManager$1;->this$0:Lcom/android/server/am/OppoCrashClearManager;

    iget-object v1, p0, Lcom/android/server/am/OppoCrashClearManager$1;->val$tmpApp:Lcom/android/server/am/ProcessRecord;

    # invokes: Lcom/android/server/am/OppoCrashClearManager;->clearData(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v0, v1}, Lcom/android/server/am/OppoCrashClearManager;->access$200(Lcom/android/server/am/OppoCrashClearManager;Lcom/android/server/am/ProcessRecord;)V

    .line 437
    return-void
.end method
