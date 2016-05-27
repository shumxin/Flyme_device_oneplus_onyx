.class final Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;
.super Ljava/lang/Object;
.source "OppoExtraPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loppo/content/pm/OppoExtraPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WhiteListEntity"
.end annotation


# instance fields
.field pkgName:Ljava/lang/String;

.field signatures:[Landroid/content/pm/Signature;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Landroid/content/pm/Signature;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "signature"    # [Landroid/content/pm/Signature;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;->pkgName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;->signatures:[Landroid/content/pm/Signature;

    .line 52
    return-void
.end method
