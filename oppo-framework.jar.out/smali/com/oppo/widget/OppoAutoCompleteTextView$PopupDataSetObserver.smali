.class Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "OppoAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoAutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoAutoCompleteTextView;Lcom/oppo/widget/OppoAutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/widget/OppoAutoCompleteTextView;
    .param p2, "x1"    # Lcom/oppo/widget/OppoAutoCompleteTextView$1;

    .prologue
    .line 1300
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;-><init>(Lcom/oppo/widget/OppoAutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    # getter for: Lcom/oppo/widget/OppoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->access$700(Lcom/oppo/widget/OppoAutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    new-instance v1, Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver$1;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver$1;-><init>(Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;)V

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoAutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 1321
    :cond_0
    return-void
.end method
