.class public interface abstract Landroid/view/OppoWindowManagerPolicy;
.super Ljava/lang/Object;
.source "OppoWindowManagerPolicy.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# virtual methods
.method public abstract doesNeedWaitingKeyguard()Z
.end method

.method public abstract isStatusBarVisible()Z
.end method

.method public abstract requestDismissKeyguard()V
.end method

.method public abstract rm_add_StatusBarRunnable(I)V
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "hejiamiao add for pull down status bar when full screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end method

.method public abstract showStatusBar()V
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "hejiamiao add for pull down status bar when full screen"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end method
