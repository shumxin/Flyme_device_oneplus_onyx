.class public Landroid/preference/OppoCheckSwitchPreference;
.super Landroid/preference/CheckBoxPreference;
.source "OppoCheckSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/OppoCheckSwitchPreference$1;,
        Landroid/preference/OppoCheckSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final PADDINGRIGHT:I

.field private mClickToggle:Z

.field private final mListener:Landroid/preference/OppoCheckSwitchPreference$Listener;

.field private mPaddingLeft:I

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mSendClickAccessibilityEvent:Z

.field private mSwitchOn:Ljava/lang/CharSequence;

.field private mSwitchView:Landroid/widget/CompoundButton;

.field private mTextColorSummary:Landroid/content/res/ColorStateList;

.field private mTextColorTitle:Landroid/content/res/ColorStateList;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/OppoCheckSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 128
    const v0, 0xc010036

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/OppoCheckSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v2, Landroid/preference/OppoCheckSwitchPreference$Listener;

    invoke-direct {v2, p0, v3}, Landroid/preference/OppoCheckSwitchPreference$Listener;-><init>(Landroid/preference/OppoCheckSwitchPreference;Landroid/preference/OppoCheckSwitchPreference$1;)V

    iput-object v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mListener:Landroid/preference/OppoCheckSwitchPreference$Listener;

    .line 64
    iput-object v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    .line 65
    iput-object v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    .line 66
    iput-boolean v4, p0, Landroid/preference/OppoCheckSwitchPreference;->mClickToggle:Z

    .line 67
    iput-object v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 68
    iput v4, p0, Landroid/preference/OppoCheckSwitchPreference;->PADDINGRIGHT:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc050455

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mPaddingLeft:I

    .line 108
    sget-object v2, Loppo/R$styleable;->OppoPreferenceTextAppearance:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/OppoCheckSwitchPreference;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 111
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/OppoCheckSwitchPreference;->setSummaryTextColor(Landroid/content/res/ColorStateList;)V

    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    sget-object v2, Loppo/R$styleable;->OppoSwitchPreference:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 117
    .local v1, "c":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/preference/OppoCheckSwitchPreference;->setClickToggle(Z)V

    .line 118
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    return-void
.end method

.method static synthetic access$100(Landroid/preference/OppoCheckSwitchPreference;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Landroid/preference/OppoCheckSwitchPreference;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/preference/OppoCheckSwitchPreference;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method private getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/preference/OppoCheckSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSwitch()Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 172
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_2

    .line 174
    instance-of v1, v0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 175
    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    .line 178
    :cond_0
    iget-object v1, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    move-object v1, v0

    .line 181
    check-cast v1, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroid/preference/OppoCheckSwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 182
    invoke-virtual {p0, v0}, Landroid/preference/OppoCheckSwitchPreference;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 183
    iget-object v1, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    iget-object v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mListener:Landroid/preference/OppoCheckSwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Landroid/preference/OppoCheckSwitchPreference;->mSendClickAccessibilityEvent:Z

    .line 156
    iget-boolean v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mClickToggle:Z

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    instance-of v2, v2, Lcom/oppo/widget/OppoSwitch;

    if-eqz v2, :cond_1

    .line 158
    iget-object v1, p0, Landroid/preference/OppoCheckSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    check-cast v1, Lcom/oppo/widget/OppoSwitch;

    .line 159
    .local v1, "switchView":Lcom/oppo/widget/OppoSwitch;
    invoke-virtual {v1}, Lcom/oppo/widget/OppoSwitch;->changeChecked()V

    .line 168
    .end local v1    # "switchView":Lcom/oppo/widget/OppoSwitch;
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p0}, Landroid/preference/OppoCheckSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 162
    .local v0, "newValue":Z
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/OppoCheckSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {p0, v0}, Landroid/preference/OppoCheckSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 161
    .end local v0    # "newValue":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 195
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    .line 196
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    const v4, 0xc0204c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_0

    .line 198
    iget v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mPaddingLeft:I

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 200
    :cond_0
    iget-boolean v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mClickToggle:Z

    if-nez v3, :cond_2

    .line 201
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 204
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 205
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mTextColorTitle:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 208
    :cond_1
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    const v4, 0x1020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 209
    .local v0, "summaryView":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 210
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mTextColorSummary:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 214
    .end local v0    # "summaryView":Landroid/widget/TextView;
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference;->mView:Landroid/view/View;

    return-object v3
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/preference/OppoCheckSwitchPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p0}, Landroid/preference/OppoCheckSwitchPreference;->onClick()V

    .line 146
    invoke-virtual {p0}, Landroid/preference/OppoCheckSwitchPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/OppoCheckSwitchPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method sendAccessibilityEvent(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/preference/OppoCheckSwitchPreference;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 263
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-boolean v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mSendClickAccessibilityEvent:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 265
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 266
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 267
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 268
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 270
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/preference/OppoCheckSwitchPreference;->mSendClickAccessibilityEvent:Z

    .line 271
    return-void
.end method

.method public setClickToggle(Z)V
    .locals 0
    .param p1, "toggle"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Landroid/preference/OppoCheckSwitchPreference;->mClickToggle:Z

    .line 256
    return-void
.end method

.method public setSummaryTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 237
    iput-object p1, p0, Landroid/preference/OppoCheckSwitchPreference;->mTextColorSummary:Landroid/content/res/ColorStateList;

    .line 238
    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 228
    iput-object p1, p0, Landroid/preference/OppoCheckSwitchPreference;->mTextColorTitle:Landroid/content/res/ColorStateList;

    .line 229
    return-void
.end method
