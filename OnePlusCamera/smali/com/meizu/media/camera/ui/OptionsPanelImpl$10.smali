.class Lcom/meizu/media/camera/ui/OptionsPanelImpl$10;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/OptionsPanelImpl;->setupButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 0

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$10;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$10;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    # invokes: Lcom/meizu/media/camera/ui/OptionsPanelImpl;->onVideoResolutionButtonClicked(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl;->access$900(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Landroid/view/View;)V

    .line 1129
    return-void
.end method