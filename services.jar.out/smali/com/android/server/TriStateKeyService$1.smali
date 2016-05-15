.class Lcom/android/server/TriStateKeyService$1;
.super Ljava/lang/Object;
.source "TriStateKeyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TriStateKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TriStateKeyService;


# direct methods
.method constructor <init>(Lcom/android/server/TriStateKeyService;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/TriStateKeyService$1;->this$0:Lcom/android/server/TriStateKeyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/TriStateKeyService$1;->this$0:Lcom/android/server/TriStateKeyService;

    # invokes: Lcom/android/server/TriStateKeyService;->sendStateIntent()V
    invoke-static {v0}, Lcom/android/server/TriStateKeyService;->access$000(Lcom/android/server/TriStateKeyService;)V

    .line 69
    return-void
.end method
