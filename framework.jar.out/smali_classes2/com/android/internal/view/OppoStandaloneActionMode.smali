.class public Lcom/android/internal/view/OppoStandaloneActionMode;
.super Lcom/android/internal/view/StandaloneActionMode;
.source "OppoStandaloneActionMode.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoStandaloneActionMode"


# instance fields
.field private mActionModeView:Lcom/android/internal/widget/ActionBarContextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/internal/widget/ActionBarContextView;
    .param p3, "callback"    # Landroid/view/ActionMode$Callback;
    .param p4, "isFocusable"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/OppoStandaloneActionMode;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 45
    iput-object p2, p0, Lcom/android/internal/view/OppoStandaloneActionMode;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 46
    const/4 v0, 0x1

    const-string v1, "OppoStandaloneActionMode"

    const-string v2, "OppoStandaloneActionMode"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/internal/view/StandaloneActionMode;->finish()V

    .line 55
    iget-object v0, p0, Lcom/android/internal/view/OppoStandaloneActionMode;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->animateToVisibility(I)V

    .line 56
    return-void
.end method
