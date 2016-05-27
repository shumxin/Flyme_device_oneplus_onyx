.class Lcom/oppo/widget/OppoAutoCompleteTextView$MyWatcher;
.super Ljava/lang/Object;
.source "OppoAutoCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoAutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$MyWatcher;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoAutoCompleteTextView;Lcom/oppo/widget/OppoAutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/widget/OppoAutoCompleteTextView;
    .param p2, "x1"    # Lcom/oppo/widget/OppoAutoCompleteTextView$1;

    .prologue
    .line 774
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoAutoCompleteTextView$MyWatcher;-><init>(Lcom/oppo/widget/OppoAutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$MyWatcher;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->doAfterTextChanged()V

    .line 778
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 781
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView$MyWatcher;->this$0:Lcom/oppo/widget/OppoAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->doBeforeTextChanged()V

    .line 782
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 784
    return-void
.end method
