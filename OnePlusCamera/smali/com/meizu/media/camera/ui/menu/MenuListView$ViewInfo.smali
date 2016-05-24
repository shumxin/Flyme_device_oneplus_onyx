.class final Lcom/meizu/media/camera/ui/menu/MenuListView$ViewInfo;
.super Ljava/lang/Object;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/menu/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewInfo"
.end annotation


# instance fields
.field public isUpdatingViews:Z

.field public menuItem:Lcom/meizu/media/camera/ui/menu/MenuItem;

.field public summaryTextView:Landroid/widget/TextView;

.field public switchView:Landroid/widget/Switch;

.field public titleTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/media/camera/ui/menu/MenuListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/media/camera/ui/menu/MenuListView$1;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/meizu/media/camera/ui/menu/MenuListView$ViewInfo;-><init>()V

    return-void
.end method
