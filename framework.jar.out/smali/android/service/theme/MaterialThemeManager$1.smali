.class Landroid/service/theme/MaterialThemeManager$1;
.super Landroid/service/theme/IOnMaterialThemeChangedListener$Stub;
.source "MaterialThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/theme/MaterialThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/theme/MaterialThemeManager;


# direct methods
.method constructor <init>(Landroid/service/theme/MaterialThemeManager;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Landroid/service/theme/MaterialThemeManager$1;->this$0:Landroid/service/theme/MaterialThemeManager;

    invoke-direct {p0}, Landroid/service/theme/IOnMaterialThemeChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchColorCodeChanged()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager$1;->this$0:Landroid/service/theme/MaterialThemeManager;

    # getter for: Landroid/service/theme/MaterialThemeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/theme/MaterialThemeManager;->access$000(Landroid/service/theme/MaterialThemeManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 181
    return-void
.end method

.method public dispatchMaterialThemeChanged()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager$1;->this$0:Landroid/service/theme/MaterialThemeManager;

    # getter for: Landroid/service/theme/MaterialThemeManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/theme/MaterialThemeManager;->access$000(Landroid/service/theme/MaterialThemeManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    return-void
.end method
