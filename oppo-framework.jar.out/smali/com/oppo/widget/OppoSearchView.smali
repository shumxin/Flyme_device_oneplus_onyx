.class public Lcom/oppo/widget/OppoSearchView;
.super Landroid/widget/LinearLayout;
.source "OppoSearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;,
        Lcom/oppo/widget/OppoSearchView$OnSuggestionListener;,
        Lcom/oppo/widget/OppoSearchView$OnCloseListener;,
        Lcom/oppo/widget/OppoSearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final LOG_TAG:Ljava/lang/String; = "OppoSearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Lcom/oppo/widget/OppoSearchView$OnCloseListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Lcom/oppo/widget/OppoSearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Lcom/oppo/widget/OppoSearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private mSearchButton:Landroid/view/View;

.field private mSearchEditFrame:Landroid/view/View;

.field private mSearchHintIcon:Landroid/widget/ImageView;

.field private mSearchPlate:Landroid/view/View;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private mSubmitArea:Landroid/view/View;

.field private mSubmitButton:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private mVoiceButton:Landroid/view/View;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v12, 0x10000000

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 260
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    new-instance v7, Lcom/oppo/widget/OppoSearchView$1;

    invoke-direct {v7, p0}, Lcom/oppo/widget/OppoSearchView$1;-><init>(Lcom/oppo/widget/OppoSearchView;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 162
    new-instance v7, Lcom/oppo/widget/OppoSearchView$2;

    invoke-direct {v7, p0}, Lcom/oppo/widget/OppoSearchView$2;-><init>(Lcom/oppo/widget/OppoSearchView;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 169
    new-instance v7, Lcom/oppo/widget/OppoSearchView$3;

    invoke-direct {v7, p0}, Lcom/oppo/widget/OppoSearchView$3;-><init>(Lcom/oppo/widget/OppoSearchView;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 185
    new-instance v7, Ljava/util/WeakHashMap;

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 823
    new-instance v7, Lcom/oppo/widget/OppoSearchView$6;

    invoke-direct {v7, p0}, Lcom/oppo/widget/OppoSearchView$6;-><init>(Lcom/oppo/widget/OppoSearchView;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 871
    new-instance v7, Lcom/oppo/widget/OppoSearchView$7;

    invoke-direct {v7, p0}, Lcom/oppo/widget/OppoSearchView$7;-><init>(Lcom/oppo/widget/OppoSearchView;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1248
    new-instance v7, Lcom/oppo/widget/OppoSearchView$8;

    invoke-direct {v7, p0}, Lcom/oppo/widget/OppoSearchView$8;-><init>(Lcom/oppo/widget/OppoSearchView;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1260
    new-instance v7, Lcom/oppo/widget/OppoSearchView$9;

    invoke-direct {v7, p0}, Lcom/oppo/widget/OppoSearchView$9;-><init>(Lcom/oppo/widget/OppoSearchView;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1551
    new-instance v7, Lcom/oppo/widget/OppoSearchView$10;

    invoke-direct {v7, p0}, Lcom/oppo/widget/OppoSearchView$10;-><init>(Lcom/oppo/widget/OppoSearchView;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 262
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 264
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v7, 0xc09040e

    invoke-virtual {v3, v7, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 266
    const v7, 0xc02043f

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mSearchButton:Landroid/view/View;

    .line 267
    const v7, 0xc020440

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    .line 268
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v7, p0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setSearchView(Lcom/oppo/widget/OppoSearchView;)V

    .line 270
    const v7, 0xc020441

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mSearchEditFrame:Landroid/view/View;

    .line 271
    const v7, 0xc020442

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mSearchPlate:Landroid/view/View;

    .line 272
    const v7, 0xc020447

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mSubmitArea:Landroid/view/View;

    .line 273
    const v7, 0xc020443

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mSubmitButton:Landroid/view/View;

    .line 274
    const v7, 0xc020444

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 275
    const v7, 0xc020445

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceButton:Landroid/view/View;

    .line 276
    const v7, 0xc020446

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    .line 278
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mSearchButton:Landroid/view/View;

    iget-object v8, p0, Lcom/oppo/widget/OppoSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/oppo/widget/OppoSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mSubmitButton:Landroid/view/View;

    iget-object v8, p0, Lcom/oppo/widget/OppoSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceButton:Landroid/view/View;

    iget-object v8, p0, Lcom/oppo/widget/OppoSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iget-object v8, p0, Lcom/oppo/widget/OppoSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iget-object v8, p0, Lcom/oppo/widget/OppoSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v7, v8}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 285
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iget-object v8, p0, Lcom/oppo/widget/OppoSearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 286
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iget-object v8, p0, Lcom/oppo/widget/OppoSearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v8}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 287
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iget-object v8, p0, Lcom/oppo/widget/OppoSearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v8}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 289
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    new-instance v8, Lcom/oppo/widget/OppoSearchView$4;

    invoke-direct {v8, p0}, Lcom/oppo/widget/OppoSearchView$4;-><init>(Lcom/oppo/widget/OppoSearchView;)V

    invoke-virtual {v7, v8}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 298
    sget-object v7, Landroid/R$styleable;->SearchView:[I

    invoke-virtual {p1, p2, v7, v10, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 299
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoSearchView;->setIconifiedByDefault(Z)V

    .line 300
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 301
    .local v5, "maxWidth":I
    if-eq v5, v9, :cond_0

    .line 302
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoSearchView;->setMaxWidth(I)V

    .line 304
    :cond_0
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 305
    .local v6, "queryHint":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 306
    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 308
    :cond_1
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 309
    .local v2, "imeOptions":I
    if-eq v2, v9, :cond_2

    .line 310
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoSearchView;->setImeOptions(I)V

    .line 312
    :cond_2
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 313
    .local v4, "inputType":I
    if-eq v4, v9, :cond_3

    .line 314
    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoSearchView;->setInputType(I)V

    .line 317
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    const/4 v1, 0x1

    .line 321
    .local v1, "focusable":Z
    sget-object v7, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, p2, v7, v10, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 322
    const/16 v7, 0x13

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 323
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoSearchView;->setFocusable(Z)V

    .line 327
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 328
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 329
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v8, "android.speech.extra.LANGUAGE_MODEL"

    const-string v9, "web_search"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 333
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 335
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v7}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mDropDownAnchor:Landroid/view/View;

    .line 336
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 337
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v8, Lcom/oppo/widget/OppoSearchView$5;

    invoke-direct {v8, p0}, Lcom/oppo/widget/OppoSearchView$5;-><init>(Lcom/oppo/widget/OppoSearchView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 348
    :cond_4
    iget-boolean v7, p0, Lcom/oppo/widget/OppoSearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoSearchView;->updateViewsVisibility(Z)V

    .line 349
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->updateQueryHint()V

    .line 350
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoSearchView;)Landroid/widget/CursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoSearchView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->onVoiceClicked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoSearchView;)Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oppo/widget/OppoSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->forceSuggestionQuery()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oppo/widget/OppoSearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/KeyEvent;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoSearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/oppo/widget/OppoSearchView;)Landroid/app/SearchableInfo;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oppo/widget/OppoSearchView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oppo/widget/OppoSearchView;IILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoSearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/oppo/widget/OppoSearchView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;
    .param p1, "x1"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSearchView;->onItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoSearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oppo/widget/OppoSearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/oppo/widget/OppoSearchView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSearchView;->setImeVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoSearchView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mSearchButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoSearchView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mSubmitButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoSearchView;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->onSubmitQuery()V

    return-void
.end method

.method private adjustDropDownSizeAndPosition()V
    .locals 7

    .prologue
    .line 1215
    iget-object v4, p0, Lcom/oppo/widget/OppoSearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1216
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1217
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/oppo/widget/OppoSearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1218
    .local v0, "anchorPadding":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1219
    .local v1, "dropDownPadding":Landroid/graphics/Rect;
    iget-boolean v4, p0, Lcom/oppo/widget/OppoSearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_1

    const v4, 0xc050417

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0xc050418

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int v2, v4, v5

    .line 1222
    .local v2, "iconOffset":I
    :goto_0
    iget-object v4, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1223
    iget-object v4, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    neg-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1225
    iget-object v4, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iget-object v5, p0, Lcom/oppo/widget/OppoSearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1228
    .end local v0    # "anchorPadding":I
    .end local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .end local v2    # "iconOffset":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 1219
    .restart local v0    # "anchorPadding":I
    .restart local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1379
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1380
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1384
    if-eqz p2, :cond_0

    .line 1385
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1387
    :cond_0
    const-string v1, "user_query"

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1388
    if-eqz p4, :cond_1

    .line 1389
    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1391
    :cond_1
    if-eqz p3, :cond_2

    .line 1392
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1394
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1395
    const-string v1, "app_data"

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1397
    :cond_3
    if-eqz p5, :cond_4

    .line 1398
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1399
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1401
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1402
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1494
    :try_start_0
    const-string v0, "suggest_intent_action"

    invoke-static {p1, v0}, Lcom/oppo/widget/OppoSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1497
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1500
    :cond_0
    if-nez v1, :cond_1

    .line 1501
    const-string v1, "android.intent.action.SEARCH"

    .line 1505
    :cond_1
    const-string v0, "suggest_intent_data"

    invoke-static {p1, v0}, Lcom/oppo/widget/OppoSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1507
    .local v7, "data":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1508
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v7

    .line 1511
    :cond_2
    if-eqz v7, :cond_3

    .line 1512
    const-string v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Lcom/oppo/widget/OppoSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1514
    .local v10, "id":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1518
    .end local v10    # "id":Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    const/4 v2, 0x0

    .line 1520
    .local v2, "dataUri":Landroid/net/Uri;
    :goto_0
    const-string v0, "suggest_intent_query"

    invoke-static {p1, v0}, Lcom/oppo/widget/OppoSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1522
    .local v4, "query":Ljava/lang/String;
    const-string v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Lcom/oppo/widget/OppoSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "extraData":Ljava/lang/String;
    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1525
    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoSearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1535
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "dataUri":Landroid/net/Uri;
    .end local v3    # "extraData":Ljava/lang/String;
    .end local v4    # "query":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1518
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v7    # "data":Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1526
    .end local v1    # "action":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1529
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 1533
    .local v11, "rowNum":I
    :goto_2
    const-string v0, "OppoSearchView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search Suggestions cursor at row "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    const/4 v0, 0x0

    goto :goto_1

    .line 1530
    .end local v11    # "rowNum":I
    :catch_1
    move-exception v9

    .line 1531
    .local v9, "e2":Ljava/lang/RuntimeException;
    const/4 v11, -0x1

    .restart local v11    # "rowNum":I
    goto :goto_2
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 13
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1424
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 1429
    .local v8, "searchActivity":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1430
    .local v6, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1431
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1438
    .local v3, "pending":Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1443
    .local v5, "queryExtras":Landroid/os/Bundle;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1446
    .local v9, "voiceIntent":Landroid/content/Intent;
    const-string v1, "free_form"

    .line 1447
    .local v1, "languageModel":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1448
    .local v4, "prompt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1449
    .local v0, "language":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1451
    .local v2, "maxResults":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1452
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_0

    .line 1453
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1455
    :cond_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1456
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1458
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1459
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1461
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1462
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 1464
    :cond_3
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1465
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1466
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1467
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1468
    const-string v11, "calling_package"

    if-nez v8, :cond_4

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1472
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1473
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1475
    return-object v9

    .line 1468
    :cond_4
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1409
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1410
    .local v1, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1411
    .local v0, "searchActivity":Landroid/content/ComponentName;
    const-string v3, "calling_package"

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    return-object v1

    .line 1411
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private dismissSuggestions()V
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1117
    return-void
.end method

.method private forceSuggestionQuery()V
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->doBeforeTextChanged()V

    .line 1541
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->doAfterTextChanged()V

    .line 1542
    return-void
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "actionKey"    # Landroid/app/SearchableInfo$ActionKeyInfo;

    .prologue
    .line 985
    const/4 v1, 0x0

    .line 987
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 989
    invoke-static {p0, v0}, Lcom/oppo/widget/OppoSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    :cond_0
    if-nez v1, :cond_1

    .line 995
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v1

    .line 997
    :cond_1
    return-object v1
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 1008
    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchView;->mIconifiedByDefault:Z

    if-nez v3, :cond_0

    .line 1017
    .end local p1    # "hintText":Ljava/lang/CharSequence;
    :goto_0
    return-object p1

    .line 1011
    .restart local p1    # "hintText":Ljava/lang/CharSequence;
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v3, "   "

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1012
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1013
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->getSearchIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1014
    .local v0, "searchIcon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getTextSize()F

    move-result v3

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 1015
    .local v2, "textSize":I
    invoke-virtual {v0, v8, v8, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1016
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v1

    .line 1017
    goto :goto_0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050416

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getSearchIconId()I
    .locals 4

    .prologue
    .line 1001
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1002
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0xc010403

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1003
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method private hasVoiceSearch()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 736
    iget-object v3, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 737
    const/4 v1, 0x0

    .line 738
    .local v1, "testIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 739
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 743
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 744
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 746
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 749
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v1    # "testIntent":Landroid/content/Intent;
    :cond_1
    return v2

    .line 740
    .restart local v1    # "testIntent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 741
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1545
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1334
    if-nez p1, :cond_0

    .line 1344
    :goto_0
    return-void

    .line 1340
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "OppoSearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1356
    const-string v1, "android.intent.action.SEARCH"

    .local v1, "action":Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1357
    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoSearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1358
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1359
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1317
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1318
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1320
    invoke-direct {p0, v0, p2, p3}, Lcom/oppo/widget/OppoSearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1323
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoSearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1325
    const/4 v2, 0x1

    .line 1327
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onCloseClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1120
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1121
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1122
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_1

    .line 1124
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mOnCloseListener:Lcom/oppo/widget/OppoSearchView$OnCloseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mOnCloseListener:Lcom/oppo/widget/OppoSearchView$OnCloseListener;

    invoke-interface {v1}, Lcom/oppo/widget/OppoSearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1126
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->clearFocus()V

    .line 1128
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoSearchView;->updateViewsVisibility(Z)V

    .line 1137
    :cond_1
    :goto_0
    return-void

    .line 1132
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->requestFocus()Z

    .line 1134
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoSearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1231
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mOnSuggestionListener:Lcom/oppo/widget/OppoSearchView$OnSuggestionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mOnSuggestionListener:Lcom/oppo/widget/OppoSearchView$OnSuggestionListener;

    invoke-interface {v1, p1}, Lcom/oppo/widget/OppoSearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1232
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oppo/widget/OppoSearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1233
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchView;->setImeVisibility(Z)V

    .line 1234
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->dismissSuggestions()V

    .line 1235
    const/4 v0, 0x1

    .line 1237
    :cond_1
    return v0
.end method

.method private onItemSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mOnSuggestionListener:Lcom/oppo/widget/OppoSearchView$OnSuggestionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mOnSuggestionListener:Lcom/oppo/widget/OppoSearchView$OnSuggestionListener;

    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoSearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1242
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSearchView;->rewriteQueryFromSuggestion(I)V

    .line 1243
    const/4 v0, 0x1

    .line 1245
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSearchClicked()V
    .locals 1

    .prologue
    .line 1140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchView;->updateViewsVisibility(Z)V

    .line 1141
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->requestFocus()Z

    .line 1142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchView;->setImeVisibility(Z)V

    .line 1143
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1146
    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1102
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1103
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1104
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mOnQueryChangeListener:Lcom/oppo/widget/OppoSearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mOnQueryChangeListener:Lcom/oppo/widget/OppoSearchView$OnQueryTextListener;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oppo/widget/OppoSearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1106
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1107
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v1, v2}, Lcom/oppo/widget/OppoSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoSearchView;->setImeVisibility(Z)V

    .line 1110
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->dismissSuggestions()V

    .line 1113
    :cond_2
    return-void
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x15

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 915
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v7, :cond_1

    .line 972
    :cond_0
    :goto_0
    return v5

    .line 918
    :cond_1
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v7, :cond_0

    .line 921
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 924
    const/16 v7, 0x42

    if-eq p2, v7, :cond_2

    const/16 v7, 0x54

    if-eq p2, v7, :cond_2

    const/16 v7, 0x3d

    if-ne p2, v7, :cond_3

    .line 926
    :cond_2
    iget-object v6, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v6}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 927
    .local v3, "position":I
    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6}, Lcom/oppo/widget/OppoSearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 932
    .end local v3    # "position":I
    :cond_3
    if-eq p2, v8, :cond_4

    const/16 v7, 0x16

    if-ne p2, v7, :cond_6

    .line 937
    :cond_4
    if-ne p2, v8, :cond_5

    move v4, v5

    .line 939
    .local v4, "selPoint":I
    :goto_1
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setSelection(I)V

    .line 940
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v7, v5}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setListSelection(I)V

    .line 941
    iget-object v5, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->clearListSelection()V

    .line 942
    iget-object v5, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v5, v6}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    move v5, v6

    .line 944
    goto :goto_0

    .line 937
    .end local v4    # "selPoint":I
    :cond_5
    iget-object v7, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v7}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->length()I

    move-result v4

    goto :goto_1

    .line 948
    :cond_6
    const/16 v6, 0x13

    if-ne p2, v6, :cond_7

    iget-object v6, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v6}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getListSelection()I

    move-result v6

    if-eqz v6, :cond_0

    .line 955
    :cond_7
    iget-object v6, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v6, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 956
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 960
    :cond_8
    iget-object v6, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v6}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 961
    .restart local v3    # "position":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 962
    iget-object v6, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 963
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 964
    invoke-static {v2, v0}, Lcom/oppo/widget/OppoSearchView;->getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    move-result-object v1

    .line 965
    .local v1, "actionMsg":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 966
    invoke-direct {p0, v3, p2, v1}, Lcom/oppo/widget/OppoSearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1088
    iget-object v4, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1089
    .local v1, "text":Ljava/lang/CharSequence;
    iput-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1090
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1091
    .local v0, "hasText":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchView;->updateSubmitButton(Z)V

    .line 1092
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoSearchView;->updateVoiceButton(Z)V

    .line 1093
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->updateCloseButton()V

    .line 1094
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->updateSubmitArea()V

    .line 1095
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mOnQueryChangeListener:Lcom/oppo/widget/OppoSearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1096
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mOnQueryChangeListener:Lcom/oppo/widget/OppoSearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoSearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1098
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1099
    return-void

    .end local v0    # "hasText":Z
    :cond_1
    move v0, v3

    .line 1090
    goto :goto_0

    .restart local v0    # "hasText":Z
    :cond_2
    move v2, v3

    .line 1092
    goto :goto_1
.end method

.method private onVoiceClicked()V
    .locals 6

    .prologue
    .line 1150
    iget-object v4, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 1155
    .local v2, "searchable":Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1156
    iget-object v4, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Lcom/oppo/widget/OppoSearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    .line 1158
    .local v3, "webSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1164
    .end local v3    # "webSearchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1167
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "OppoSearchView"

    const-string v5, "Could not find voice search activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1159
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1160
    iget-object v4, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Lcom/oppo/widget/OppoSearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1162
    .local v0, "appSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSearchView;->post(Ljava/lang/Runnable;)Z

    .line 784
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1284
    iget-object v3, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1285
    .local v2, "oldQuery":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1286
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1304
    :goto_0
    return-void

    .line 1289
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1291
    iget-object v3, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1292
    .local v1, "newQuery":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 1295
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoSearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1298
    :cond_1
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoSearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1302
    .end local v1    # "newQuery":Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoSearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 801
    if-eqz p1, :cond_1

    .line 802
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoSearchView;->post(Ljava/lang/Runnable;)Z

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 805
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 808
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;Z)V

    .line 1352
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setSelection(I)V

    .line 1353
    return-void

    .line 1352
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 775
    iget-object v3, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 778
    .local v0, "hasText":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchView;->mExpandedInActionView:Z

    if-nez v3, :cond_2

    .line 779
    .local v1, "showClose":Z
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/oppo/widget/OppoSearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 780
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "showClose":Z
    :cond_1
    move v0, v2

    .line 775
    goto :goto_0

    .restart local v0    # "hasText":Z
    :cond_2
    move v1, v2

    .line 778
    goto :goto_1

    .line 779
    .restart local v1    # "showClose":Z
    :cond_3
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private updateFocusedState()V
    .locals 3

    .prologue
    .line 787
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 788
    .local v0, "focused":Z
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_0

    sget-object v1, Lcom/oppo/widget/OppoSearchView;->FOCUSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 789
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_1

    sget-object v1, Lcom/oppo/widget/OppoSearchView;->FOCUSED_STATE_SET:[I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 790
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->invalidate()V

    .line 791
    return-void

    .line 788
    :cond_0
    sget-object v1, Lcom/oppo/widget/OppoSearchView;->EMPTY_STATE_SET:[I

    goto :goto_0

    .line 789
    :cond_1
    sget-object v1, Lcom/oppo/widget/OppoSearchView;->EMPTY_STATE_SET:[I

    goto :goto_1
.end method

.method private updateQueryHint()V
    .locals 4

    .prologue
    .line 1021
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1022
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iget-object v3, p0, Lcom/oppo/widget/OppoSearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoSearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_3

    .line 1024
    const/4 v0, 0x0

    .line 1025
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 1026
    .local v1, "hintId":I
    if-eqz v1, :cond_2

    .line 1027
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1029
    :cond_2
    if-eqz v0, :cond_0

    .line 1030
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1033
    .end local v0    # "hint":Ljava/lang/CharSequence;
    .end local v1    # "hintId":I
    :cond_3
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoSearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSearchAutoComplete()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1041
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setDropDownAnimationStyle(I)V

    .line 1042
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iget-object v3, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1043
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iget-object v3, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1044
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1047
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_0

    .line 1050
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1051
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1052
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1055
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setInputType(I)V

    .line 1056
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_1

    .line 1057
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1061
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1062
    new-instance v1, Lcom/oppo/widget/OppoSuggestionsAdapter;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Lcom/oppo/widget/OppoSearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Lcom/oppo/widget/OppoSuggestionsAdapter;-><init>(Landroid/content/Context;Lcom/oppo/widget/OppoSearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 1064
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iget-object v3, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1065
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v1, Lcom/oppo/widget/OppoSuggestionsAdapter;

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoSuggestionsAdapter;->setQueryRefinement(I)V

    .line 1069
    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .prologue
    .line 766
    const/16 v0, 0x8

    .line 767
    .local v0, "visibility":I
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 769
    :cond_0
    const/4 v0, 0x0

    .line 771
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 772
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    .prologue
    .line 757
    const/16 v0, 0x8

    .line 758
    .local v0, "visibility":I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_1

    .line 760
    :cond_0
    const/4 v0, 0x0

    .line 762
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 763
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 7
    .param p1, "collapsed"    # Z

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 720
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSearchView;->mIconified:Z

    .line 722
    if-eqz p1, :cond_0

    move v1, v2

    .line 724
    .local v1, "visCollapsed":I
    :goto_0
    iget-object v5, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v5}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    .line 726
    .local v0, "hasText":Z
    :goto_1
    iget-object v5, p0, Lcom/oppo/widget/OppoSearchView;->mSearchButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 727
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchView;->updateSubmitButton(Z)V

    .line 728
    iget-object v6, p0, Lcom/oppo/widget/OppoSearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_2

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 729
    iget-object v5, p0, Lcom/oppo/widget/OppoSearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/oppo/widget/OppoSearchView;->mIconifiedByDefault:Z

    if-eqz v6, :cond_3

    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->updateCloseButton()V

    .line 731
    if-nez v0, :cond_4

    :goto_4
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoSearchView;->updateVoiceButton(Z)V

    .line 732
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->updateSubmitArea()V

    .line 733
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "visCollapsed":I
    :cond_0
    move v1, v3

    .line 722
    goto :goto_0

    .restart local v1    # "visCollapsed":I
    :cond_1
    move v0, v2

    .line 724
    goto :goto_1

    .restart local v0    # "hasText":Z
    :cond_2
    move v5, v2

    .line 728
    goto :goto_2

    :cond_3
    move v3, v2

    .line 729
    goto :goto_3

    :cond_4
    move v4, v2

    .line 731
    goto :goto_4
.end method

.method private updateVoiceButton(Z)V
    .locals 3
    .param p1, "empty"    # Z

    .prologue
    .line 1079
    const/16 v0, 0x8

    .line 1080
    .local v0, "visibility":I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1081
    const/4 v0, 0x0

    .line 1082
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSubmitButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSearchView;->mClearingFocus:Z

    .line 436
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoSearchView;->setImeVisibility(Z)V

    .line 437
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 438
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->clearFocus()V

    .line 439
    iput-boolean v1, p0, Lcom/oppo/widget/OppoSearchView;->mClearingFocus:Z

    .line 440
    return-void
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 2

    .prologue
    .line 1193
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->clearFocus()V

    .line 1194
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchView;->updateViewsVisibility(Z)V

    .line 1195
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iget v1, p0, Lcom/oppo/widget/OppoSearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSearchView;->mExpandedInActionView:Z

    .line 1197
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    .line 1204
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    .line 1212
    :goto_0
    return-void

    .line 1207
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSearchView;->mExpandedInActionView:Z

    .line 1208
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoSearchView;->mCollapsedImeOptions:I

    .line 1209
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iget v1, p0, Lcom/oppo/widget/OppoSearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1210
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 796
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoSearchView;->post(Ljava/lang/Runnable;)Z

    .line 797
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 798
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 851
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v1, :cond_0

    .line 852
    const/4 v1, 0x0

    .line 864
    :goto_0
    return v1

    .line 857
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1, p1}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 858
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 859
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/oppo/widget/OppoSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 861
    const/4 v1, 0x1

    goto :goto_0

    .line 864
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 683
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 712
    :goto_0
    return-void

    .line 687
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 688
    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 690
    .local v0, "width":I
    sparse-switch v1, :sswitch_data_0

    .line 710
    :cond_1
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    .line 711
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 693
    :sswitch_0
    iget v2, p0, Lcom/oppo/widget/OppoSearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    .line 694
    iget v2, p0, Lcom/oppo/widget/OppoSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 696
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 698
    goto :goto_1

    .line 701
    :sswitch_1
    iget v2, p0, Lcom/oppo/widget/OppoSearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    .line 702
    iget v2, p0, Lcom/oppo/widget/OppoSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 707
    :sswitch_2
    iget v2, p0, Lcom/oppo/widget/OppoSearchView;->mMaxWidth:I

    if-lez v2, :cond_3

    iget v0, p0, Lcom/oppo/widget/OppoSearchView;->mMaxWidth:I

    :goto_2
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_2

    .line 690
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    .prologue
    .line 820
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 821
    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchView;->updateViewsVisibility(Z)V

    .line 1175
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->postUpdateFocusedState()V

    .line 1176
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->forceSuggestionQuery()V

    .line 1179
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1183
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1185
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->postUpdateFocusedState()V

    .line 1186
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-boolean v2, p0, Lcom/oppo/widget/OppoSearchView;->mClearingFocus:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 428
    :cond_0
    :goto_0
    return v0

    .line 418
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 419
    goto :goto_0

    .line 421
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->isIconified()Z

    move-result v2

    if-nez v2, :cond_3

    .line 422
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v2, p1, p2}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 423
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoSearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 428
    .end local v0    # "result":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 385
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    .prologue
    .line 576
    if-eqz p1, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->onCloseClicked()V

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .param p1, "iconified"    # Z

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_0
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSearchView;->mIconifiedByDefault:Z

    .line 552
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSearchView;->updateViewsVisibility(Z)V

    .line 553
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->updateQueryHint()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 397
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setInputType(I)V

    .line 409
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .prologue
    .line 674
    iput p1, p0, Lcom/oppo/widget/OppoSearchView;->mMaxWidth:I

    .line 676
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->requestLayout()V

    .line 677
    return-void
.end method

.method public setOnCloseListener(Lcom/oppo/widget/OppoSearchView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoSearchView$OnCloseListener;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView;->mOnCloseListener:Lcom/oppo/widget/OppoSearchView$OnCloseListener;

    .line 459
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 468
    return-void
.end method

.method public setOnQueryTextListener(Lcom/oppo/widget/OppoSearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoSearchView$OnQueryTextListener;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView;->mOnQueryChangeListener:Lcom/oppo/widget/OppoSearchView$OnQueryTextListener;

    .line 450
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 489
    return-void
.end method

.method public setOnSuggestionListener(Lcom/oppo/widget/OppoSearchView$OnSuggestionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/widget/OppoSearchView$OnSuggestionListener;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView;->mOnSuggestionListener:Lcom/oppo/widget/OppoSearchView$OnSuggestionListener;

    .line 477
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    .line 509
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 510
    if-eqz p1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setSelection(I)V

    .line 512
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 516
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->onSubmitQuery()V

    .line 519
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 531
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->updateQueryHint()V

    .line 532
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 630
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSearchView;->mQueryRefinement:Z

    .line 631
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v0, v0, Lcom/oppo/widget/OppoSuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Lcom/oppo/widget/OppoSuggestionsAdapter;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoSuggestionsAdapter;->setQueryRefinement(I)V

    .line 636
    :cond_0
    return-void

    .line 632
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 362
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->updateSearchAutoComplete()V

    .line 364
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->updateQueryHint()V

    .line 367
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceButtonEnabled:Z

    .line 369
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchView;->updateViewsVisibility(Z)V

    .line 375
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSearchView;->mSubmitButtonEnabled:Z

    .line 603
    invoke-virtual {p0}, Lcom/oppo/widget/OppoSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchView;->updateViewsVisibility(Z)V

    .line 604
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/CursorAdapter;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 656
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchView;->mQueryTextView:Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoSearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 657
    return-void
.end method
