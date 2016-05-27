.class public Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
.super Ljava/lang/Object;
.source "OppoThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loppo/content/res/OppoThemeZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeFileInfo"
.end annotation


# instance fields
.field public mDensity:I

.field public mInput:Ljava/io/InputStream;

.field public mSize:J

.field final synthetic this$0:Loppo/content/res/OppoThemeZipFile;


# direct methods
.method constructor <init>(Loppo/content/res/OppoThemeZipFile;Ljava/io/InputStream;J)V
    .locals 1
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "size"    # J

    .prologue
    .line 469
    iput-object p1, p0, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->this$0:Loppo/content/res/OppoThemeZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p2, p0, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 471
    iput-wide p3, p0, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mSize:J

    .line 472
    return-void
.end method
