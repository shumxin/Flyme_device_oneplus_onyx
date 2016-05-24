.class Lcom/meizu/media/camera/AdvancedSettingsActivity$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/AdvancedSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/AdvancedSettingsActivity;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/AdvancedSettingsActivity;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/meizu/media/camera/AdvancedSettingsActivity$1;->this$0:Lcom/meizu/media/camera/AdvancedSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/meizu/media/camera/AdvancedSettingsActivity$1;->this$0:Lcom/meizu/media/camera/AdvancedSettingsActivity;

    iget-object v0, p0, Lcom/meizu/media/camera/AdvancedSettingsActivity$1;->this$0:Lcom/meizu/media/camera/AdvancedSettingsActivity;

    # getter for: Lcom/meizu/media/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;
    invoke-static {v0}, Lcom/meizu/media/camera/AdvancedSettingsActivity;->access$000(Lcom/meizu/media/camera/AdvancedSettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/media/camera/ui/menu/MenuItem;

    # invokes: Lcom/meizu/media/camera/AdvancedSettingsActivity;->onMenuItemClicked(Lcom/meizu/media/camera/ui/menu/MenuItem;)V
    invoke-static {v1, v0}, Lcom/meizu/media/camera/AdvancedSettingsActivity;->access$100(Lcom/meizu/media/camera/AdvancedSettingsActivity;Lcom/meizu/media/camera/ui/menu/MenuItem;)V

    .line 169
    return-void
.end method
