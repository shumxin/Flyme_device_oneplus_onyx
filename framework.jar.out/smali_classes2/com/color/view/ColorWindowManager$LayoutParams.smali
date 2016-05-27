.class public Lcom/color/view/ColorWindowManager$LayoutParams;
.super Landroid/view/WindowManager$LayoutParams;
.source "ColorWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/view/ColorWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final TYPE_DRAG_SCREEN_BACKGROUND:I = 0x8fd

.field public static final TYPE_DRAG_SCREEN_FOREGROUND:I = 0x8fe

.field public static final TYPE_POWERVIEW:I = 0x8fc

.field public static final TYPE_SYSTEM_LONGSHOT:I = 0x8ff


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    return-void
.end method
