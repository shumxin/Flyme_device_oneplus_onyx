.class public Landroid/content/res/OppoResourceHelper;
.super Ljava/lang/Object;
.source "OppoResourceHelper.java"


# static fields
.field public static final OPPO_RES_PATH:Ljava/lang/String; = "/system/framework/oppo-framework-res.apk"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .locals 1
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 29
    const-string v0, "/system/framework/oppo-framework-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 30
    return-void
.end method
