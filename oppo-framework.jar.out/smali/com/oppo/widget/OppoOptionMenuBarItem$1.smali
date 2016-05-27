.class Lcom/oppo/widget/OppoOptionMenuBarItem$1;
.super Landroid/os/Handler;
.source "OppoOptionMenuBarItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoOptionMenuBarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBarItem;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoOptionMenuBarItem;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 193
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 198
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 200
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 201
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBarItem;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->access$000(Lcom/oppo/widget/OppoOptionMenuBarItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBarItem$1;->this$0:Lcom/oppo/widget/OppoOptionMenuBarItem;

    # getter for: Lcom/oppo/widget/OppoOptionMenuBarItem;->mIconOrig:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->access$000(Lcom/oppo/widget/OppoOptionMenuBarItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OppoOptionMenuBarItem"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 193
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method
