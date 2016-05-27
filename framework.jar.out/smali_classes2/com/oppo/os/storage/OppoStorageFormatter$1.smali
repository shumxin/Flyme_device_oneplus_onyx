.class Lcom/oppo/os/storage/OppoStorageFormatter$1;
.super Landroid/os/Handler;
.source "OppoStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/storage/OppoStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/os/storage/OppoStorageFormatter;


# direct methods
.method constructor <init>(Lcom/oppo/os/storage/OppoStorageFormatter;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v1, 0x5

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    # getter for: Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Require:Z
    invoke-static {v0}, Lcom/oppo/os/storage/OppoStorageFormatter;->access$000(Lcom/oppo/os/storage/OppoStorageFormatter;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    # getter for: Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_OK:Z
    invoke-static {v0}, Lcom/oppo/os/storage/OppoStorageFormatter;->access$100(Lcom/oppo/os/storage/OppoStorageFormatter;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    # getter for: Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I
    invoke-static {v0}, Lcom/oppo/os/storage/OppoStorageFormatter;->access$200(Lcom/oppo/os/storage/OppoStorageFormatter;)I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 101
    const-string v0, "OppoStorageFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOppoFormat:OPPO_FORMAT_INTERNAL_SD, try "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    # getter for: Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I
    invoke-static {v2}, Lcom/oppo/os/storage/OppoStorageFormatter;->access$200(Lcom/oppo/os/storage/OppoStorageFormatter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    # operator++ for: Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInternalSD_Tries:I
    invoke-static {v0}, Lcom/oppo/os/storage/OppoStorageFormatter;->access$208(Lcom/oppo/os/storage/OppoStorageFormatter;)I

    .line 104
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    invoke-virtual {v0}, Lcom/oppo/os/storage/OppoStorageFormatter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.support.single.partition"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "persist.sys.wipemedia"

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "OppoStorageFormatter"

    const-string v1, "only format sd part, for oppo.support.single.partition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oppo/os/storage/OppoStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    iget-object v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    # getter for: Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatInter:I
    invoke-static {v1}, Lcom/oppo/os/storage/OppoStorageFormatter;->access$300(Lcom/oppo/os/storage/OppoStorageFormatter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/storage/OppoStorageFormatter;->formatInternalSD(I)V

    goto :goto_0

    .line 112
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2, v3}, Lcom/oppo/os/storage/OppoStorageFormatter$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    # getter for: Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Require:Z
    invoke-static {v0}, Lcom/oppo/os/storage/OppoStorageFormatter;->access$400(Lcom/oppo/os/storage/OppoStorageFormatter;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    # getter for: Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_OK:Z
    invoke-static {v0}, Lcom/oppo/os/storage/OppoStorageFormatter;->access$500(Lcom/oppo/os/storage/OppoStorageFormatter;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    # getter for: Lcom/oppo/os/storage/OppoStorageFormatter;->mHasSD:Z
    invoke-static {v0}, Lcom/oppo/os/storage/OppoStorageFormatter;->access$600(Lcom/oppo/os/storage/OppoStorageFormatter;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    # getter for: Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I
    invoke-static {v0}, Lcom/oppo/os/storage/OppoStorageFormatter;->access$700(Lcom/oppo/os/storage/OppoStorageFormatter;)I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 119
    const-string v0, "OppoStorageFormatter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOppoFormat:OPPO_FORMAT_EXTERNAL_SD, try "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    # getter for: Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I
    invoke-static {v2}, Lcom/oppo/os/storage/OppoStorageFormatter;->access$700(Lcom/oppo/os/storage/OppoStorageFormatter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    # operator++ for: Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExternalSD_Tries:I
    invoke-static {v0}, Lcom/oppo/os/storage/OppoStorageFormatter;->access$708(Lcom/oppo/os/storage/OppoStorageFormatter;)I

    .line 122
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    iget-object v1, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    # getter for: Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatExter:I
    invoke-static {v1}, Lcom/oppo/os/storage/OppoStorageFormatter;->access$800(Lcom/oppo/os/storage/OppoStorageFormatter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/os/storage/OppoStorageFormatter;->formatExternalSD(I)V

    goto/16 :goto_0

    .line 124
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oppo/os/storage/OppoStorageFormatter$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    # getter for: Lcom/oppo/os/storage/OppoStorageFormatter;->mFormatData_Require:Z
    invoke-static {v0}, Lcom/oppo/os/storage/OppoStorageFormatter;->access$900(Lcom/oppo/os/storage/OppoStorageFormatter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "OppoStorageFormatter"

    const-string v1, "doOppoFormat:OPPO_FORMAT_DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/oppo/os/storage/OppoStorageFormatter$1;->this$0:Lcom/oppo/os/storage/OppoStorageFormatter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oppo/os/storage/OppoStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
