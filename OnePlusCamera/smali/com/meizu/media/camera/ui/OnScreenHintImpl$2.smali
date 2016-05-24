.class Lcom/meizu/media/camera/ui/OnScreenHintImpl$2;
.super Ljava/lang/Object;
.source "OnScreenHintImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/ui/OnScreenHintImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/ui/OnScreenHintImpl;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/ui/OnScreenHintImpl;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OnScreenHintImpl$2;->this$0:Lcom/meizu/media/camera/ui/OnScreenHintImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .param p2, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p3, "e"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OnScreenHintImpl$2;->this$0:Lcom/meizu/media/camera/ui/OnScreenHintImpl;

    # getter for: Lcom/meizu/media/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/OnScreenHintImpl;->access$300(Lcom/meizu/media/camera/ui/OnScreenHintImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/meizu/media/camera/ui/OnScreenHintImpl$2;->this$0:Lcom/meizu/media/camera/ui/OnScreenHintImpl;

    iget-object v0, p0, Lcom/meizu/media/camera/ui/OnScreenHintImpl$2;->this$0:Lcom/meizu/media/camera/ui/OnScreenHintImpl;

    # getter for: Lcom/meizu/media/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/meizu/media/camera/ui/OnScreenHintImpl;->access$300(Lcom/meizu/media/camera/ui/OnScreenHintImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/OnScreenHintImpl$HintHandle;

    # invokes: Lcom/meizu/media/camera/ui/OnScreenHintImpl;->showHint(Lcom/meizu/media/camera/ui/OnScreenHintImpl$HintHandle;)Z
    invoke-static {v1, v0}, Lcom/meizu/media/camera/ui/OnScreenHintImpl;->access$600(Lcom/meizu/media/camera/ui/OnScreenHintImpl;Lcom/meizu/media/camera/ui/OnScreenHintImpl$HintHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OnScreenHintImpl$2;->this$0:Lcom/meizu/media/camera/ui/OnScreenHintImpl;

    sget-object v1, Lcom/meizu/media/camera/ui/OnScreenHint;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/meizu/media/camera/ui/OnScreenHintImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/ui/OnScreenHintImpl;->access$700(Lcom/meizu/media/camera/ui/OnScreenHintImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OnScreenHintImpl$2;->this$0:Lcom/meizu/media/camera/ui/OnScreenHintImpl;

    iget-object v1, p0, Lcom/meizu/media/camera/ui/OnScreenHintImpl$2;->this$0:Lcom/meizu/media/camera/ui/OnScreenHintImpl;

    # getter for: Lcom/meizu/media/camera/ui/OnScreenHintImpl;->m_Container:Lcom/meizu/media/camera/widget/RotateRelativeLayout;
    invoke-static {v1}, Lcom/meizu/media/camera/ui/OnScreenHintImpl;->access$000(Lcom/meizu/media/camera/ui/OnScreenHintImpl;)Lcom/meizu/media/camera/widget/RotateRelativeLayout;

    move-result-object v1

    # invokes: Lcom/meizu/media/camera/ui/OnScreenHintImpl;->setViewVisibility(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/ui/OnScreenHintImpl;->access$800(Lcom/meizu/media/camera/ui/OnScreenHintImpl;Landroid/view/View;Z)V

    .line 157
    iget-object v0, p0, Lcom/meizu/media/camera/ui/OnScreenHintImpl$2;->this$0:Lcom/meizu/media/camera/ui/OnScreenHintImpl;

    sget-object v1, Lcom/meizu/media/camera/ui/OnScreenHint;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/meizu/media/camera/ui/OnScreenHintImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/meizu/media/camera/ui/OnScreenHintImpl;->access$900(Lcom/meizu/media/camera/ui/OnScreenHintImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method
