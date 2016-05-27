.class Lcom/oppo/widget/OppoEditText$OppoTextWatcher;
.super Ljava/lang/Object;
.source "OppoEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppoTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoEditText;


# direct methods
.method private constructor <init>(Lcom/oppo/widget/OppoEditText;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/oppo/widget/OppoEditText$OppoTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/widget/OppoEditText;Lcom/oppo/widget/OppoEditText$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/widget/OppoEditText;
    .param p2, "x1"    # Lcom/oppo/widget/OppoEditText$1;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoEditText$OppoTextWatcher;-><init>(Lcom/oppo/widget/OppoEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v1, p0, Lcom/oppo/widget/OppoEditText$OppoTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/oppo/widget/OppoEditText$OppoTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/oppo/widget/OppoEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v1, p0, Lcom/oppo/widget/OppoEditText$OppoTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    const/4 v2, 0x0

    # setter for: Lcom/oppo/widget/OppoEditText;->mDeletable:Z
    invoke-static {v1, v2}, Lcom/oppo/widget/OppoEditText;->access$102(Lcom/oppo/widget/OppoEditText;Z)Z

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoEditText$OppoTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    # getter for: Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/oppo/widget/OppoEditText;->access$200(Lcom/oppo/widget/OppoEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoEditText$OppoTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    # getter for: Lcom/oppo/widget/OppoEditText;->mDeletable:Z
    invoke-static {v1}, Lcom/oppo/widget/OppoEditText;->access$100(Lcom/oppo/widget/OppoEditText;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/oppo/widget/OppoEditText$OppoTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    iget-object v2, p0, Lcom/oppo/widget/OppoEditText$OppoTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    # getter for: Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/oppo/widget/OppoEditText;->access$200(Lcom/oppo/widget/OppoEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v3, v3, v2, v3}, Lcom/oppo/widget/OppoEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v1, p0, Lcom/oppo/widget/OppoEditText$OppoTextWatcher;->this$0:Lcom/oppo/widget/OppoEditText;

    const/4 v2, 0x1

    # setter for: Lcom/oppo/widget/OppoEditText;->mDeletable:Z
    invoke-static {v1, v2}, Lcom/oppo/widget/OppoEditText;->access$102(Lcom/oppo/widget/OppoEditText;Z)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 194
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 196
    return-void
.end method
