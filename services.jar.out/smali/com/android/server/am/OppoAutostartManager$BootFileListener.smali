.class public Lcom/android/server/am/OppoAutostartManager$BootFileListener;
.super Landroid/os/FileObserver;
.source "OppoAutostartManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoAutostartManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BootFileListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoAutostartManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoAutostartManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/server/am/OppoAutostartManager$BootFileListener;->this$0:Lcom/android/server/am/OppoAutostartManager;

    .line 123
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 125
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 129
    packed-switch p1, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/OppoAutostartManager$BootFileListener;->this$0:Lcom/android/server/am/OppoAutostartManager;

    # getter for: Lcom/android/server/am/OppoAutostartManager;->file:Ljava/io/File;
    invoke-static {}, Lcom/android/server/am/OppoAutostartManager;->access$000()Ljava/io/File;

    move-result-object v1

    # invokes: Lcom/android/server/am/OppoAutostartManager;->getBootList(Ljava/io/File;)V
    invoke-static {v0, v1}, Lcom/android/server/am/OppoAutostartManager;->access$100(Lcom/android/server/am/OppoAutostartManager;Ljava/io/File;)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
