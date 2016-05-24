.class final Lcom/meizu/media/camera/ui/OnScreenHintImpl$HintHandle;
.super Lcom/oneplus/base/Handle;
.source "OnScreenHintImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/OnScreenHintImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HintHandle"
.end annotation


# instance fields
.field public final flags:I

.field public text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/meizu/media/camera/ui/OnScreenHintImpl;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/ui/OnScreenHintImpl;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I

    .prologue
    .line 67
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OnScreenHintImpl$HintHandle;->this$0:Lcom/meizu/media/camera/ui/OnScreenHintImpl;

    .line 68
    const-string v0, "Hint"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/meizu/media/camera/ui/OnScreenHintImpl$HintHandle;->text:Ljava/lang/CharSequence;

    .line 70
    iput p3, p0, Lcom/meizu/media/camera/ui/OnScreenHintImpl$HintHandle;->flags:I

    .line 71
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OnScreenHintImpl$HintHandle;->this$0:Lcom/meizu/media/camera/ui/OnScreenHintImpl;

    # invokes: Lcom/meizu/media/camera/ui/OnScreenHintImpl;->hideHint(Lcom/meizu/media/camera/ui/OnScreenHintImpl$HintHandle;)V
    invoke-static {v0, p0}, Lcom/meizu/media/camera/ui/OnScreenHintImpl;->access$500(Lcom/meizu/media/camera/ui/OnScreenHintImpl;Lcom/meizu/media/camera/ui/OnScreenHintImpl$HintHandle;)V

    .line 77
    return-void
.end method
