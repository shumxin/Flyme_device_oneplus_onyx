.class Landroid/service/theme/MaterialThemeManager$2;
.super Landroid/os/Handler;
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
    .line 187
    iput-object p1, p0, Landroid/service/theme/MaterialThemeManager$2;->this$0:Landroid/service/theme/MaterialThemeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 190
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 193
    :pswitch_0
    :try_start_0
    # invokes: Landroid/service/theme/MaterialThemeManager;->getService()Landroid/service/theme/IMaterialTheme;
    invoke-static {}, Landroid/service/theme/MaterialThemeManager;->access$200()Landroid/service/theme/IMaterialTheme;

    move-result-object v0

    invoke-interface {v0}, Landroid/service/theme/IMaterialTheme;->getMaterialTheme()I

    move-result v0

    # setter for: Landroid/service/theme/MaterialThemeManager;->sTheme:I
    invoke-static {v0}, Landroid/service/theme/MaterialThemeManager;->access$102(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :goto_1
    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager$2;->this$0:Landroid/service/theme/MaterialThemeManager;

    # invokes: Landroid/service/theme/MaterialThemeManager;->reportMaterialThemeChanged()V
    invoke-static {v0}, Landroid/service/theme/MaterialThemeManager;->access$300(Landroid/service/theme/MaterialThemeManager;)V

    goto :goto_0

    .line 200
    :pswitch_1
    :try_start_1
    # invokes: Landroid/service/theme/MaterialThemeManager;->getService()Landroid/service/theme/IMaterialTheme;
    invoke-static {}, Landroid/service/theme/MaterialThemeManager;->access$200()Landroid/service/theme/IMaterialTheme;

    move-result-object v0

    invoke-interface {v0}, Landroid/service/theme/IMaterialTheme;->getColorCode()Ljava/lang/String;

    move-result-object v0

    # setter for: Landroid/service/theme/MaterialThemeManager;->sColor:Ljava/lang/String;
    invoke-static {v0}, Landroid/service/theme/MaterialThemeManager;->access$402(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    :goto_2
    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager$2;->this$0:Landroid/service/theme/MaterialThemeManager;

    # invokes: Landroid/service/theme/MaterialThemeManager;->reportColorModeChanged()V
    invoke-static {v0}, Landroid/service/theme/MaterialThemeManager;->access$500(Landroid/service/theme/MaterialThemeManager;)V

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    goto :goto_2

    .line 194
    :catch_1
    move-exception v0

    goto :goto_1

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
