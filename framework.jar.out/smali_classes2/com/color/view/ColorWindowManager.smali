.class public final Lcom/color/view/ColorWindowManager;
.super Ljava/lang/Object;
.source "ColorWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/view/ColorWindowManager$LayoutParams;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ColorWindowManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static getFocusedWindowFrame(Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 53
    :try_start_0
    new-instance v0, Landroid/view/IOppoWindowManagerImpl;

    invoke-direct {v0}, Landroid/view/IOppoWindowManagerImpl;-><init>()V

    .line 54
    .local v0, "wmi":Landroid/view/IOppoWindowManagerImpl;
    invoke-virtual {v0, p0}, Landroid/view/IOppoWindowManagerImpl;->getFocusedWindowFrame(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "wmi":Landroid/view/IOppoWindowManagerImpl;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v1

    goto :goto_0
.end method
