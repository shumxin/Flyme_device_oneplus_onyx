.class public interface abstract Lcom/meizu/media/camera/ui/TouchAutoFocusUI;
.super Ljava/lang/Object;
.source "TouchAutoFocusUI.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final EVENT_TOUCH_AF:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "TouchAF"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/meizu/media/camera/ui/TouchAutoFocusUI;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/ui/TouchAutoFocusUI;->EVENT_TOUCH_AF:Lcom/oneplus/base/EventKey;

    return-void
.end method


# virtual methods
.method public abstract disableTouchLockFocus()Lcom/oneplus/base/Handle;
.end method

.method public abstract touchAutoFocus(FF)Lcom/oneplus/base/Handle;
.end method

.method public abstract touchAutoFocus(Landroid/graphics/PointF;)Lcom/oneplus/base/Handle;
.end method