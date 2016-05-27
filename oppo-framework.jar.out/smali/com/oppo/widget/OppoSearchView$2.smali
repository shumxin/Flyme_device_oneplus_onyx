.class Lcom/oppo/widget/OppoSearchView$2;
.super Ljava/lang/Object;
.source "OppoSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoSearchView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoSearchView;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView$2;->this$0:Lcom/oppo/widget/OppoSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView$2;->this$0:Lcom/oppo/widget/OppoSearchView;

    # invokes: Lcom/oppo/widget/OppoSearchView;->updateFocusedState()V
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchView;->access$000(Lcom/oppo/widget/OppoSearchView;)V

    .line 166
    return-void
.end method
