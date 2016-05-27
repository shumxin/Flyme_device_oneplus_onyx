.class Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;
.super Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
.source "OppoWindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OppoWindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppoActionModeImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/view/ActionMode$Callback;

.field final synthetic this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/OppoWindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;-><init>(Lcom/android/internal/app/WindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 218
    iput-object p3, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 219
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iget-object v0, v0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 229
    iput-object v2, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 230
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->animateToMode(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoActionBarContextView;->closeMode()V

    .line 234
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$900(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$900(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->sendAccessibilityEvent(I)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$OppoActionModeImpl;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iput-object v2, v0, Lcom/android/internal/app/OppoWindowDecorActionBar;->mActionMode:Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    goto :goto_0
.end method
