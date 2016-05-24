.class Lcom/meizu/media/camera/AdvancedSettingsActivity$2;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/AdvancedSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/oneplus/io/Storage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/AdvancedSettingsActivity;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/AdvancedSettingsActivity;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/meizu/media/camera/AdvancedSettingsActivity$2;->this$0:Lcom/meizu/media/camera/AdvancedSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/Storage;",
            ">;>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/Storage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/util/List<Lcom/oneplus/io/Storage;>;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/util/List<Lcom/oneplus/io/Storage;>;>;"
    iget-object v0, p0, Lcom/meizu/media/camera/AdvancedSettingsActivity$2;->this$0:Lcom/meizu/media/camera/AdvancedSettingsActivity;

    # invokes: Lcom/meizu/media/camera/AdvancedSettingsActivity;->handleStorageMenuItem()V
    invoke-static {v0}, Lcom/meizu/media/camera/AdvancedSettingsActivity;->access$200(Lcom/meizu/media/camera/AdvancedSettingsActivity;)V

    .line 191
    iget-object v0, p0, Lcom/meizu/media/camera/AdvancedSettingsActivity$2;->this$0:Lcom/meizu/media/camera/AdvancedSettingsActivity;

    # getter for: Lcom/meizu/media/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/meizu/media/camera/ui/menu/MenuListView;
    invoke-static {v0}, Lcom/meizu/media/camera/AdvancedSettingsActivity;->access$300(Lcom/meizu/media/camera/AdvancedSettingsActivity;)Lcom/meizu/media/camera/ui/menu/MenuListView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/media/camera/AdvancedSettingsActivity$2;->this$0:Lcom/meizu/media/camera/AdvancedSettingsActivity;

    # getter for: Lcom/meizu/media/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;
    invoke-static {v1}, Lcom/meizu/media/camera/AdvancedSettingsActivity;->access$000(Lcom/meizu/media/camera/AdvancedSettingsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/ui/menu/MenuListView;->setMenuItems(Ljava/util/List;)V

    .line 192
    return-void
.end method
