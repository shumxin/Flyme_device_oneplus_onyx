.class public Lcom/oppo/widget/OppoQuickContactBadge$QuickContact;
.super Ljava/lang/Object;
.source "OppoQuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoQuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickContact"
.end annotation


# static fields
.field public static final ACTION_QUICK_CONTACT:Ljava/lang/String; = "com.oppo.callsLog.quick.quickcontact"

.field public static final EXTRA_EXCLUDE_MIMES:Ljava/lang/String; = "exclude_mimes"

.field public static final EXTRA_INCONTACTS:Ljava/lang/String; = "inContacts"

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NUMBER:Ljava/lang/String; = "number"

.field public static final EXTRA_TARGET_RECT:Ljava/lang/String; = "target_rect"

.field public static final MODE_LARGE:I = 0x3

.field public static final MODE_MEDIUM:I = 0x2

.field public static final MODE_SMALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;I[Ljava/lang/String;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "num"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;
    .param p5, "personId"    # J

    .prologue
    .line 347
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.android.QuickContactActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v1, "target_rect"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 351
    const-string v1, "mode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    const-string v1, "exclude_mimes"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v1, "inContacts"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 355
    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I[Ljava/lang/String;J)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "num"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;
    .param p5, "personId"    # J

    .prologue
    .line 316
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 317
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 319
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 320
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 321
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 322
    iget v1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 323
    iget v1, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    .line 325
    invoke-static/range {v1 .. v7}, Lcom/oppo/widget/OppoQuickContactBadge$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 326
    return-void
.end method
