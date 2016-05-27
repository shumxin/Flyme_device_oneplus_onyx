.class public Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;
.super Landroid/widget/LinearLayout;
.source "OppoOptionMenuBarMajorOperationLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuBar"    # Lcom/oppo/widget/OppoOptionMenuBar;

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->setFocusable(Z)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->setFocusableInTouchMode(Z)V

    .line 51
    const v0, 0xc09043a

    invoke-static {p1, v0, p0}, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method
