.class public Lcom/oppo/widget/OppoAutoCompleteTextView;
.super Lcom/oppo/widget/OppoEditText;
.source "OppoAutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoAutoCompleteTextView$1;,
        Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;,
        Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;,
        Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;,
        Lcom/oppo/widget/OppoAutoCompleteTextView$DropDownItemClickListener;,
        Lcom/oppo/widget/OppoAutoCompleteTextView$MyWatcher;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final EXPAND_MAX:I = 0x3

.field static final TAG:Ljava/lang/String; = "OppoAutoCompleteTextView"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mDropDownAnchorId:I

.field private mDropDownDismissedOnCompletion:Z

.field private mFilter:Landroid/widget/Filter;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mHintView:Landroid/widget/TextView;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastKeyCode:I

.field private mObserver:Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;

.field private mOpenBefore:Z

.field private mPassThroughClickListener:Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupCanBeUpdated:Z

.field private mThreshold:I

.field private mValidator:Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 149
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/widget/OppoAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 157
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 127
    iput-boolean v4, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 129
    iput v7, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mLastKeyCode:I

    .line 132
    iput-object v5, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mValidator:Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;

    .line 139
    iput-boolean v4, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 158
    new-instance v2, Landroid/widget/ListPopupWindow;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 159
    iget-object v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setSoftInputMode(I)V

    .line 160
    iget-object v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 162
    sget-object v2, Landroid/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mThreshold:I

    .line 167
    iget-object v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 181
    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mDropDownAnchorId:I

    .line 186
    iget-object v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 189
    iget-object v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 193
    const v2, 0xc090429

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mHintResource:I

    .line 197
    iget-object v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v3, Lcom/oppo/widget/OppoAutoCompleteTextView$DropDownItemClickListener;

    invoke-direct {v3, p0, v5}, Lcom/oppo/widget/OppoAutoCompleteTextView$DropDownItemClickListener;-><init>(Lcom/oppo/widget/OppoAutoCompleteTextView;Lcom/oppo/widget/OppoAutoCompleteTextView$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 198
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoAutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->getInputType()I

    move-result v1

    .line 203
    .local v1, "inputType":I
    and-int/lit8 v2, v1, 0xf

    if-ne v2, v4, :cond_0

    .line 204
    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    .line 205
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoAutoCompleteTextView;->setRawInputType(I)V

    .line 208
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoAutoCompleteTextView;->setFocusable(Z)V

    .line 212
    new-instance v2, Lcom/oppo/widget/OppoAutoCompleteTextView$MyWatcher;

    invoke-direct {v2, p0, v5}, Lcom/oppo/widget/OppoAutoCompleteTextView$MyWatcher;-><init>(Lcom/oppo/widget/OppoAutoCompleteTextView;Lcom/oppo/widget/OppoAutoCompleteTextView$1;)V

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 214
    new-instance v2, Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;

    invoke-direct {v2, p0, v5}, Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;-><init>(Lcom/oppo/widget/OppoAutoCompleteTextView;Lcom/oppo/widget/OppoAutoCompleteTextView$1;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPassThroughClickListener:Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;

    .line 215
    iget-object v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPassThroughClickListener:Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;

    invoke-super {p0, v2}, Lcom/oppo/widget/OppoEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-void
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoAutoCompleteTextView;Landroid/view/View;IJ)V
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoAutoCompleteTextView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoAutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoAutoCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoAutoCompleteTextView;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->onClickImpl()V

    return-void
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoAutoCompleteTextView;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoAutoCompleteTextView;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoAutoCompleteTextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoAutoCompleteTextView;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoAutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method private buildImeCompletions()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1169
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1170
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 1171
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 1172
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_3

    .line 1173
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    const/16 v11, 0x14

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1174
    .local v2, "count":I
    new-array v1, v2, [Landroid/view/inputmethod/CompletionInfo;

    .line 1175
    .local v1, "completions":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v8, 0x0

    .line 1177
    .local v8, "realCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1178
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1179
    add-int/lit8 v8, v8, 0x1

    .line 1180
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 1181
    .local v7, "item":Ljava/lang/Object;
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1182
    .local v4, "id":J
    new-instance v10, Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v10, v4, v5, v3, v11}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v10, v1, v3

    .line 1177
    .end local v4    # "id":J
    .end local v7    # "item":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1186
    :cond_1
    if-eq v8, v2, :cond_2

    .line 1187
    new-array v9, v8, [Landroid/view/inputmethod/CompletionInfo;

    .line 1188
    .local v9, "tmp":[Landroid/view/inputmethod/CompletionInfo;
    invoke-static {v1, v12, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1189
    move-object v1, v9

    .line 1192
    .end local v9    # "tmp":[Landroid/view/inputmethod/CompletionInfo;
    :cond_2
    invoke-virtual {v6, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1195
    .end local v1    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v6    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v8    # "realCount":I
    :cond_3
    return-void
.end method

.method private onClickImpl()V
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->ensureImeVisible(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .locals 9
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 923
    if-gez p2, :cond_1

    .line 924
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    .line 928
    .local v7, "selectedItem":Ljava/lang/Object;
    :goto_0
    if-nez v7, :cond_2

    .line 929
    const-string v0, "OppoAutoCompleteTextView"

    const-string v1, "performCompletion: no selected item"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    .end local v7    # "selectedItem":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "selectedItem":Ljava/lang/Object;
    goto :goto_0

    .line 933
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mBlockCompletion:Z

    .line 934
    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mBlockCompletion:Z

    .line 937
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_4

    .line 938
    iget-object v6, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 941
    .local v6, "list":Landroid/widget/ListPopupWindow;
    if-nez p1, :cond_6

    .line 942
    if-gez p2, :cond_5

    .line 943
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 944
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p2

    .line 945
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p3

    .line 953
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 957
    .end local v6    # "list":Landroid/widget/ListPopupWindow;
    .end local v7    # "selectedItem":Ljava/lang/Object;
    :cond_4
    iget-boolean v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->dismissDropDown()V

    goto :goto_1

    .line 947
    .restart local v6    # "list":Landroid/widget/ListPopupWindow;
    .restart local v7    # "selectedItem":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p1

    goto :goto_2

    .line 949
    :cond_6
    if-gez p2, :cond_3

    .line 950
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p2

    .line 951
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p3

    goto :goto_2
.end method

.method private updateDropDownForFilter(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->getWindowVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    .line 1022
    .local v0, "dropDownAlwaysVisible":Z
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->enoughToFilter()Z

    move-result v1

    .line 1023
    .local v1, "enoughToFilter":Z
    if-gtz p1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    .line 1024
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopupCanBeUpdated:Z

    if-eqz v2, :cond_0

    .line 1025
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->showDropDown()V

    goto :goto_0

    .line 1027
    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->dismissDropDown()V

    .line 1032
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopupCanBeUpdated:Z

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 864
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "selectedItem"    # Ljava/lang/Object;

    .prologue
    .line 855
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public dismissDropDown()V
    .locals 2

    .prologue
    .line 1085
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1086
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1087
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1089
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1090
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 1091
    return-void
.end method

.method doAfterTextChanged()V
    .locals 2

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mOpenBefore:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 817
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 819
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 824
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 825
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->dismissDropDown()V

    .line 827
    :cond_4
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method doBeforeTextChanged()V
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    .line 797
    :goto_0
    return-void

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mOpenBefore:Z

    goto :goto_0
.end method

.method public enoughToFilter()Z
    .locals 2

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mThreshold:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureImeVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1121
    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1123
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->showDropDown()V

    .line 1124
    return-void

    .line 1121
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getDropDownAnchor()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mDropDownAnchorId:I

    return v0
.end method

.method public getDropDownAnimationStyle()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v0

    return v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getListSelection()I
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mThreshold:I

    return v0
.end method

.method public getValidator()Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;
    .locals 1

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mValidator:Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;

    return-object v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    return v0
.end method

.method public isDropDownDismissedOnCompletion()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPerformingCompletion()Z
    .locals 1

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mBlockCompletion:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1070
    invoke-super {p0}, Lcom/oppo/widget/OppoEditText;->onAttachedToWindow()V

    .line 1071
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .param p1, "completion"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->performItemClick(I)Z

    .line 918
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1326
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoEditText;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1327
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1328
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->dismissDropDown()V

    .line 1076
    invoke-super {p0}, Lcom/oppo/widget/OppoEditText;->onDetachedFromWindow()V

    .line 1077
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 1046
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoEditText;->onDisplayHint(I)V

    .line 1047
    packed-switch p1, :pswitch_data_0

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1049
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 1047
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onFilterComplete(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 1006
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoAutoCompleteTextView;->updateDropDownForFilter(I)V

    .line 1007
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1058
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/widget/OppoEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1060
    if-nez p1, :cond_0

    .line 1061
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->performValidation()V

    .line 1063
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1064
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->dismissDropDown()V

    .line 1066
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 731
    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 756
    :cond_0
    :goto_0
    return v0

    .line 735
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 736
    packed-switch p1, :pswitch_data_0

    .line 744
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3d

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 748
    :cond_3
    iput p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mLastKeyCode:I

    .line 749
    invoke-super {p0, p1, p2}, Lcom/oppo/widget/OppoEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 750
    .local v0, "handled":Z
    const/4 v1, 0x0

    iput v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mLastKeyCode:I

    .line 752
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->clearListSelection()V

    goto :goto_0

    .line 738
    .end local v0    # "handled":Z
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 739
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->performValidation()V

    goto :goto_1

    .line 736
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 679
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v2

    if-nez v2, :cond_3

    .line 683
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 684
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 685
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 700
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v1

    .line 689
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 690
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 691
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 692
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 694
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 695
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 700
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/oppo/widget/OppoEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 705
    iget-object v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 706
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 707
    sparse-switch p1, :sswitch_data_0

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x3d

    if-ne p1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 722
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->performCompletion()V

    .line 726
    :cond_1
    :goto_0
    return v1

    .line 714
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 715
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->performCompletion()V

    goto :goto_0

    .line 726
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/oppo/widget/OppoEditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 707
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1038
    invoke-super {p0, p1}, Lcom/oppo/widget/OppoEditText;->onWindowFocusChanged(Z)V

    .line 1039
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->dismissDropDown()V

    .line 1042
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 4

    .prologue
    .line 910
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oppo/widget/OppoAutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    .line 911
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .prologue
    .line 899
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 900
    return-void
.end method

.method public performValidation()V
    .locals 2

    .prologue
    .line 1227
    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mValidator:Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;

    if-nez v1, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1233
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mValidator:Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1234
    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mValidator:Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->clearComposingText()V

    .line 998
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1000
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1001
    .local v0, "spannable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1002
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    const/4 v2, 0x0

    .line 660
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mObserver:Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;

    if-nez v0, :cond_1

    .line 661
    new-instance v0, Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {v0, p0, v2}, Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;-><init>(Lcom/oppo/widget/OppoAutoCompleteTextView;Lcom/oppo/widget/OppoAutoCompleteTextView$1;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mObserver:Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;

    .line 665
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 666
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 668
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 669
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mObserver:Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 674
    :goto_1
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 675
    return-void

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mObserver:Lcom/oppo/widget/OppoAutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 671
    :cond_2
    iput-object v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    goto :goto_1
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 246
    iput-object p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 247
    if-eqz p1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mHintResource:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    .local v0, "hintView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iput-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    .line 253
    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 261
    .end local v0    # "hintView":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 259
    iput-object v3, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 1
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    .line 491
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setDropDownAlwaysVisible(Z)V

    .line 492
    return-void
.end method

.method public setDropDownAnchor(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 348
    iput p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mDropDownAnchorId:I

    .line 349
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 350
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 453
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 376
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .locals 0
    .param p1, "dropDownDismissedOnCompletion"    # Z

    .prologue
    .line 512
    iput-boolean p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 513
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 321
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 422
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 400
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 291
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 1
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setForceIgnoreOutsideTouch(Z)V

    .line 1166
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1095
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoEditText;->setFrame(IIII)Z

    move-result v0

    .line 1097
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->showDropDown()V

    .line 1101
    :cond_0
    return v0
.end method

.method public setListSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 872
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 873
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPassThroughClickListener:Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;

    # setter for: Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;
    invoke-static {v0, p1}, Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;->access$302(Lcom/oppo/widget/OppoAutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 221
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 561
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 572
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filter"    # Z

    .prologue
    .line 978
    if-eqz p2, :cond_0

    .line 979
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    :goto_0
    return-void

    .line 981
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mBlockCompletion:Z

    .line 982
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mBlockCompletion:Z

    goto :goto_0
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 545
    if-gtz p1, :cond_0

    .line 546
    const/4 p1, 0x1

    .line 549
    :cond_0
    iput p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mThreshold:I

    .line 550
    return-void
.end method

.method public setValidator(Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;)V
    .locals 0
    .param p1, "validator"    # Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mValidator:Lcom/oppo/widget/OppoAutoCompleteTextView$Validator;

    .line 1207
    return-void
.end method

.method public showDropDown()V
    .locals 3

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->buildImeCompletions()V

    .line 1141
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1142
    iget v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1143
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1148
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1154
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1155
    return-void

    .line 1145
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showDropDownAfterLayout()V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/oppo/widget/OppoAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->postShow()V

    .line 1111
    return-void
.end method
