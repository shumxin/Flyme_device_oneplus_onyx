.class Lcom/android/internal/policy/impl/OppoGlobalActions$10;
.super Landroid/os/Handler;
.source "OppoGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$10;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 976
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 978
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$10;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->powerView:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$000(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$10;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->removePowerView()V

    goto :goto_0

    .line 984
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$10;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/OppoGlobalActions;->refreshSilentMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1800(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    .line 985
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$10;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1900(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 976
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
