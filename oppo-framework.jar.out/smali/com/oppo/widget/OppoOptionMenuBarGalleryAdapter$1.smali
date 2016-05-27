.class Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$1;
.super Ljava/lang/Object;
.source "OppoOptionMenuBarGalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setItemViewOnClick(Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

.field final synthetic val$galleryItem:Lcom/oppo/widget/OppoMenuItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;Lcom/oppo/widget/OppoMenuItem;I)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iput-object p2, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$1;->val$galleryItem:Lcom/oppo/widget/OppoMenuItem;

    iput p3, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->access$000(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;)Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;
    invoke-static {v0}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->access$000(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;)Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$1;->val$galleryItem:Lcom/oppo/widget/OppoMenuItem;

    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$1;->val$position:I

    invoke-interface {v0, v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;->onGalleryItemClick(Lcom/oppo/widget/OppoMenuItem;I)V

    .line 225
    :cond_0
    return-void
.end method
