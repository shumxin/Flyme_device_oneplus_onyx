.class Lcom/meizu/media/camera/ui/CaptureModeSwitcher$10;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->setupPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/CaptureModeSwitcher;)V
    .locals 0

    .prologue
    .line 974
    iput-object p1, p0, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$10;->this$0:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 978
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureModeSwitcher$10;->this$0:Lcom/meizu/media/camera/ui/CaptureModeSwitcher;

    # invokes: Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->onAdvancedSettingsButtonClicked()V
    invoke-static {v0}, Lcom/meizu/media/camera/ui/CaptureModeSwitcher;->access$3700(Lcom/meizu/media/camera/ui/CaptureModeSwitcher;)V

    .line 979
    return-void
.end method
