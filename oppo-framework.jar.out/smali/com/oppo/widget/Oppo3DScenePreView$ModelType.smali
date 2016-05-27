.class public final enum Lcom/oppo/widget/Oppo3DScenePreView$ModelType;
.super Ljava/lang/Enum;
.source "Oppo3DScenePreView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/Oppo3DScenePreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/widget/Oppo3DScenePreView$ModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

.field public static final enum MODEL_DEFAULT:Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

.field public static final enum MODEL_MUSIC:Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

.field private static sModelTypes:[Lcom/oppo/widget/Oppo3DScenePreView$ModelType;


# instance fields
.field final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 386
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    const-string v1, "MODEL_DEFAULT"

    invoke-direct {v0, v1, v2, v2}, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->MODEL_DEFAULT:Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    .line 388
    new-instance v0, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    const-string v1, "MODEL_MUSIC"

    invoke-direct {v0, v1, v3, v3}, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->MODEL_MUSIC:Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    .line 384
    new-array v0, v4, [Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    sget-object v1, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->MODEL_DEFAULT:Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->MODEL_MUSIC:Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->$VALUES:[Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    .line 400
    new-array v0, v4, [Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    sget-object v1, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->MODEL_DEFAULT:Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->MODEL_MUSIC:Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->sModelTypes:[Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 390
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 391
    iput p3, p0, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->type:I

    .line 392
    return-void
.end method

.method public static nativeToType(I)Lcom/oppo/widget/Oppo3DScenePreView$ModelType;
    .locals 1
    .param p0, "ni"    # I

    .prologue
    .line 397
    sget-object v0, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->sModelTypes:[Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/widget/Oppo3DScenePreView$ModelType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 384
    const-class v0, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    return-object v0
.end method

.method public static values()[Lcom/oppo/widget/Oppo3DScenePreView$ModelType;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->$VALUES:[Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    invoke-virtual {v0}, [Lcom/oppo/widget/Oppo3DScenePreView$ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/widget/Oppo3DScenePreView$ModelType;

    return-object v0
.end method
