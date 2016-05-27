.class Lcom/android/internal/policy/impl/PhoneWindow$Injector;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "Xiaokang.Feng@Plf.SDK : Add for Actionbar"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newActionBarContextView(Landroid/content/Context;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4970
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4971
    new-instance v0, Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/OppoActionBarContextView;-><init>(Landroid/content/Context;)V

    .line 4973
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static newActionMode(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)Lcom/android/internal/view/StandaloneActionMode;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Lcom/android/internal/widget/ActionBarContextView;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "isFocusable"    # Z

    .prologue
    .line 4978
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4979
    new-instance v0, Lcom/android/internal/view/OppoStandaloneActionMode;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/view/OppoStandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 4981
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/view/StandaloneActionMode;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    goto :goto_0
.end method

.method static setActionModeLayout(Landroid/view/ViewStub;)V
    .locals 1
    .param p0, "stub"    # Landroid/view/ViewStub;

    .prologue
    .line 4985
    invoke-virtual {p0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4986
    const v0, 0xc090445

    invoke-virtual {p0, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 4988
    :cond_0
    return-void
.end method
