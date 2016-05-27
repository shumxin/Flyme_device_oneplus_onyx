.class Lcom/android/server/am/OppoProcessManager$1;
.super Landroid/os/Handler;
.source "OppoProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoProcessManager;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 113
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    const-string v8, "/data/data_bpm/bpm_sts.xml"

    invoke-virtual {v5, v8}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 116
    .local v4, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 117
    iget-object v8, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    # setter for: Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z
    invoke-static {v8, v5}, Lcom/android/server/am/OppoProcessManager;->access$002(Lcom/android/server/am/OppoProcessManager;Z)Z

    .line 119
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v8, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    const-string v9, "/data/data_bpm/bpm.xml"

    invoke-virtual {v8, v9}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    # setter for: Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;
    invoke-static {v5, v8}, Lcom/android/server/am/OppoProcessManager;->access$102(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;

    .line 120
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v8, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    const-string v9, "/data/data_bpm/appwidgets.xml"

    invoke-virtual {v8, v9}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    # setter for: Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;
    invoke-static {v5, v8}, Lcom/android/server/am/OppoProcessManager;->access$202(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;

    .line 121
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v8, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z
    invoke-static {v8}, Lcom/android/server/am/OppoProcessManager;->access$000(Lcom/android/server/am/OppoProcessManager;)Z

    move-result v8

    if-nez v8, :cond_3

    :goto_2
    # invokes: Lcom/android/server/am/OppoProcessManager;->updateProcessStateForChanged(Z)V
    invoke-static {v5, v6}, Lcom/android/server/am/OppoProcessManager;->access$300(Lcom/android/server/am/OppoProcessManager;Z)V

    goto :goto_0

    :cond_2
    move v5, v7

    .line 117
    goto :goto_1

    :cond_3
    move v6, v7

    .line 121
    goto :goto_2

    .line 126
    .end local v4    # "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v6, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    const-string v8, "/data/data_bpm/bpm.xml"

    invoke-virtual {v6, v8}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    # setter for: Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/android/server/am/OppoProcessManager;->access$102(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;

    .line 127
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z
    invoke-static {v5}, Lcom/android/server/am/OppoProcessManager;->access$000(Lcom/android/server/am/OppoProcessManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    # invokes: Lcom/android/server/am/OppoProcessManager;->updateProcessStateForChanged(Z)V
    invoke-static {v5, v7}, Lcom/android/server/am/OppoProcessManager;->access$300(Lcom/android/server/am/OppoProcessManager;Z)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v6, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    const-string v7, "/data/data_bpm/brd.xml"

    invoke-virtual {v6, v7}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    # setter for: Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/android/server/am/OppoProcessManager;->access$402(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 139
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v6, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    const-string v7, "/data/data_bpm/pkg.xml"

    invoke-virtual {v6, v7}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    # setter for: Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/android/server/am/OppoProcessManager;->access$502(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 144
    :pswitch_4
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget-object v6, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    const-string v7, "/data/data_bpm/bad_apps.xml"

    invoke-virtual {v6, v7}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    # setter for: Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/android/server/am/OppoProcessManager;->access$602(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 149
    :pswitch_5
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z
    invoke-static {v5}, Lcom/android/server/am/OppoProcessManager;->access$000(Lcom/android/server/am/OppoProcessManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/am/OppoProcessManager;->access$200(Lcom/android/server/am/OppoProcessManager;)Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, "oldAppWidgetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/OppoBPMHelper;->readAppWidgetList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/android/server/am/OppoProcessManager;->access$202(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;

    .line 153
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/am/OppoProcessManager;->access$200(Lcom/android/server/am/OppoProcessManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v5, v6, :cond_5

    .line 154
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/am/OppoProcessManager;->access$200(Lcom/android/server/am/OppoProcessManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .local v2, "pkg":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 156
    move-object v3, v2

    .line 157
    const-string v5, "OppoProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add new widget == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 161
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager$1;->this$0:Lcom/android/server/am/OppoProcessManager;

    # invokes: Lcom/android/server/am/OppoProcessManager;->updateProcessStateForWidgetChanged(Ljava/lang/String;)V
    invoke-static {v5, v3}, Lcom/android/server/am/OppoProcessManager;->access$700(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    .line 162
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
