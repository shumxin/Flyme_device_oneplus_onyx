.class Lcom/meizu/media/camera/manual/ControlItem$1;
.super Ljava/lang/Object;
.source "ControlItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/manual/ControlItem;-><init>(Lcom/meizu/media/camera/manual/ControlType;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/manual/ControlItem;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/manual/ControlItem;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/meizu/media/camera/manual/ControlItem$1;->this$0:Lcom/meizu/media/camera/manual/ControlItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ControlItem$1;->this$0:Lcom/meizu/media/camera/manual/ControlItem;

    # getter for: Lcom/meizu/media/camera/manual/ControlItem;->m_ControlItemListener:Lcom/meizu/media/camera/manual/ControlItem$ControlItemListener;
    invoke-static {v0}, Lcom/meizu/media/camera/manual/ControlItem;->access$000(Lcom/meizu/media/camera/manual/ControlItem;)Lcom/meizu/media/camera/manual/ControlItem$ControlItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/meizu/media/camera/manual/ControlItem$1;->this$0:Lcom/meizu/media/camera/manual/ControlItem;

    # getter for: Lcom/meizu/media/camera/manual/ControlItem;->m_ControlItemListener:Lcom/meizu/media/camera/manual/ControlItem$ControlItemListener;
    invoke-static {v0}, Lcom/meizu/media/camera/manual/ControlItem;->access$000(Lcom/meizu/media/camera/manual/ControlItem;)Lcom/meizu/media/camera/manual/ControlItem$ControlItemListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/camera/manual/ControlItem$1;->this$0:Lcom/meizu/media/camera/manual/ControlItem;

    # getter for: Lcom/meizu/media/camera/manual/ControlItem;->m_ControlType:Lcom/meizu/media/camera/manual/ControlType;
    invoke-static {v1}, Lcom/meizu/media/camera/manual/ControlItem;->access$100(Lcom/meizu/media/camera/manual/ControlItem;)Lcom/meizu/media/camera/manual/ControlType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meizu/media/camera/manual/ControlItem$ControlItemListener;->onControlItemClick(Lcom/meizu/media/camera/manual/ControlType;)V

    .line 44
    :cond_0
    return-void
.end method
