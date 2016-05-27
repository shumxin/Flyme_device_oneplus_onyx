.class final Lcom/android/server/wm/WindowManagerService$HandlerFloatWindow;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HandlerFloatWindow"
.end annotation


# static fields
.field public static final ADD_FLOAT_WINDOW_PACKAGE:I = 0x1

.field public static final HEARTBEAT:I = 0x2

.field public static final HEARTBEAT_TEN_MINUTES:I = 0x927c0


# instance fields
.field private final ACTION:Ljava/lang/String;

.field private mListFloatWindow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 12553
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$HandlerFloatWindow;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 12554
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$HandlerFloatWindow;->mListFloatWindow:Ljava/util/List;

    .line 12551
    const-string v0, "oppo.action.FLOAT_WINDOW_DATA_COLLECTION"

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$HandlerFloatWindow;->ACTION:Ljava/lang/String;

    .line 12555
    return-void
.end method

.method private sendAndClear()V
    .locals 4

    .prologue
    .line 12578
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$HandlerFloatWindow;->mListFloatWindow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 12579
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.action.FLOAT_WINDOW_DATA_COLLECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12580
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pkgName"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$HandlerFloatWindow;->mListFloatWindow:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 12581
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$HandlerFloatWindow;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 12582
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$HandlerFloatWindow;->mListFloatWindow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12584
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 12558
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 12575
    :cond_0
    :goto_0
    return-void

    .line 12560
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/Session;

    .line 12561
    .local v1, "session":Lcom/android/server/wm/Session;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$HandlerFloatWindow;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, v1, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 12562
    .local v0, "pkgName":Ljava/lang/String;
    const-string v2, "WindowManagerLT"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12563
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$HandlerFloatWindow;->mListFloatWindow:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12564
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$HandlerFloatWindow;->mListFloatWindow:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 12565
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$HandlerFloatWindow;->sendAndClear()V

    goto :goto_0

    .line 12570
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "session":Lcom/android/server/wm/Session;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$HandlerFloatWindow;->sendAndClear()V

    .line 12571
    const/4 v2, 0x2

    const-wide/32 v4, 0x927c0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$HandlerFloatWindow;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 12558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
