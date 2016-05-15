.class public final enum Landroid/service/theme/MaterialThemeManager$COLOR;
.super Ljava/lang/Enum;
.source "MaterialThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/theme/MaterialThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COLOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/service/theme/MaterialThemeManager$COLOR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/service/theme/MaterialThemeManager$COLOR;

.field public static final enum CHAMPAGNE:Landroid/service/theme/MaterialThemeManager$COLOR;

.field public static final enum FLAMINGO:Landroid/service/theme/MaterialThemeManager$COLOR;

.field public static final enum GRAY:Landroid/service/theme/MaterialThemeManager$COLOR;

.field public static final enum GREEN:Landroid/service/theme/MaterialThemeManager$COLOR;

.field public static final enum PEAR:Landroid/service/theme/MaterialThemeManager$COLOR;

.field public static final enum PINK:Landroid/service/theme/MaterialThemeManager$COLOR;

.field public static final enum PURPLE:Landroid/service/theme/MaterialThemeManager$COLOR;

.field public static final enum TURQUOISE:Landroid/service/theme/MaterialThemeManager$COLOR;

.field public static final enum UNKNOWN:Landroid/service/theme/MaterialThemeManager$COLOR;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    new-instance v0, Landroid/service/theme/MaterialThemeManager$COLOR;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Landroid/service/theme/MaterialThemeManager$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/service/theme/MaterialThemeManager$COLOR;->UNKNOWN:Landroid/service/theme/MaterialThemeManager$COLOR;

    .line 119
    new-instance v0, Landroid/service/theme/MaterialThemeManager$COLOR;

    const-string v1, "GRAY"

    invoke-direct {v0, v1, v4}, Landroid/service/theme/MaterialThemeManager$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/service/theme/MaterialThemeManager$COLOR;->GRAY:Landroid/service/theme/MaterialThemeManager$COLOR;

    .line 120
    new-instance v0, Landroid/service/theme/MaterialThemeManager$COLOR;

    const-string v1, "CHAMPAGNE"

    invoke-direct {v0, v1, v5}, Landroid/service/theme/MaterialThemeManager$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/service/theme/MaterialThemeManager$COLOR;->CHAMPAGNE:Landroid/service/theme/MaterialThemeManager$COLOR;

    .line 121
    new-instance v0, Landroid/service/theme/MaterialThemeManager$COLOR;

    const-string v1, "PEAR"

    invoke-direct {v0, v1, v6}, Landroid/service/theme/MaterialThemeManager$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/service/theme/MaterialThemeManager$COLOR;->PEAR:Landroid/service/theme/MaterialThemeManager$COLOR;

    .line 122
    new-instance v0, Landroid/service/theme/MaterialThemeManager$COLOR;

    const-string v1, "GREEN"

    invoke-direct {v0, v1, v7}, Landroid/service/theme/MaterialThemeManager$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/service/theme/MaterialThemeManager$COLOR;->GREEN:Landroid/service/theme/MaterialThemeManager$COLOR;

    .line 123
    new-instance v0, Landroid/service/theme/MaterialThemeManager$COLOR;

    const-string v1, "PURPLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/service/theme/MaterialThemeManager$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/service/theme/MaterialThemeManager$COLOR;->PURPLE:Landroid/service/theme/MaterialThemeManager$COLOR;

    .line 124
    new-instance v0, Landroid/service/theme/MaterialThemeManager$COLOR;

    const-string v1, "TURQUOISE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/service/theme/MaterialThemeManager$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/service/theme/MaterialThemeManager$COLOR;->TURQUOISE:Landroid/service/theme/MaterialThemeManager$COLOR;

    .line 125
    new-instance v0, Landroid/service/theme/MaterialThemeManager$COLOR;

    const-string v1, "PINK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/service/theme/MaterialThemeManager$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/service/theme/MaterialThemeManager$COLOR;->PINK:Landroid/service/theme/MaterialThemeManager$COLOR;

    .line 126
    new-instance v0, Landroid/service/theme/MaterialThemeManager$COLOR;

    const-string v1, "FLAMINGO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/service/theme/MaterialThemeManager$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/service/theme/MaterialThemeManager$COLOR;->FLAMINGO:Landroid/service/theme/MaterialThemeManager$COLOR;

    .line 117
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/service/theme/MaterialThemeManager$COLOR;

    sget-object v1, Landroid/service/theme/MaterialThemeManager$COLOR;->UNKNOWN:Landroid/service/theme/MaterialThemeManager$COLOR;

    aput-object v1, v0, v3

    sget-object v1, Landroid/service/theme/MaterialThemeManager$COLOR;->GRAY:Landroid/service/theme/MaterialThemeManager$COLOR;

    aput-object v1, v0, v4

    sget-object v1, Landroid/service/theme/MaterialThemeManager$COLOR;->CHAMPAGNE:Landroid/service/theme/MaterialThemeManager$COLOR;

    aput-object v1, v0, v5

    sget-object v1, Landroid/service/theme/MaterialThemeManager$COLOR;->PEAR:Landroid/service/theme/MaterialThemeManager$COLOR;

    aput-object v1, v0, v6

    sget-object v1, Landroid/service/theme/MaterialThemeManager$COLOR;->GREEN:Landroid/service/theme/MaterialThemeManager$COLOR;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/service/theme/MaterialThemeManager$COLOR;->PURPLE:Landroid/service/theme/MaterialThemeManager$COLOR;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/service/theme/MaterialThemeManager$COLOR;->TURQUOISE:Landroid/service/theme/MaterialThemeManager$COLOR;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/service/theme/MaterialThemeManager$COLOR;->PINK:Landroid/service/theme/MaterialThemeManager$COLOR;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/service/theme/MaterialThemeManager$COLOR;->FLAMINGO:Landroid/service/theme/MaterialThemeManager$COLOR;

    aput-object v2, v0, v1

    sput-object v0, Landroid/service/theme/MaterialThemeManager$COLOR;->$VALUES:[Landroid/service/theme/MaterialThemeManager$COLOR;

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
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/service/theme/MaterialThemeManager$COLOR;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const-class v0, Landroid/service/theme/MaterialThemeManager$COLOR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/service/theme/MaterialThemeManager$COLOR;

    return-object v0
.end method

.method public static values()[Landroid/service/theme/MaterialThemeManager$COLOR;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Landroid/service/theme/MaterialThemeManager$COLOR;->$VALUES:[Landroid/service/theme/MaterialThemeManager$COLOR;

    invoke-virtual {v0}, [Landroid/service/theme/MaterialThemeManager$COLOR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/theme/MaterialThemeManager$COLOR;

    return-object v0
.end method
