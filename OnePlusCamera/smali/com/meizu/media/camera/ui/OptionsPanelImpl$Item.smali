.class final Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/OptionsPanelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Item"
.end annotation


# instance fields
.field public iconImageView:Landroid/widget/ImageView;

.field public itemView:Landroid/view/View;

.field public object:Ljava/lang/Object;

.field final synthetic this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

.field public titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/CameraActivity;Ljava/lang/Object;)V
    .locals 5
    .param p2, "cameraActivity"    # Lcom/meizu/media/camera/CameraActivity;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p2}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 140
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f07003f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 142
    invoke-virtual {p2}, Lcom/meizu/media/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030018

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    .line 143
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    new-instance v3, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item$1;

    invoke-direct {v3, p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item$1;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    const v3, 0x7f0b0056

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->iconImageView:Landroid/widget/ImageView;

    .line 153
    iget-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->itemView:Landroid/view/View;

    const v3, 0x7f0b0057

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->titleTextView:Landroid/widget/TextView;

    .line 154
    iput-object p3, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->object:Ljava/lang/Object;

    .line 155
    return-void
.end method
