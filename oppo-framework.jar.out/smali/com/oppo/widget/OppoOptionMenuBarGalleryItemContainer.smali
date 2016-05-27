.class public Lcom/oppo/widget/OppoOptionMenuBarGalleryItemContainer;
.super Landroid/widget/LinearLayout;
.source "OppoOptionMenuBarGalleryItemContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryItemContainer"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 39
    return-void
.end method
