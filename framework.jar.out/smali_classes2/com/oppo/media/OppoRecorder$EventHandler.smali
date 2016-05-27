.class Lcom/oppo/media/OppoRecorder$EventHandler;
.super Landroid/os/Handler;
.source "OppoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/OppoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final MEDIA_RECORDER_EVENT_ERROR:I = 0x1

.field private static final MEDIA_RECORDER_EVENT_INFO:I = 0x2

.field private static final MEDIA_RECORDER_EVENT_LIST_END:I = 0x63

.field private static final MEDIA_RECORDER_EVENT_LIST_START:I = 0x1

.field private static final MEDIA_RECORDER_TRACK_EVENT_ERROR:I = 0x64

.field private static final MEDIA_RECORDER_TRACK_EVENT_INFO:I = 0x65

.field private static final MEDIA_RECORDER_TRACK_EVENT_LIST_END:I = 0x3e8

.field private static final MEDIA_RECORDER_TRACK_EVENT_LIST_START:I = 0x64


# instance fields
.field private mOPPORecorder:Lcom/oppo/media/OppoRecorder;

.field final synthetic this$0:Lcom/oppo/media/OppoRecorder;


# direct methods
.method public constructor <init>(Lcom/oppo/media/OppoRecorder;Lcom/oppo/media/OppoRecorder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mr"    # Lcom/oppo/media/OppoRecorder;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 856
    iput-object p1, p0, Lcom/oppo/media/OppoRecorder$EventHandler;->this$0:Lcom/oppo/media/OppoRecorder;

    .line 857
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 858
    iput-object p2, p0, Lcom/oppo/media/OppoRecorder$EventHandler;->mOPPORecorder:Lcom/oppo/media/OppoRecorder;

    .line 859
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/oppo/media/OppoRecorder$EventHandler;->mOPPORecorder:Lcom/oppo/media/OppoRecorder;

    # getter for: Lcom/oppo/media/OppoRecorder;->mNativeContext:I
    invoke-static {v0}, Lcom/oppo/media/OppoRecorder;->access$000(Lcom/oppo/media/OppoRecorder;)I

    move-result v0

    if-nez v0, :cond_1

    .line 878
    const-string v0, "OppoRecorder"

    const-string v1, "OppoRecorder went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 897
    const-string v0, "OppoRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 884
    :sswitch_0
    iget-object v0, p0, Lcom/oppo/media/OppoRecorder$EventHandler;->this$0:Lcom/oppo/media/OppoRecorder;

    # getter for: Lcom/oppo/media/OppoRecorder;->mOnErrorListener:Lcom/oppo/media/OppoRecorder$OnErrorListener;
    invoke-static {v0}, Lcom/oppo/media/OppoRecorder;->access$100(Lcom/oppo/media/OppoRecorder;)Lcom/oppo/media/OppoRecorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/oppo/media/OppoRecorder$EventHandler;->this$0:Lcom/oppo/media/OppoRecorder;

    # getter for: Lcom/oppo/media/OppoRecorder;->mOnErrorListener:Lcom/oppo/media/OppoRecorder$OnErrorListener;
    invoke-static {v0}, Lcom/oppo/media/OppoRecorder;->access$100(Lcom/oppo/media/OppoRecorder;)Lcom/oppo/media/OppoRecorder$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/media/OppoRecorder$EventHandler;->mOPPORecorder:Lcom/oppo/media/OppoRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/oppo/media/OppoRecorder$OnErrorListener;->onError(Lcom/oppo/media/OppoRecorder;II)V

    goto :goto_0

    .line 891
    :sswitch_1
    iget-object v0, p0, Lcom/oppo/media/OppoRecorder$EventHandler;->this$0:Lcom/oppo/media/OppoRecorder;

    # getter for: Lcom/oppo/media/OppoRecorder;->mOnInfoListener:Lcom/oppo/media/OppoRecorder$OnInfoListener;
    invoke-static {v0}, Lcom/oppo/media/OppoRecorder;->access$200(Lcom/oppo/media/OppoRecorder;)Lcom/oppo/media/OppoRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/oppo/media/OppoRecorder$EventHandler;->this$0:Lcom/oppo/media/OppoRecorder;

    # getter for: Lcom/oppo/media/OppoRecorder;->mOnInfoListener:Lcom/oppo/media/OppoRecorder$OnInfoListener;
    invoke-static {v0}, Lcom/oppo/media/OppoRecorder;->access$200(Lcom/oppo/media/OppoRecorder;)Lcom/oppo/media/OppoRecorder$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/media/OppoRecorder$EventHandler;->mOPPORecorder:Lcom/oppo/media/OppoRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/oppo/media/OppoRecorder$OnInfoListener;->onInfo(Lcom/oppo/media/OppoRecorder;II)V

    goto :goto_0

    .line 881
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method
