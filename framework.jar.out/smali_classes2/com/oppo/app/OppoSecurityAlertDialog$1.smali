.class Lcom/oppo/app/OppoSecurityAlertDialog$1;
.super Ljava/lang/Object;
.source "OppoSecurityAlertDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 68
    iput-object p1, p0, Lcom/oppo/app/OppoSecurityAlertDialog$1;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog$1;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    # setter for: Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z
    invoke-static {v0, p2}, Lcom/oppo/app/OppoSecurityAlertDialog;->access$002(Lcom/oppo/app/OppoSecurityAlertDialog;Z)Z

    .line 74
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog$1;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    # getter for: Lcom/oppo/app/OppoSecurityAlertDialog;->mOnSelectedListener:Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;
    invoke-static {v0}, Lcom/oppo/app/OppoSecurityAlertDialog;->access$100(Lcom/oppo/app/OppoSecurityAlertDialog;)Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/oppo/app/OppoSecurityAlertDialog$1;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    # getter for: Lcom/oppo/app/OppoSecurityAlertDialog;->mOnSelectedListener:Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;
    invoke-static {v0}, Lcom/oppo/app/OppoSecurityAlertDialog;->access$100(Lcom/oppo/app/OppoSecurityAlertDialog;)Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/app/OppoSecurityAlertDialog$1;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    # getter for: Lcom/oppo/app/OppoSecurityAlertDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/oppo/app/OppoSecurityAlertDialog;->access$200(Lcom/oppo/app/OppoSecurityAlertDialog;)Landroid/app/Dialog;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/app/OppoSecurityAlertDialog$1;->this$0:Lcom/oppo/app/OppoSecurityAlertDialog;

    # getter for: Lcom/oppo/app/OppoSecurityAlertDialog;->mIsCheck:Z
    invoke-static {v2}, Lcom/oppo/app/OppoSecurityAlertDialog;->access$000(Lcom/oppo/app/OppoSecurityAlertDialog;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;->onSelected(Landroid/content/DialogInterface;ZI)V

    .line 77
    :cond_0
    return-void
.end method
