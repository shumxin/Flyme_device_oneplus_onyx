.class Lcom/oppo/util/OppoListBackToTopUtils$2;
.super Ljava/lang/Object;
.source "OppoListBackToTopUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/util/OppoListBackToTopUtils;->initBackToTopWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/util/OppoListBackToTopUtils;


# direct methods
.method constructor <init>(Lcom/oppo/util/OppoListBackToTopUtils;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oppo/util/OppoListBackToTopUtils$2;->this$0:Lcom/oppo/util/OppoListBackToTopUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils$2;->this$0:Lcom/oppo/util/OppoListBackToTopUtils;

    # getter for: Lcom/oppo/util/OppoListBackToTopUtils;->mList:Landroid/widget/AbsListView;
    invoke-static {v0}, Lcom/oppo/util/OppoListBackToTopUtils;->access$100(Lcom/oppo/util/OppoListBackToTopUtils;)Landroid/widget/AbsListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 80
    iget-object v0, p0, Lcom/oppo/util/OppoListBackToTopUtils$2;->this$0:Lcom/oppo/util/OppoListBackToTopUtils;

    # getter for: Lcom/oppo/util/OppoListBackToTopUtils;->mList:Landroid/widget/AbsListView;
    invoke-static {v0}, Lcom/oppo/util/OppoListBackToTopUtils;->access$100(Lcom/oppo/util/OppoListBackToTopUtils;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->startFlingToTop()V

    .line 81
    return-void
.end method
