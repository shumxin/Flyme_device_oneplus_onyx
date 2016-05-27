.class Lcom/oppo/app/OppoSecurityAlertDialog$3;
.super Ljava/lang/Object;
.source "OppoSecurityAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/app/OppoSecurityAlertDialog;-><init>(Landroid/content/Context;IIZZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/app/OppoSecurityAlertDialog;


# direct methods
.method constructor <init>(Lcom/oppo/app/OppoSecurityAlertDialog;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oppo/app/OppoSecurityAlertDialog$3;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog$3;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    # getter for: Lcom/oppo/app/OppoSecurityAlertDialog;->mOnSelectedListener:Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;
    invoke-static {v0}, Lcom/oppo/app/OppoSecurityAlertDialog;->access$100(Lcom/oppo/app/OppoSecurityAlertDialog;)Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog$3;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    # getter for: Lcom/oppo/app/OppoSecurityAlertDialog;->mOnSelectedListener:Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;
    invoke-static {v0}, Lcom/oppo/app/OppoSecurityAlertDialog;->access$100(Lcom/oppo/app/OppoSecurityAlertDialog;)Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog$3;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    # getter for: Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z
    invoke-static {v1}, Lcom/oppo/app/OppoSecurityAlertDialog;->access$000(Lcom/oppo/app/OppoSecurityAlertDialog;)Z

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;->onSelected(Landroid/content/DialogInterface;ZI)V

    .line 93
    :cond_0
    return-void
.end method
