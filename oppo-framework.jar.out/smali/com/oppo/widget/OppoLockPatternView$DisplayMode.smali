.class public final enum Lcom/oppo/widget/OppoLockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "OppoLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/widget/OppoLockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

.field public static final enum Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

.field public static final enum Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

.field public static final enum FingerprintMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

.field public static final enum FingerprintNoMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

.field public static final enum Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    new-instance v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    const-string v1, "Correct"

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 242
    new-instance v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    const-string v1, "Animate"

    invoke-direct {v0, v1, v3}, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 247
    new-instance v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    const-string v1, "Wrong"

    invoke-direct {v0, v1, v4}, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 253
    new-instance v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    const-string v1, "FingerprintMatch"

    invoke-direct {v0, v1, v5}, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 258
    new-instance v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    const-string v1, "FingerprintNoMatch"

    invoke-direct {v0, v1, v6}, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 232
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->$VALUES:[Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/widget/OppoLockPatternView$DisplayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 232
    const-class v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/oppo/widget/OppoLockPatternView$DisplayMode;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->$VALUES:[Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    invoke-virtual {v0}, [Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    return-object v0
.end method
