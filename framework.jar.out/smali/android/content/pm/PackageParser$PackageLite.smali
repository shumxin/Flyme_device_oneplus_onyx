.class public Landroid/content/pm/PackageParser$PackageLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageLite"
.end annotation


# instance fields
.field public final baseCodePath:Ljava/lang/String;

.field public final baseRevisionCode:I

.field public final codePath:Ljava/lang/String;

.field public final coreApp:Z

.field public final installLocation:I

.field public final multiArch:Z

.field public final packageName:Ljava/lang/String;

.field public final splitCodePaths:[Ljava/lang/String;

.field public final splitNames:[Ljava/lang/String;

.field public final splitRevisionCodes:[I

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "baseApk"    # Landroid/content/pm/PackageParser$ApkLite;
    .param p3, "splitNames"    # [Ljava/lang/String;
    .param p4, "splitCodePaths"    # [Ljava/lang/String;
    .param p5, "splitRevisionCodes"    # [I

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 276
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    .line 277
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    .line 278
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 279
    iput-object p3, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    .line 280
    iput-object p1, p0, Landroid/content/pm/PackageParser$PackageLite;->codePath:Ljava/lang/String;

    .line 281
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    .line 282
    iput-object p4, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    .line 283
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->baseRevisionCode:I

    .line 284
    iput-object p5, p0, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    .line 285
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    .line 286
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    .line 287
    return-void
.end method


# virtual methods
.method public getAllCodePaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 295
    :cond_0
    return-object v0
.end method