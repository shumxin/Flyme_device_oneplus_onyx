.class public Landroid/view/OppoWindowManagerImplHelper$BlackFileListener;
.super Landroid/os/FileObserver;
.source "OppoWindowManagerImplHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OppoWindowManagerImplHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlackFileListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/OppoWindowManagerImplHelper;


# direct methods
.method public constructor <init>(Landroid/view/OppoWindowManagerImplHelper;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Landroid/view/OppoWindowManagerImplHelper$BlackFileListener;->this$0:Landroid/view/OppoWindowManagerImplHelper;

    .line 95
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 97
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 101
    packed-switch p1, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Landroid/view/OppoWindowManagerImplHelper$BlackFileListener;->this$0:Landroid/view/OppoWindowManagerImplHelper;

    # getter for: Landroid/view/OppoWindowManagerImplHelper;->file:Ljava/io/File;
    invoke-static {}, Landroid/view/OppoWindowManagerImplHelper;->access$000()Ljava/io/File;

    move-result-object v1

    # invokes: Landroid/view/OppoWindowManagerImplHelper;->getBlackList(Ljava/io/File;)V
    invoke-static {v0, v1}, Landroid/view/OppoWindowManagerImplHelper;->access$100(Landroid/view/OppoWindowManagerImplHelper;Ljava/io/File;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
