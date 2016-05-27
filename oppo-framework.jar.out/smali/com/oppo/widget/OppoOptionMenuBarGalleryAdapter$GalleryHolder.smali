.class Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;
.super Ljava/lang/Object;
.source "OppoOptionMenuBarGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryHolder"
.end annotation


# instance fields
.field textViews:[Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;)V
    .locals 1

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;->this$0:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$GalleryHolder;->textViews:[Landroid/widget/TextView;

    .line 122
    return-void
.end method
