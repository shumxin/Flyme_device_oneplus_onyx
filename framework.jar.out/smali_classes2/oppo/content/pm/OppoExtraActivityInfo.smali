.class public Loppo/content/pm/OppoExtraActivityInfo;
.super Ljava/lang/Object;
.source "OppoExtraActivityInfo.java"


# static fields
.field public static final CONFIG_NEW_SKIN_MASK:I = 0x9000000

.field public static final CONFIG_NEW_THEME_CHANGED:I = 0x9000000

.field public static final CONFIG_OLD_SKIN_MASK:I = 0x8000000

.field public static final CONFIG_OLD_THEME_CHANGED:I = 0x8000000

.field private static final TAG:Ljava/lang/String; = "OppoExtraActivityInfo"


# instance fields
.field private final debug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Loppo/content/pm/OppoExtraActivityInfo;->debug:Z

    .line 34
    return-void
.end method
