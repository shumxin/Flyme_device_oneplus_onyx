.class public final enum Lcom/oppo/widget/Oppo3DGLView$EventCode;
.super Ljava/lang/Enum;
.source "Oppo3DGLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/Oppo3DGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/widget/Oppo3DGLView$EventCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/widget/Oppo3DGLView$EventCode;

.field public static final enum EVENT_ENABLE_GET_TEXTURE:Lcom/oppo/widget/Oppo3DGLView$EventCode;

.field public static final enum EVENT_GET_TEXTURE:Lcom/oppo/widget/Oppo3DGLView$EventCode;

.field public static final enum EVENT_ITEM_CLICK:Lcom/oppo/widget/Oppo3DGLView$EventCode;

.field public static final enum EVENT_ITEM_ZOOM_IN:Lcom/oppo/widget/Oppo3DGLView$EventCode;

.field public static final enum EVENT_ITEM_ZOOM_OUT:Lcom/oppo/widget/Oppo3DGLView$EventCode;

.field public static final enum EVENT_PREPARE_ZOOM_IN:Lcom/oppo/widget/Oppo3DGLView$EventCode;

.field public static final enum EVENT_SCROLL_COMPLETE:Lcom/oppo/widget/Oppo3DGLView$EventCode;

.field public static final enum EVENT_SCROLL_ITEM_CHANGED:Lcom/oppo/widget/Oppo3DGLView$EventCode;

.field public static final enum EVENT_SCROLL_START:Lcom/oppo/widget/Oppo3DGLView$EventCode;


# instance fields
.field final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 292
    new-instance v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;

    const-string v1, "EVENT_SCROLL_START"

    invoke-direct {v0, v1, v4, v4}, Lcom/oppo/widget/Oppo3DGLView$EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_SCROLL_START:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    .line 297
    new-instance v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;

    const-string v1, "EVENT_SCROLL_ITEM_CHANGED"

    invoke-direct {v0, v1, v5, v5}, Lcom/oppo/widget/Oppo3DGLView$EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_SCROLL_ITEM_CHANGED:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    .line 302
    new-instance v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;

    const-string v1, "EVENT_SCROLL_COMPLETE"

    invoke-direct {v0, v1, v6, v6}, Lcom/oppo/widget/Oppo3DGLView$EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_SCROLL_COMPLETE:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    .line 307
    new-instance v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;

    const-string v1, "EVENT_ITEM_CLICK"

    invoke-direct {v0, v1, v7, v7}, Lcom/oppo/widget/Oppo3DGLView$EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_ITEM_CLICK:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    .line 312
    new-instance v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;

    const-string v1, "EVENT_GET_TEXTURE"

    invoke-direct {v0, v1, v8, v8}, Lcom/oppo/widget/Oppo3DGLView$EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_GET_TEXTURE:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    .line 317
    new-instance v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;

    const-string v1, "EVENT_PREPARE_ZOOM_IN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/widget/Oppo3DGLView$EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_PREPARE_ZOOM_IN:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    .line 322
    new-instance v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;

    const-string v1, "EVENT_ITEM_ZOOM_IN"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/widget/Oppo3DGLView$EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_ITEM_ZOOM_IN:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    .line 327
    new-instance v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;

    const-string v1, "EVENT_ITEM_ZOOM_OUT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/widget/Oppo3DGLView$EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_ITEM_ZOOM_OUT:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    .line 332
    new-instance v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;

    const-string v1, "EVENT_ENABLE_GET_TEXTURE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/widget/Oppo3DGLView$EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_ENABLE_GET_TEXTURE:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    .line 287
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oppo/widget/Oppo3DGLView$EventCode;

    sget-object v1, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_SCROLL_START:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_SCROLL_ITEM_CHANGED:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_SCROLL_COMPLETE:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_ITEM_CLICK:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_GET_TEXTURE:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_PREPARE_ZOOM_IN:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_ITEM_ZOOM_IN:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_ITEM_ZOOM_OUT:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_ENABLE_GET_TEXTURE:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;->$VALUES:[Lcom/oppo/widget/Oppo3DGLView$EventCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 334
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 335
    iput p3, p0, Lcom/oppo/widget/Oppo3DGLView$EventCode;->code:I

    .line 336
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/widget/Oppo3DGLView$EventCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    const-class v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;

    return-object v0
.end method

.method public static values()[Lcom/oppo/widget/Oppo3DGLView$EventCode;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/oppo/widget/Oppo3DGLView$EventCode;->$VALUES:[Lcom/oppo/widget/Oppo3DGLView$EventCode;

    invoke-virtual {v0}, [Lcom/oppo/widget/Oppo3DGLView$EventCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/widget/Oppo3DGLView$EventCode;

    return-object v0
.end method
