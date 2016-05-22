.class Lcom/oneplus/camera/ui/OptionsPanelImpl$9;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/OptionsPanelImpl;->setupButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$9;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$9;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    # invokes: Lcom/oneplus/camera/ui/OptionsPanelImpl;->onPhotoResolutionButtonClicked()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/OptionsPanelImpl;->access$800(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    .line 1118
    return-void
.end method
