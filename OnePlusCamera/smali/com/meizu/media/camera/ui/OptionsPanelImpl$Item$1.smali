.class Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item$1;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/CameraActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

.field final synthetic val$this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item$1;->this$1:Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    iput-object p2, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item$1;->val$this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item$1;->this$1:Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    iget-object v0, v0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item$1;->this$1:Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;

    # invokes: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onItemClicked(Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;)V
    invoke-static {v0, v1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$000(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/ui/OptionsPanelImpl$Item;)V

    .line 150
    return-void
.end method
