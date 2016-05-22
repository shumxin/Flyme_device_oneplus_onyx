.class public interface abstract Lcom/oneplus/gallery/GalleryDatabase;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"


# static fields
.field public static final COLUMN_MEDIA_ID:Ljava/lang/String; = "media_id"

.field public static final COLUMN_ONEPLUS_FLAGS:Ljava/lang/String; = "oneplus_flags"

.field public static final GALLERY_MEDIA_URI:Landroid/net/Uri;

.field public static final ONEPLUSP_FLAG_COVER:I = 0x10000

.field public static final ONEPLUS_FLAG_BURST:I = 0x20000

.field public static final ONEPLUS_FLAG_FAVORITE:I = 0x10

.field public static final ONEPLUS_FLAG_PANORAMA:I = 0x2

.field public static final ONEPLUS_FLAG_SELFIE:I = 0x1

.field public static final ONEPLUS_FLAG_SLOW_MOTION:I = 0x4

.field public static final ONEPLUS_FLAG_TIME_LAPSE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "content://oneplus.gallery/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/GalleryDatabase;->GALLERY_MEDIA_URI:Landroid/net/Uri;

    return-void
.end method
