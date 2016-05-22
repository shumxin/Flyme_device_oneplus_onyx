.class Lcom/oneplus/io/StorageManagerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/io/StorageManagerImpl;->registerReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/io/StorageManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/io/StorageManagerImpl;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    # getter for: Lcom/oneplus/io/StorageManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/io/StorageManagerImpl;->access$300(Lcom/oneplus/io/StorageManagerImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    # getter for: Lcom/oneplus/io/StorageManagerImpl;->m_Context:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/io/StorageManagerImpl;->access$500(Lcom/oneplus/io/StorageManagerImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    # getter for: Lcom/oneplus/io/StorageManagerImpl;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/oneplus/io/StorageManagerImpl;->access$400(Lcom/oneplus/io/StorageManagerImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    # getter for: Lcom/oneplus/io/StorageManagerImpl;->m_Context:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/io/StorageManagerImpl;->access$500(Lcom/oneplus/io/StorageManagerImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    # getter for: Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDownReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/oneplus/io/StorageManagerImpl;->access$600(Lcom/oneplus/io/StorageManagerImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    # setter for: Lcom/oneplus/io/StorageManagerImpl;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1, v4}, Lcom/oneplus/io/StorageManagerImpl;->access$402(Lcom/oneplus/io/StorageManagerImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 94
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    # setter for: Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDownReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1, v4}, Lcom/oneplus/io/StorageManagerImpl;->access$602(Lcom/oneplus/io/StorageManagerImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 95
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    # setter for: Lcom/oneplus/io/StorageManagerImpl;->m_MediaMounted:Landroid/content/IntentFilter;
    invoke-static {v1, v4}, Lcom/oneplus/io/StorageManagerImpl;->access$702(Lcom/oneplus/io/StorageManagerImpl;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 96
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    # setter for: Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDown:Landroid/content/IntentFilter;
    invoke-static {v1, v4}, Lcom/oneplus/io/StorageManagerImpl;->access$802(Lcom/oneplus/io/StorageManagerImpl;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 98
    :cond_0
    return-void
.end method
