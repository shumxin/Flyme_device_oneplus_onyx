.class Landroid/widget/OppoGridView$FixedViewInfo;
.super Ljava/lang/Object;
.source "OppoGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedViewInfo"
.end annotation


# instance fields
.field data:Ljava/lang/Object;

.field isSelectable:Z

.field final synthetic this$0:Landroid/widget/OppoGridView;

.field view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/OppoGridView;)V
    .locals 0

    .prologue
    .line 2397
    iput-object p1, p0, Landroid/widget/OppoGridView$FixedViewInfo;->this$0:Landroid/widget/OppoGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/OppoGridView;Landroid/widget/OppoGridView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/OppoGridView;
    .param p2, "x1"    # Landroid/widget/OppoGridView$1;

    .prologue
    .line 2397
    invoke-direct {p0, p1}, Landroid/widget/OppoGridView$FixedViewInfo;-><init>(Landroid/widget/OppoGridView;)V

    return-void
.end method
