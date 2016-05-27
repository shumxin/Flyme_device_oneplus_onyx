.class Lcom/oppo/widget/OppoMultiRemoveAdapter$1;
.super Ljava/lang/Object;
.source "OppoMultiRemoveAdapter.java"

# interfaces
.implements Lcom/oppo/widget/OppoMultiRemoveAdapter$OnHandleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoMultiRemoveAdapter;->finishActionModeAndRemove(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoMultiRemoveAdapter;

.field final synthetic val$positions:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoMultiRemoveAdapter;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$1;->this$0:Lcom/oppo/widget/OppoMultiRemoveAdapter;

    iput-object p2, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$1;->val$positions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$1;->this$0:Lcom/oppo/widget/OppoMultiRemoveAdapter;

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$1;->val$positions:Ljava/util/List;

    # invokes: Lcom/oppo/widget/OppoMultiRemoveAdapter;->addRemoveAnimators(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->access$000(Lcom/oppo/widget/OppoMultiRemoveAdapter;Ljava/util/List;)V

    .line 168
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$1;->this$0:Lcom/oppo/widget/OppoMultiRemoveAdapter;

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiRemoveAdapter$1;->val$positions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoMultiRemoveAdapter;->finishActionMode(Ljava/util/List;)V

    .line 169
    return-void
.end method
