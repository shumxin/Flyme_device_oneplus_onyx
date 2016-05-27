.class public interface abstract Lcom/oppo/widget/OppoMenuItem;
.super Ljava/lang/Object;
.source "OppoMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field public static final MENU_ITEM_DEFAULT_WEIGHT:F = 1.0f

.field public static final SCROLL_DOWN_AFTER_CLICK_DELAYED:I = 0x1

.field public static final SCROLL_DOWN_AFTER_CLICK_INSTANT:I = 0x2

.field public static final SCROLL_DOWN_AFTER_CLICK_NEVER:I = 0x3

.field public static final SCROLL_DOWN_AFTER_CLICK_NORMAL:I


# virtual methods
.method public abstract getScrollDownType()I
.end method

.method public abstract getWeight()F
.end method

.method public abstract setItemId(I)Landroid/view/MenuItem;
.end method

.method public abstract setScrollDownType(I)Lcom/oppo/widget/OppoMenuItem;
.end method

.method public abstract setWeight(F)Lcom/oppo/widget/OppoMenuItem;
.end method

.method public abstract showsTextAsAction()Z
.end method
