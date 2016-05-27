.class public Lcom/oppo/widget/OppoMultiAutoCompleteTextView;
.super Lcom/oppo/widget/OppoAutoCompleteTextView;
.source "OppoMultiAutoCompleteTextView.java"


# instance fields
.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 123
    .local v2, "text":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 124
    .local v0, "end":I
    if-ltz v0, :cond_0

    iget-object v4, p0, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v4, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v3

    .line 128
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, v2, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 130
    .local v1, "start":I
    sub-int v4, v0, v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->getThreshold()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 131
    const/4 v3, 0x1

    goto :goto_0
.end method

.method finishInit()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 101
    .local v0, "end":I
    iget-object v3, p0, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 103
    .local v2, "start":I
    invoke-virtual {p0, p1, v2, v0, p2}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;III)V

    .line 112
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->dismissDropDown()V

    .line 107
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 108
    .local v1, "f":Landroid/widget/Filter;
    if-eqz v1, :cond_0

    .line 109
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "keyCode"    # I

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 175
    return-void
.end method

.method public performValidation()V
    .locals 8

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->getValidator()Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;

    move-result-object v5

    .line 145
    .local v5, "v":Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;
    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v6, :cond_1

    .line 164
    :cond_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 150
    .local v0, "e":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    .line 151
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 152
    iget-object v6, p0, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v6, v0, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 153
    .local v3, "start":I
    iget-object v6, p0, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v6, v0, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 155
    .local v1, "end":I
    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 156
    .local v4, "sub":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 157
    const-string v6, ""

    invoke-interface {v0, v3, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 162
    :cond_2
    :goto_1
    move v2, v3

    .line 163
    goto :goto_0

    .line 158
    :cond_3
    invoke-interface {v5, v4}, Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 159
    iget-object v6, p0, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, v4}, Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v0, v3, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->clearComposingText()V

    .line 193
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v1

    .line 194
    .local v1, "end":I
    iget-object v4, p0, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 196
    .local v3, "start":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 197
    .local v0, "editable":Landroid/text/Editable;
    invoke-static {v0, v3, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "original":Ljava/lang/String;
    invoke-static {v0, v3, v1, v2}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 200
    iget-object v4, p0, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v0, v3, v1, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 201
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 0
    .param p1, "t"    # Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 90
    return-void
.end method
