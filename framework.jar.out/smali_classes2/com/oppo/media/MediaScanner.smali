.class public Lcom/oppo/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/media/MediaScanner$WplHandler;,
        Lcom/oppo/media/MediaScanner$MediaBulkDeleter;,
        Lcom/oppo/media/MediaScanner$MyMediaScannerClient;,
        Lcom/oppo/media/MediaScanner$PlaylistEntry;,
        Lcom/oppo/media/MediaScanner$FileEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final ENABLE_FILES_CACHE:Z = true

.field private static final ENABLE_FILES_CACHE_FIRST_SCAN:Z = true

.field private static final ENABLE_FILES_CACHE_SECOND_SCAN:Z = true

.field private static final ENABLE_IGNORE_NOMEDIA:Z = false

.field private static final ENABLE_MULTI_THREAD:Z = false

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final LOG:Z

.field private static final MULTI_THREAD_FOR_AUDIO:Z = true

.field private static final MULTI_THREAD_FOR_IMAGE:Z = false

.field private static final MULTI_THREAD_FOR_VIDEO:Z = true

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final MYLOG:Z = false

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static final THREAD_POOL_ALIVE_TIME:I = 0x1e

.field private static final THREAD_POOL_CORE_SIZE:I = 0x0

.field private static final THREAD_POOL_MAX_SIZE:I = 0x2

.field private static final sKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sPrimarySdPath:Ljava/lang/String;

.field private static sSecondarySdPath:Ljava/lang/String;


# instance fields
.field private mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private final mClient:Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationFilenameSIM2:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultNotificationSetSIM2:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneFilenameSIM2:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDefaultRingtoneSetSIM2:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mExternalIsEmulated:Z

.field private final mExternalStoragePath:Ljava/lang/String;

.field private mFilesCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oppo/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesUri:Landroid/net/Uri;

.field private mFilesUriNoNotify:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mIsBreaking:Z

.field private mIsScanSingleFile:Z

.field private mLocale:Ljava/lang/String;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMp3Retriver:Landroid/media/MediaMetadataRetriever;

.field private mMtpObjectHandle:I

.field private mNativeContext:I

.field private mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

.field private mOriginalCount:I

.field private mPackageName:Ljava/lang/String;

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mRecursionDepth:I

.field private mScanFlag:I

.field private mScanningDirectory:Ljava/lang/String;

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;

.field private mWasEmptyPriorToScan:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v5

    const-string v1, "date_modified"

    aput-object v1, v0, v2

    sput-object v0, Lcom/oppo/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 148
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 157
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "playlist_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 171
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v3

    const-string v1, "Classic Rock"

    aput-object v1, v0, v4

    const-string v1, "Country"

    aput-object v1, v0, v5

    const-string v1, "Dance"

    aput-object v1, v0, v2

    const-string v1, "Disco"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Britpop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "JPop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 375
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oppo/media/MediaScanner;->LOG:Z

    .line 2318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    .line 2322
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "album"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2323
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "artist"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "albumartist"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "composer"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2326
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "compilation"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2328
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "year"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2329
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "genre"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2330
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "tracknumber"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "width"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2332
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "height"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "title"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2334
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "isdrm"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2336
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-boolean v1, p0, Lcom/oppo/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 374
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 410
    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 467
    new-instance v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v0, p0, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;-><init>(Lcom/oppo/media/MediaScanner;Lcom/oppo/media/MediaScanner$1;)V

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mClient:Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    .line 2342
    iput v1, p0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    .line 2343
    iput-boolean v1, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSetSIM2:Z

    .line 2344
    iput-boolean v1, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetSIM2:Z

    .line 2365
    iput-boolean v1, p0, Lcom/oppo/media/MediaScanner;->mIsBreaking:Z

    .line 2366
    iput-boolean v1, p0, Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z

    .line 2367
    iput v1, p0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    .line 2368
    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 2369
    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 420
    iput-object p1, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 423
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 425
    invoke-direct {p0}, Lcom/oppo/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 427
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 428
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mExternalIsEmulated:Z

    .line 433
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/os/OppoUsbEnvironment;->isExternalSDRemoved(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/os/OppoUsbEnvironment;->getInternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/media/MediaScanner;->sPrimarySdPath:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    .line 440
    :goto_0
    sget-boolean v0, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v0, :cond_0

    .line 441
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPrimarySdPath ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/media/MediaScanner;->sPrimarySdPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSecondarySdPath ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/media/MediaScanner;->sPrimarySdPath:Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/os/OppoUsbEnvironment;->getInternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p0}, Lcom/oppo/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oppo/media/MediaScanner;)Landroid/content/IContentProvider;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mExternalIsEmulated:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oppo/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/media/MediaScannerClient;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/oppo/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oppo/media/MediaScanner;)Landroid/media/MediaInserter;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/oppo/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/oppo/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetSIM2:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/oppo/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetSIM2:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/oppo/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSetSIM2:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/oppo/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSetSIM2:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/oppo/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/oppo/media/MediaScanner;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/oppo/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/oppo/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Landroid/drm/DrmManagerClient;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/oppo/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/oppo/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/media/MediaScanner;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/oppo/media/MediaScanner;->LOG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z

    return v0
.end method

.method static synthetic access$602(Lcom/oppo/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$800(Lcom/oppo/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/media/MediaScanner;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 137
    iget v0, p0, Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2042
    new-instance v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/oppo/media/MediaScanner$PlaylistEntry;-><init>(Lcom/oppo/media/MediaScanner$1;)V

    .line 2044
    .local v1, "entry":Lcom/oppo/media/MediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2045
    .local v2, "entryLength":I
    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2048
    :cond_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 2063
    :goto_1
    return-void

    .line 2049
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2053
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2054
    .local v0, "ch1":C
    const/16 v5, 0x2f

    if-eq v0, v5, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_4

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4

    :cond_3
    move v3, v4

    .line 2057
    .local v3, "fullPath":Z
    :cond_4
    if-nez v3, :cond_5

    .line 2058
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2059
    :cond_5
    iput-object p1, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 2062
    iget-object v4, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private checkOppoDefaultValue(Ljava/lang/String;)V
    .locals 14
    .param p1, "strTag"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2651
    iget-object v1, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2652
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 2653
    .local v7, "defaultFileName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2654
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 2655
    .local v8, "id":I
    const/4 v10, 0x0

    .line 2656
    .local v10, "uriDatabases":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 2658
    .local v11, "uriSettings":Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 2659
    const-string v1, "oppo_default_notification"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2660
    iget-object v7, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 2672
    :cond_0
    :goto_0
    if-nez v7, :cond_6

    .line 2673
    const-string v1, "MediaScanner"

    const-string v2, "checkOppoDefaultValue() strTag=%s is invalid."

    new-array v3, v13, [Ljava/lang/Object;

    aput-object p1, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    :cond_1
    :goto_1
    return-void

    .line 2661
    :cond_2
    const-string v1, "oppo_default_notification_sim2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2662
    iget-object v7, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;

    goto :goto_0

    .line 2663
    :cond_3
    const-string v1, "oppo_default_ringtone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2664
    iget-object v7, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    goto :goto_0

    .line 2665
    :cond_4
    const-string v1, "oppo_default_ringtone_sim2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2666
    iget-object v7, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;

    goto :goto_0

    .line 2667
    :cond_5
    const-string v1, "oppo_default_alarm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2668
    iget-object v7, p0, Lcom/oppo/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    goto :goto_0

    .line 2676
    :cond_6
    sget-boolean v1, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v1, :cond_7

    .line 2681
    :cond_7
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    const-string v3, "_display_name=?"

    new-array v4, v13, [Ljava/lang/String;

    aput-object v7, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2686
    if-eqz v6, :cond_9

    .line 2687
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 2688
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2689
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2690
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v8

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 2692
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2696
    :cond_9
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2697
    .local v9, "strTemp":Ljava/lang/String;
    if-eqz v9, :cond_a

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2698
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 2700
    :cond_a
    sget-boolean v1, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v1, :cond_b

    .line 2701
    const-string v1, "MediaScanner"

    const-string v2, "checkOppoDefaultValue() uriDatabases=%s, uriSettings=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v10, v3, v12

    aput-object v11, v3, v13

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    :cond_b
    if-nez v10, :cond_c

    .line 2705
    if-eqz v11, :cond_1

    .line 2706
    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 2709
    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual {v11, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2710
    :cond_d
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1
.end method

.method private checkOppoDefaultValues()V
    .locals 6

    .prologue
    .line 2637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2638
    .local v0, "beginTime":J
    const-string v4, "oppo_default_notification"

    invoke-direct {p0, v4}, Lcom/oppo/media/MediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2639
    const-string v4, "oppo_default_notification_sim2"

    invoke-direct {p0, v4}, Lcom/oppo/media/MediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2640
    const-string v4, "oppo_default_ringtone"

    invoke-direct {p0, v4}, Lcom/oppo/media/MediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2641
    const-string v4, "oppo_default_ringtone_sim2"

    invoke-direct {p0, v4}, Lcom/oppo/media/MediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2642
    const-string v4, "oppo_default_alarm"

    invoke-direct {p0, v4}, Lcom/oppo/media/MediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 2644
    .local v2, "timeCost":J
    sget-boolean v4, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v4, :cond_0

    .line 2647
    :cond_0
    return-void
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "directories"    # [Ljava/lang/String;

    .prologue
    .line 1549
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1550
    aget-object v0, p2, v1

    .line 1551
    .local v0, "directory":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1552
    const/4 v2, 0x1

    .line 1555
    .end local v0    # "directory":Ljava/lang/String;
    :goto_1
    return v2

    .line 1549
    .restart local v0    # "directory":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1555
    .end local v0    # "directory":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 4
    .param p1, "volumeName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1684
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1686
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1687
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1688
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1689
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1690
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1691
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "nonotify"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    .line 1693
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1695
    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner;->mProcessPlaylists:Z

    .line 1696
    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner;->mProcessGenres:Z

    .line 1697
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1699
    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 1701
    :cond_0
    return-void
.end method

.method private isDrmEnabled()Z
    .locals 2

    .prologue
    .line 470
    const-string v1, "drm.service.enabled"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1824
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1825
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    .line 1854
    :cond_0
    :goto_0
    return v1

    .line 1830
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1831
    .local v7, "lastSlash":I
    if-ltz v7, :cond_3

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1833
    add-int/lit8 v0, v7, 0x1

    const-string v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1840
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1841
    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1845
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 1846
    .local v8, "length":I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_2

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-ne v8, v9, :cond_3

    add-int/lit8 v2, v7, 0x1

    const-string v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .end local v8    # "length":I
    :cond_3
    move v1, v4

    .line 1854
    goto :goto_0
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1858
    if-nez p0, :cond_0

    .line 1897
    :goto_0
    return v5

    .line 1859
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1860
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".nomedia"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1861
    .local v0, "curDir":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    .line 1862
    goto :goto_0

    .line 1866
    .end local v0    # "curDir":Ljava/lang/String;
    :cond_1
    const-string v7, "/."

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    move v5, v6

    goto :goto_0

    .line 1870
    :cond_2
    const/4 v3, 0x1

    .line 1871
    .local v3, "offset":I
    :goto_1
    if-ltz v3, :cond_6

    .line 1872
    const/16 v7, 0x2f

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1873
    .local v4, "slashIndex":I
    if-le v4, v3, :cond_4

    .line 1874
    add-int/lit8 v4, v4, 0x1

    .line 1875
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".nomedia"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1876
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1884
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1886
    .local v1, "dirPath":Ljava/lang/String;
    sget-object v7, Lcom/oppo/media/MediaScanner;->sPrimarySdPath:Ljava/lang/String;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/oppo/media/MediaScanner;->sPrimarySdPath:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    sget-object v7, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    if-eqz v7, :cond_5

    sget-object v7, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1895
    .end local v1    # "dirPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    move v3, v4

    .line 1896
    goto :goto_1

    .restart local v1    # "dirPath":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    :cond_5
    move v5, v6

    .line 1890
    goto/16 :goto_0

    .line 1897
    .end local v1    # "dirPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "slashIndex":I
    :cond_6
    invoke-static {p0}, Lcom/oppo/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method private isOtherFiles(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2716
    if-nez p1, :cond_1

    .line 2727
    :cond_0
    :goto_0
    return v1

    .line 2719
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 2720
    .local v0, "upFileName":Ljava/lang/String;
    const-string v2, ".APK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".CSV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".ICS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".VCS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".VCF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2725
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 7
    .param p1, "rowId"    # J
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const v6, 0x7fffffff

    .line 2018
    iget-object v5, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2019
    .local v3, "len":I
    const/4 v0, 0x1

    .line 2020
    .local v0, "done":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2021
    iget-object v5, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;

    .line 2022
    .local v1, "entry":Lcom/oppo/media/MediaScanner$PlaylistEntry;
    iget v5, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-ne v5, v6, :cond_1

    .line 2020
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2025
    :cond_1
    const/4 v0, 0x0

    .line 2026
    iget-object v5, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2027
    iput-wide p1, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2028
    iput v6, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2032
    :cond_2
    iget-object v5, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Lcom/oppo/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2033
    .local v4, "matchLength":I
    iget v5, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v4, v5, :cond_0

    .line 2034
    iput-wide p1, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2035
    iput v4, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2038
    .end local v1    # "entry":Lcom/oppo/media/MediaScanner$PlaylistEntry;
    .end local v4    # "matchLength":I
    :cond_3
    return v0
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;

    .prologue
    .line 1991
    const/4 v10, 0x0

    .line 1992
    .local v10, "result":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1993
    .local v8, "end1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 1995
    .local v9, "end2":I
    :goto_0
    if-lez v8, :cond_0

    if-lez v9, :cond_0

    .line 1996
    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 1997
    .local v11, "slash1":I
    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 1998
    .local v12, "slash2":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 1999
    .local v6, "backSlash1":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 2000
    .local v7, "backSlash2":I
    if-le v11, v6, :cond_1

    move v2, v11

    .line 2001
    .local v2, "start1":I
    :goto_1
    if-le v12, v7, :cond_2

    move v4, v12

    .line 2002
    .local v4, "start2":I
    :goto_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 2003
    :goto_3
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 2004
    :goto_4
    sub-int v5, v8, v2

    .line 2005
    .local v5, "length":I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_5

    .line 2013
    .end local v2    # "start1":I
    .end local v4    # "start2":I
    .end local v5    # "length":I
    .end local v6    # "backSlash1":I
    .end local v7    # "backSlash2":I
    .end local v11    # "slash1":I
    .end local v12    # "slash2":I
    :cond_0
    return v10

    .restart local v6    # "backSlash1":I
    .restart local v7    # "backSlash2":I
    .restart local v11    # "slash1":I
    .restart local v12    # "slash2":I
    :cond_1
    move v2, v6

    .line 2000
    goto :goto_1

    .restart local v2    # "start1":I
    :cond_2
    move v4, v7

    .line 2001
    goto :goto_2

    .line 2002
    .restart local v4    # "start2":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2003
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2006
    .restart local v5    # "length":I
    :cond_5
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2007
    add-int/lit8 v10, v10, 0x1

    .line 2008
    add-int/lit8 v8, v2, -0x1

    .line 2009
    add-int/lit8 v9, v4, -0x1

    .line 2011
    goto :goto_0
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 3
    .param p1, "directories"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1656
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v0, :cond_0

    .line 1657
    invoke-direct {p0}, Lcom/oppo/media/MediaScanner;->processPlayLists()V

    .line 1660
    :cond_0
    iget v0, p0, Lcom/oppo/media/MediaScanner;->mOriginalCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1661
    invoke-direct {p0}, Lcom/oppo/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1664
    :cond_1
    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1668
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 1669
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1670
    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    .line 1672
    :cond_2
    invoke-direct {p0}, Lcom/oppo/media/MediaScanner;->recoverImageCshotID()V

    .line 1674
    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1675
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 39
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prescanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1337
    const/16 v25, 0x0

    .line 1338
    .local v25, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1339
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1343
    .local v7, "selectionArgs":[Ljava/lang/String;
    sget-boolean v2, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v2, :cond_0

    .line 1347
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    if-nez v2, :cond_b

    .line 1348
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    .line 1355
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v2, :cond_c

    .line 1356
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1361
    :goto_1
    if-eqz p1, :cond_d

    .line 1363
    const-string v6, "_id>? AND _data=?"

    .line 1365
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .end local v7    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v7, v2

    const/4 v2, 0x1

    aput-object p1, v7, v2

    .line 1414
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v24

    .line 1415
    .local v24, "builder":Landroid/net/Uri$Builder;
    const-string v2, "deletedata"

    const-string v3, "false"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1416
    new-instance v26, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-direct {v0, v2, v3, v5}, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1417
    .local v26, "deleter":Lcom/oppo/media/MediaScanner$MediaBulkDeleter;
    const/16 v38, -0x1

    .line 1418
    .local v38, "position":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/os/OppoUsbEnvironment;->getInternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v31

    .line 1419
    .local v31, "internalSd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    .line 1420
    .local v29, "externalSd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1421
    sget-boolean v2, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v2, :cond_2

    .line 1422
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " prescan internalsd ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " externalsd ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " scanning "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1426
    const/16 v38, 0x0

    .line 1429
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1430
    const/16 v38, 0x1

    .line 1435
    :cond_4
    if-eqz p2, :cond_8

    .line 1440
    const-wide/high16 v34, -0x8000000000000000L

    .line 1441
    .local v34, "lastId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "check_hidden"

    const-string v5, "false"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v5, "1000"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1443
    .local v4, "limitUri":Landroid/net/Uri;
    if-ltz v38, :cond_5

    .line 1444
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "position"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1448
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oppo/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1450
    :cond_6
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v34

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 1451
    if-eqz v25, :cond_7

    .line 1452
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1453
    const/16 v25, 0x0

    .line 1455
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    sget-object v5, Lcom/oppo/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id"

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v25

    .line 1457
    if-nez v25, :cond_15

    .line 1533
    .end local v4    # "limitUri":Landroid/net/Uri;
    .end local v34    # "lastId":J
    :cond_8
    if-eqz v25, :cond_9

    .line 1534
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1536
    :cond_9
    invoke-virtual/range {v26 .. v26}, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1540
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/media/MediaScanner;->mOriginalCount:I

    .line 1541
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    sget-object v18, Lcom/oppo/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-interface/range {v15 .. v22}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v25

    .line 1542
    if-eqz v25, :cond_a

    .line 1543
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/media/MediaScanner;->mOriginalCount:I

    .line 1544
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1546
    :cond_a
    return-void

    .line 1350
    .end local v24    # "builder":Landroid/net/Uri$Builder;
    .end local v26    # "deleter":Lcom/oppo/media/MediaScanner$MediaBulkDeleter;
    .end local v29    # "externalSd":Ljava/lang/String;
    .end local v31    # "internalSd":Ljava/lang/String;
    .end local v38    # "position":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 1358
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 1367
    :cond_d
    const-string v6, "_id>?"

    .line 1368
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .end local v7    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v7, v2

    .line 1371
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    const/16 v23, 0x0

    .line 1372
    .local v23, "bAppended":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    if-eqz v2, :cond_1

    .line 1373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1374
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 1375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "media_type=2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1377
    const/16 v23, 0x1

    .line 1379
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_10

    .line 1380
    if-eqz v23, :cond_f

    .line 1381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1383
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "media_type=3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1385
    const/16 v23, 0x1

    .line 1387
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    .line 1388
    if-eqz v23, :cond_11

    .line 1389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1391
    :cond_11
    const/16 v23, 0x1

    .line 1392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "media_type=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1395
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_14

    .line 1396
    if-eqz v23, :cond_13

    .line 1397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1399
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_data LIKE \'%.apk\' OR _data LIKE \'%.csv\' OR _data LIKE \'%.vcf\' OR _data LIKE \'%.ics\' OR _data LIKE \'%.vcs\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1405
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 1461
    .end local v23    # "bAppended":Z
    .restart local v4    # "limitUri":Landroid/net/Uri;
    .restart local v24    # "builder":Landroid/net/Uri$Builder;
    .restart local v26    # "deleter":Lcom/oppo/media/MediaScanner$MediaBulkDeleter;
    .restart local v29    # "externalSd":Ljava/lang/String;
    .restart local v31    # "internalSd":Ljava/lang/String;
    .restart local v34    # "lastId":J
    .restart local v38    # "position":I
    :cond_15
    :try_start_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v36

    .line 1462
    .local v36, "num":I
    if-eqz v36, :cond_8

    .line 1465
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oppo/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1466
    :cond_16
    :goto_3
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1467
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1468
    .local v9, "rowId":J
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1469
    .local v11, "path":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1470
    .local v14, "format":I
    const/4 v2, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1471
    .local v12, "lastModified":J
    move-wide/from16 v34, v9

    .line 1472
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oppo/media/MediaScanner;->mIsBreaking:Z

    if-nez v2, :cond_6

    .line 1478
    if-eqz v11, :cond_16

    const-string v2, "/"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_16

    .line 1479
    const/16 v28, 0x0

    .line 1482
    .local v28, "exists":Z
    :try_start_2
    sget v2, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v11, v2}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v28

    .line 1487
    :goto_4
    if-nez v28, :cond_17

    :try_start_3
    invoke-static {v14}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1492
    invoke-static {v11}, Lcom/oppo/media/MediaFile;->getFileType(Ljava/lang/String;)Lcom/oppo/media/MediaFile$MediaFileType;

    move-result-object v33

    .line 1493
    .local v33, "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    if-nez v33, :cond_1a

    const/16 v30, 0x0

    .line 1495
    .local v30, "fileType":I
    :goto_5
    invoke-static/range {v30 .. v30}, Lcom/oppo/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1496
    move-object/from16 v0, v26

    invoke-virtual {v0, v9, v10}, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    .line 1497
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/.nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1498
    invoke-virtual/range {v26 .. v26}, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1499
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v37

    .line 1500
    .local v37, "parent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const-string v5, "unhide"

    const/4 v15, 0x0

    move-object/from16 v0, v37

    invoke-interface {v2, v3, v5, v0, v15}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1508
    .end local v30    # "fileType":I
    .end local v33    # "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    .end local v37    # "parent":Ljava/lang/String;
    :cond_17
    if-eqz v28, :cond_16

    .line 1509
    move-object/from16 v32, v11

    .line 1510
    .local v32, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oppo/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v2, :cond_18

    .line 1511
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    .line 1513
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1514
    new-instance v8, Lcom/oppo/media/MediaScanner$FileEntry;

    invoke-direct/range {v8 .. v14}, Lcom/oppo/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .line 1515
    .local v8, "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    sget-boolean v2, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v2, :cond_16

    goto/16 :goto_3

    .line 1483
    .end local v8    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    .end local v32    # "key":Ljava/lang/String;
    :catch_0
    move-exception v27

    .line 1484
    .local v27, "e1":Landroid/system/ErrnoException;
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " prescan Libcore.os.access failed "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " path ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 1533
    .end local v4    # "limitUri":Landroid/net/Uri;
    .end local v9    # "rowId":J
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "lastModified":J
    .end local v14    # "format":I
    .end local v27    # "e1":Landroid/system/ErrnoException;
    .end local v28    # "exists":Z
    .end local v36    # "num":I
    :catchall_0
    move-exception v2

    if-eqz v25, :cond_19

    .line 1534
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1536
    :cond_19
    invoke-virtual/range {v26 .. v26}, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;->flush()V

    throw v2

    .line 1493
    .restart local v4    # "limitUri":Landroid/net/Uri;
    .restart local v9    # "rowId":J
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "lastModified":J
    .restart local v14    # "format":I
    .restart local v28    # "exists":Z
    .restart local v33    # "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    .restart local v36    # "num":I
    :cond_1a
    :try_start_4
    move-object/from16 v0, v33

    iget v0, v0, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v30, v0

    goto/16 :goto_5

    .line 1520
    .end local v33    # "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    .restart local v32    # "key":Ljava/lang/String;
    :cond_1b
    sget-boolean v2, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v2, :cond_1c

    .line 1523
    :cond_1c
    move-object/from16 v0, v26

    invoke-virtual {v0, v9, v10}, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;->delete(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 12
    .param p1, "fileList"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "playlistUri"    # Landroid/net/Uri;

    .prologue
    .line 2066
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2067
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2068
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2069
    .local v6, "rowId":J
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2070
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v6, v7, v0}, Lcom/oppo/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2075
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "rowId":J
    :cond_1
    iget-object v8, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2076
    .local v5, "len":I
    const/4 v4, 0x0

    .line 2077
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 2078
    iget-object v8, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/media/MediaScanner$PlaylistEntry;

    .line 2079
    .local v2, "entry":Lcom/oppo/media/MediaScanner$PlaylistEntry;
    iget v8, v2, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v8, :cond_2

    .line 2081
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 2082
    const-string v8, "play_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2083
    const-string v8, "audio_id"

    iget-wide v10, v2, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2084
    iget-object v8, p0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v9, p0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-interface {v8, v9, p3, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2085
    add-int/lit8 v4, v4, 0x1

    .line 2077
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2086
    :catch_0
    move-exception v1

    .line 2087
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "MediaScanner"

    const-string v9, "RemoteException in MediaScanner.processCachedPlaylist()"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2093
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entry":Lcom/oppo/media/MediaScanner$PlaylistEntry;
    :goto_1
    return-void

    .line 2092
    :cond_3
    iget-object v8, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 21
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "client"    # Landroid/media/MediaScannerClient;

    .prologue
    .line 2382
    sget-boolean v2, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v2, :cond_0

    .line 2385
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oppo/media/MediaScanner;->mIsBreaking:Z

    if-eqz v2, :cond_2

    .line 2386
    const-string v2, "MediaScanner"

    const-string v4, " processDirectory is broken!!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    :cond_1
    :goto_0
    return-void

    .line 2390
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/oppo/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v9

    .line 2391
    .local v9, "noMedia":Z
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    if-eqz v2, :cond_3

    .line 2392
    sget-boolean v2, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2398
    :cond_3
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2399
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v20

    .line 2400
    .local v20, "subFiles":[Ljava/lang/String;
    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    array-length v2, v0

    if-lez v2, :cond_1

    .line 2401
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v18, v0

    .line 2402
    .local v18, "len":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    .line 2403
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v4, v20, v14

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2405
    .local v3, "newPath":Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2406
    .local v19, "newFile":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2407
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    sget-object v4, Lcom/oppo/media/MediaScanner;->sPrimarySdPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/oppo/media/MediaScanner;->sPrimarySdPath:Ljava/lang/String;

    sget-object v4, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2412
    sget-boolean v2, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v2, :cond_4

    .line 2402
    :cond_4
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2417
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    if-nez v2, :cond_6

    .line 2418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mClient:Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->scanFile(Ljava/lang/String;JJZZ)V

    .line 2420
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    .line 2421
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    const/16 v4, 0x3c

    if-lt v2, v4, :cond_7

    .line 2422
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    add-int/lit8 v2, v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    .line 2423
    const-string v2, "MediaScanner"

    const-string v4, " processDirectory stack overflow"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2426
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/oppo/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 2427
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    .line 2428
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    if-gez v2, :cond_4

    .line 2429
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    goto :goto_2

    .line 2432
    :cond_8
    const/4 v15, 0x0

    .line 2433
    .local v15, "isAudio":Z
    const/16 v17, 0x0

    .line 2434
    .local v17, "isVideo":Z
    const/16 v16, 0x0

    .line 2436
    .local v16, "isImage":Z
    invoke-static {v3}, Lcom/oppo/media/MediaFile;->getFileType(Ljava/lang/String;)Lcom/oppo/media/MediaFile$MediaFileType;

    move-result-object v12

    .line 2437
    .local v12, "fileType":Lcom/oppo/media/MediaFile$MediaFileType;
    if-eqz v12, :cond_9

    .line 2438
    iget v2, v12, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v15

    .line 2439
    iget v2, v12, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v17

    .line 2440
    iget v2, v12, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v16

    .line 2450
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    .line 2451
    .local v13, "flag":I
    const/4 v10, 0x0

    .line 2452
    .local v10, "bCareAbout":Z
    if-nez v13, :cond_a

    .line 2453
    const/4 v10, 0x1

    .line 2455
    :cond_a
    if-nez v10, :cond_b

    and-int/lit8 v2, v13, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    if-eqz v15, :cond_b

    .line 2457
    const/4 v10, 0x1

    .line 2459
    :cond_b
    if-nez v10, :cond_c

    and-int/lit8 v2, v13, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_c

    if-eqz v17, :cond_c

    .line 2461
    const/4 v10, 0x1

    .line 2463
    :cond_c
    if-nez v10, :cond_d

    and-int/lit8 v2, v13, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d

    if-eqz v16, :cond_d

    .line 2465
    const/4 v10, 0x1

    .line 2467
    :cond_d
    if-nez v10, :cond_e

    and-int/lit8 v2, v13, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/media/MediaScanner;->isOtherFiles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2469
    const/4 v10, 0x1

    .line 2471
    :cond_e
    if-eqz v10, :cond_4

    .line 2472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mClient:Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->scanFile(Ljava/lang/String;JJZZ)V

    goto/16 :goto_2
.end method

.method private processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "client"    # Landroid/media/MediaScannerClient;

    .prologue
    .line 2485
    iget-object v7, p0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 2486
    .local v7, "retriever":Lcom/oppo/media/OppoMediaMetadataRetriever;
    iget-object v5, p0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 2487
    .local v5, "mp3Retriever":Landroid/media/MediaMetadataRetriever;
    const/4 v2, 0x0

    .line 2488
    .local v2, "isMp3":Z
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".mp3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2489
    const/4 v2, 0x1

    .line 2491
    :cond_0
    sget-boolean v10, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v10, :cond_1

    .line 2495
    :cond_1
    if-eqz v2, :cond_6

    .line 2496
    if-nez v5, :cond_2

    .line 2497
    :try_start_0
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .end local v5    # "mp3Retriever":Landroid/media/MediaMetadataRetriever;
    .local v6, "mp3Retriever":Landroid/media/MediaMetadataRetriever;
    move-object v5, v6

    .line 2499
    .end local v6    # "mp3Retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v5    # "mp3Retriever":Landroid/media/MediaMetadataRetriever;
    :cond_2
    invoke-virtual {v5, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2510
    :goto_0
    sget-object v10, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2511
    .local v3, "iterator":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 2512
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 2513
    .local v9, "tag":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2514
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/Map$Entry;

    .line 2515
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_b

    .line 2516
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 2521
    :goto_2
    if-eqz v9, :cond_3

    .line 2522
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {p3, v10, v9}, Landroid/media/MediaScannerClient;->handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2535
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;
    .end local v9    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2536
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v10, "MediaScanner"

    const-string v11, "processFile process failed!"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2538
    if-eqz v7, :cond_4

    iget-object v10, p0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eq v7, v10, :cond_4

    .line 2539
    invoke-virtual {v7}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 2540
    const/4 v7, 0x0

    .line 2542
    :cond_4
    if-eqz v5, :cond_5

    iget-object v10, p0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eq v5, v10, :cond_5

    .line 2543
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2544
    const/4 v5, 0x0

    .line 2547
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    return-void

    .line 2501
    :cond_6
    if-nez v7, :cond_7

    .line 2502
    :try_start_2
    new-instance v8, Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-direct {v8}, Lcom/oppo/media/OppoMediaMetadataRetriever;-><init>()V

    .end local v7    # "retriever":Lcom/oppo/media/OppoMediaMetadataRetriever;
    .local v8, "retriever":Lcom/oppo/media/OppoMediaMetadataRetriever;
    move-object v7, v8

    .line 2504
    .end local v8    # "retriever":Lcom/oppo/media/OppoMediaMetadataRetriever;
    .restart local v7    # "retriever":Lcom/oppo/media/OppoMediaMetadataRetriever;
    :cond_7
    iget-object v10, p0, Lcom/oppo/media/MediaScanner;->mLocale:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 2505
    iget-object v10, p0, Lcom/oppo/media/MediaScanner;->mLocale:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/oppo/media/OppoMediaMetadataRetriever;->setLocale(Ljava/lang/String;)V

    .line 2507
    :cond_8
    invoke-virtual {v7, p1}, Lcom/oppo/media/OppoMediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2538
    :catchall_0
    move-exception v10

    if-eqz v7, :cond_9

    iget-object v11, p0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eq v7, v11, :cond_9

    .line 2539
    invoke-virtual {v7}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 2540
    const/4 v7, 0x0

    .line 2542
    :cond_9
    if-eqz v5, :cond_a

    iget-object v11, p0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eq v5, v11, :cond_a

    .line 2543
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2544
    const/4 v5, 0x0

    :cond_a
    throw v10

    .line 2518
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "iterator":Ljava/util/Iterator;
    .restart local v9    # "tag":Ljava/lang/String;
    :cond_b
    :try_start_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/oppo/media/OppoMediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 2525
    :cond_c
    const/4 v4, 0x0

    .line 2526
    .local v4, "mimeTp":Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 2527
    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 2532
    :goto_4
    if-eqz v4, :cond_d

    .line 2533
    invoke-interface {p3, v4}, Landroid/media/MediaScannerClient;->setMimeType(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2538
    :cond_d
    if-eqz v7, :cond_e

    iget-object v10, p0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eq v7, v10, :cond_e

    .line 2539
    invoke-virtual {v7}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 2540
    const/4 v7, 0x0

    .line 2542
    :cond_e
    if-eqz v5, :cond_5

    iget-object v10, p0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eq v5, v10, :cond_5

    .line 2543
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2544
    const/4 v5, 0x0

    goto :goto_3

    .line 2529
    :cond_f
    const/16 v10, 0xc

    :try_start_4
    invoke-virtual {v7, v10}, Lcom/oppo/media/OppoMediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_4
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2097
    const/4 v3, 0x0

    .line 2099
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2100
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2101
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2103
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2104
    .local v2, "line":Ljava/lang/String;
    iget-object v5, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2105
    :goto_0
    if-eqz v2, :cond_1

    .line 2107
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_0

    .line 2108
    invoke-direct {p0, v2, p2}, Lcom/oppo/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2113
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Lcom/oppo/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 2119
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v3, :cond_3

    .line 2120
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2125
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2121
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2122
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2115
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2116
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2119
    if-eqz v3, :cond_3

    .line 2120
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2121
    :catch_2
    move-exception v0

    .line 2122
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2118
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 2119
    :goto_3
    if-eqz v3, :cond_4

    .line 2120
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2123
    :cond_4
    :goto_4
    throw v5

    .line 2121
    :catch_3
    move-exception v0

    .line 2122
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2118
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2115
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processPlayList(Lcom/oppo/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 20
    .param p1, "entry"    # Lcom/oppo/media/MediaScanner$FileEntry;
    .param p2, "fileList"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2225
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2226
    .local v17, "path":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2227
    .local v5, "values":Landroid/content/ContentValues;
    const/16 v2, 0x2f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 2228
    .local v14, "lastSlash":I
    if-gez v14, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad path "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2230
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v18, v0

    .line 2233
    .local v18, "rowId":J
    const-string v2, "name"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2234
    .local v16, "name":Ljava/lang/String;
    if-nez v16, :cond_1

    .line 2235
    const-string v2, "title"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2236
    if-nez v16, :cond_1

    .line 2238
    const/16 v2, 0x2e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 2239
    .local v13, "lastDot":I
    if-gez v13, :cond_4

    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 2244
    .end local v13    # "lastDot":I
    :cond_1
    :goto_0
    const-string v2, "name"

    move-object/from16 v0, v16

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    const-string v2, "date_modified"

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModified:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2247
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-nez v2, :cond_5

    .line 2248
    const-string v2, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oppo/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v6, v5}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 2250
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 2251
    const-string v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2261
    .local v9, "membersUri":Landroid/net/Uri;
    :goto_1
    const/4 v2, 0x0

    add-int/lit8 v3, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2262
    .local v8, "playListDirectory":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/oppo/media/MediaFile;->getFileType(Ljava/lang/String;)Lcom/oppo/media/MediaFile$MediaFileType;

    move-result-object v15

    .line 2263
    .local v15, "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    if-nez v15, :cond_6

    const/4 v12, 0x0

    .line 2264
    .local v12, "fileType":I
    :goto_2
    sget-boolean v2, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v2, :cond_2

    .line 2265
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " processPlayList step2 filetype="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " constant MediaFile.FILE_TYPE_M3U="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    :cond_2
    const/16 v2, 0x29

    if-ne v12, v2, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2269
    invoke-direct/range {v6 .. v11}, Lcom/oppo/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 2275
    :cond_3
    :goto_3
    return-void

    .line 2239
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v8    # "playListDirectory":Ljava/lang/String;
    .end local v9    # "membersUri":Landroid/net/Uri;
    .end local v12    # "fileType":I
    .end local v15    # "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    .restart local v13    # "lastDot":I
    :cond_4
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 2253
    .end local v13    # "lastDot":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2254
    .restart local v4    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2257
    const-string v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2258
    .restart local v9    # "membersUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v3, v9, v6, v7}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2263
    .restart local v8    # "playListDirectory":Ljava/lang/String;
    .restart local v15    # "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    :cond_6
    iget v12, v15, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_2

    .line 2270
    .restart local v12    # "fileType":I
    :cond_7
    const/16 v2, 0x2a

    if-ne v12, v2, :cond_8

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2271
    invoke-direct/range {v6 .. v11}, Lcom/oppo/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3

    .line 2272
    :cond_8
    const/16 v2, 0x2b

    if-ne v12, v2, :cond_3

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2273
    invoke-direct/range {v6 .. v11}, Lcom/oppo/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3
.end method

.method private processPlayLists()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2279
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oppo/media/MediaScanner$FileEntry;>;"
    const/4 v9, 0x0

    .line 2283
    .local v9, "fileList":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v3, Lcom/oppo/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v4, "media_type=2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 2285
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2286
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/media/MediaScanner$FileEntry;

    .line 2288
    .local v8, "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    iget-boolean v0, v8, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v0, :cond_0

    .line 2289
    invoke-direct {p0, v8, v9}, Lcom/oppo/media/MediaScanner;->processPlayList(Lcom/oppo/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2292
    .end local v8    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    :catch_0
    move-exception v0

    .line 2294
    if-eqz v9, :cond_1

    .line 2295
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2298
    :cond_1
    :goto_1
    return-void

    .line 2294
    :cond_2
    if-eqz v9, :cond_1

    .line 2295
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2294
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 2295
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2129
    const/4 v4, 0x0

    .line 2131
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2132
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2133
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2135
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 2136
    .local v3, "line":Ljava/lang/String;
    iget-object v6, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2137
    :goto_0
    if-eqz v3, :cond_1

    .line 2139
    const-string v6, "File"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2140
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2141
    .local v1, "equals":I
    if-lez v1, :cond_0

    .line 2142
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/oppo/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    .end local v1    # "equals":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2148
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Lcom/oppo/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 2154
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v4, :cond_3

    .line 2155
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2160
    .end local v2    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2156
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2157
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2150
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2151
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2154
    if-eqz v4, :cond_3

    .line 2155
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2156
    :catch_2
    move-exception v0

    .line 2157
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2153
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2154
    :goto_3
    if-eqz v4, :cond_4

    .line 2155
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2158
    :cond_4
    :goto_4
    throw v6

    .line 2156
    :catch_3
    move-exception v0

    .line 2157
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "MediaScanner"

    const-string v8, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2153
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2150
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2198
    const/4 v2, 0x0

    .line 2200
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2201
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2202
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2204
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v4, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2205
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Lcom/oppo/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3, p5}, Lcom/oppo/media/MediaScanner$WplHandler;-><init>(Lcom/oppo/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    invoke-virtual {v5}, Lcom/oppo/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 2208
    invoke-direct {p0, p5, p4, p3}, Lcom/oppo/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 2216
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 2217
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2222
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 2218
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2219
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2210
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2211
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2216
    if-eqz v2, :cond_1

    .line 2217
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2218
    :catch_2
    move-exception v0

    .line 2219
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2212
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 2213
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2216
    if-eqz v2, :cond_1

    .line 2217
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2218
    :catch_4
    move-exception v0

    .line 2219
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2215
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2216
    :goto_3
    if-eqz v2, :cond_2

    .line 2217
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2220
    :cond_2
    :goto_4
    throw v4

    .line 2218
    :catch_5
    move-exception v0

    .line 2219
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2215
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 2212
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 2210
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 17

    .prologue
    .line 1559
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1566
    .local v11, "existingFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/os/OppoUsbEnvironment;->getInternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1568
    .local v10, "directory":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13

    .line 1569
    .local v13, "files":[Ljava/lang/String;
    if-nez v13, :cond_0

    .line 1570
    const/4 v1, 0x0

    new-array v13, v1, [Ljava/lang/String;

    .line 1572
    :cond_0
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v1, v13

    if-ge v15, v1, :cond_1

    .line 1573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v13, v15

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1574
    .local v14, "fullPathString":Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1572
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1578
    .end local v14    # "fullPathString":Ljava/lang/String;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 1585
    .local v9, "c":Landroid/database/Cursor;
    sget-boolean v1, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v1, :cond_2

    .line 1586
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pruneDeadThumbnailFiles... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_2
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1590
    :cond_3
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1591
    .restart local v14    # "fullPathString":Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1592
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1595
    .end local v14    # "fullPathString":Ljava/lang/String;
    :cond_4
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1599
    .local v12, "fileToDelete":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1600
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1604
    .end local v12    # "fileToDelete":Ljava/lang/String;
    :cond_5
    :try_start_2
    sget-boolean v1, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v1, :cond_6

    .line 1605
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_6
    if-eqz v9, :cond_7

    .line 1608
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1613
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    return-void

    .line 1610
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private recoverImageCshotID()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2731
    const-string v12, "/DCIM/Camera/Cshot"

    .line 2732
    .local v12, "cshotDir":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oppo/media/MediaScanner;->sPrimarySdPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2733
    .local v15, "cshotRootDirInternal":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2734
    .local v14, "cshotRootDirExternal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cshot_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  _data like \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\"  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OR ( _data like \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\" ) ) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " group by (bucket_id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v16

    .line 2738
    .local v16, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 2739
    .local v13, "cshotId":I
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 2741
    .local v20, "values":Landroid/content/ContentValues;
    if-eqz v16, :cond_2

    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2742
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2744
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2745
    .local v19, "path":Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2746
    .local v11, "cshot":I
    if-eqz v19, :cond_1

    .line 2747
    new-instance v18, Ljava/io/File;

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2748
    .local v18, "file":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    .line 2749
    .local v17, "dir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 2751
    .local v9, "abDirName":Ljava/lang/String;
    if-eqz v9, :cond_4

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2777
    .end local v9    # "abDirName":Ljava/lang/String;
    .end local v17    # "dir":Ljava/io/File;
    .end local v18    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 2781
    .end local v11    # "cshot":I
    .end local v19    # "path":Ljava/lang/String;
    :cond_2
    if-eqz v16, :cond_3

    .line 2782
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2786
    :cond_3
    return-void

    .line 2755
    .restart local v9    # "abDirName":Ljava/lang/String;
    .restart local v11    # "cshot":I
    .restart local v17    # "dir":Ljava/io/File;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "path":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 2756
    if-lez v13, :cond_7

    .line 2757
    add-int/lit8 v13, v13, 0x1

    .line 2773
    :cond_5
    :goto_1
    const-string v1, "cshot_id"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2774
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data like \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v4, v20

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2781
    .end local v9    # "abDirName":Ljava/lang/String;
    .end local v11    # "cshot":I
    .end local v17    # "dir":Ljava/io/File;
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v16, :cond_6

    .line 2782
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 2759
    .restart local v9    # "abDirName":Ljava/lang/String;
    .restart local v11    # "cshot":I
    .restart local v17    # "dir":Ljava/io/File;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "path":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    .line 2761
    .local v10, "c":Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "max(_id)"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 2763
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 2764
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2765
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    add-int/lit8 v13, v1, 0x1

    .line 2768
    :cond_8
    if-eqz v10, :cond_5

    .line 2769
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2768
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_9

    .line 2769
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 1680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 1682
    :cond_0
    return-void
.end method

.method private scanFileInNewThread(Ljava/lang/String;JJZZ)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lastModified"    # J
    .param p4, "fileSize"    # J
    .param p6, "isDirectory"    # Z
    .param p7, "noMedia"    # Z

    .prologue
    .line 2599
    sget-boolean v0, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v0, :cond_0

    .line 2602
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 2603
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/oppo/media/MediaScanner;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 2607
    :cond_1
    new-instance v1, Lcom/oppo/media/MediaScanner$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/oppo/media/MediaScanner$1;-><init>(Lcom/oppo/media/MediaScanner;Ljava/lang/String;JJZZ)V

    .line 2614
    .local v1, "task":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2615
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 3

    .prologue
    .line 447
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 449
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 451
    const-string v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 455
    const-string v0, "ro.config.ringtone_sim2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;

    .line 457
    const-string v0, "ro.config.notification_sim2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;

    .line 459
    sget-boolean v0, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v0, :cond_0

    .line 460
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultRingtoneFileNames ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDefaultAlarmAlertFilename ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mDefaultNotificationFilename ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    return-void
.end method

.method private shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .param p1, "pool"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 2618
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2620
    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2622
    :try_start_0
    sget-boolean v1, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v1, :cond_0

    .line 2623
    const-string v1, "MediaScanner"

    const-string v2, "thread pool isn\'t terminated, waitting..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    :cond_0
    const-wide/16 v2, 0x3c

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2626
    :catch_0
    move-exception v0

    .line 2627
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MediaScanner"

    const-string v2, "some exception happened in awaitTermination!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2629
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2633
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method


# virtual methods
.method public extractAlbumArt(Ljava/io/FileDescriptor;)[B
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 2554
    const/4 v1, 0x0

    .line 2578
    .local v1, "result":[B
    const/4 v2, 0x0

    .line 2580
    .local v2, "scanner":Landroid/media/MediaScanner;
    :try_start_0
    new-instance v3, Landroid/media/MediaScanner;

    iget-object v4, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2581
    .end local v2    # "scanner":Landroid/media/MediaScanner;
    .local v3, "scanner":Landroid/media/MediaScanner;
    :try_start_1
    iget-object v4, p0, Lcom/oppo/media/MediaScanner;->mLocale:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2582
    iget-object v4, p0, Lcom/oppo/media/MediaScanner;->mLocale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 2584
    :cond_0
    invoke-virtual {v3, p1}, Landroid/media/MediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 2588
    if-eqz v3, :cond_3

    .line 2589
    const/4 v2, 0x0

    .line 2590
    .end local v3    # "scanner":Landroid/media/MediaScanner;
    .restart local v2    # "scanner":Landroid/media/MediaScanner;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2594
    :cond_1
    :goto_0
    return-object v1

    .line 2585
    :catch_0
    move-exception v0

    .line 2586
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "MediaScanner"

    const-string v5, "extractAlbumArt failed!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2588
    if-eqz v2, :cond_1

    .line 2589
    const/4 v2, 0x0

    .line 2590
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 2588
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    .line 2589
    const/4 v2, 0x0

    .line 2590
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_2
    throw v4

    .line 2588
    .end local v2    # "scanner":Landroid/media/MediaScanner;
    .restart local v3    # "scanner":Landroid/media/MediaScanner;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "scanner":Landroid/media/MediaScanner;
    .restart local v2    # "scanner":Landroid/media/MediaScanner;
    goto :goto_2

    .line 2585
    .end local v2    # "scanner":Landroid/media/MediaScanner;
    .restart local v3    # "scanner":Landroid/media/MediaScanner;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "scanner":Landroid/media/MediaScanner;
    .restart local v2    # "scanner":Landroid/media/MediaScanner;
    goto :goto_1

    .end local v2    # "scanner":Landroid/media/MediaScanner;
    .restart local v3    # "scanner":Landroid/media/MediaScanner;
    :cond_3
    move-object v2, v3

    .end local v3    # "scanner":Landroid/media/MediaScanner;
    .restart local v2    # "scanner":Landroid/media/MediaScanner;
    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2313
    invoke-direct {p0}, Lcom/oppo/media/MediaScanner;->releaseResources()V

    .line 2314
    return-void
.end method

.method makeEntryFor(Ljava/lang/String;)Lcom/oppo/media/MediaScanner$FileEntry;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1961
    const/4 v13, 0x0

    .line 1963
    .local v13, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "_data=?"

    .line 1964
    .local v4, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 1965
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    sget-object v3, Lcom/oppo/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v13

    .line 1967
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1968
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1969
    .local v7, "rowId":J
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1970
    .local v12, "format":I
    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1973
    .local v10, "lastModified":J
    if-eqz v13, :cond_0

    .line 1974
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1975
    const/4 v13, 0x0

    .line 1978
    :cond_0
    new-instance v6, Lcom/oppo/media/MediaScanner$FileEntry;

    move-object v9, p1

    invoke-direct/range {v6 .. v12}, Lcom/oppo/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1982
    if-eqz v13, :cond_1

    .line 1983
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1986
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "rowId":J
    .end local v10    # "lastModified":J
    .end local v12    # "format":I
    :cond_1
    :goto_0
    return-object v6

    .line 1982
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    if-eqz v13, :cond_3

    .line 1983
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1986
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1980
    :catch_0
    move-exception v0

    .line 1982
    if-eqz v13, :cond_3

    .line 1983
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1982
    :catchall_0
    move-exception v0

    if-eqz v13, :cond_4

    .line 1983
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 1707
    :try_start_0
    new-instance v12, Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-direct {v12}, Lcom/oppo/media/OppoMediaMetadataRetriever;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 1708
    new-instance v12, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v12}, Landroid/media/MediaMetadataRetriever;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 1709
    sget-boolean v12, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v12, :cond_0

    .line 1710
    const-string v12, "MediaScanner"

    const-string v13, "scanDirectories, directories=%s, volumeName=%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object p2, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_0
    const-string v12, "external"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1714
    const/4 v12, 0x0

    aget-object v12, p1, v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    .line 1719
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1720
    .local v10, "start":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oppo/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1721
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/oppo/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1726
    .local v6, "prescan":J
    new-instance v12, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/16 v15, 0x1f4

    invoke-direct {v12, v13, v14, v15}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1731
    const-string v12, "internal"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1732
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner;->checkOppoDefaultValues()V

    .line 1736
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v3, v12, :cond_3

    .line 1737
    aget-object v12, p1, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/media/MediaScanner;->mClient:Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/oppo/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1736
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1739
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oppo/media/MediaScanner;->mIsBreaking:Z

    if-eqz v12, :cond_6

    const-string v12, "external"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1740
    const-string v12, "MediaScanner"

    const-string v13, "scanDirectory is broken!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1783
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eqz v12, :cond_4

    .line 1784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1785
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 1787
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eqz v12, :cond_5

    .line 1788
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-virtual {v12}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 1789
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 1791
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner;->releaseResources()V

    .line 1794
    .end local v3    # "i":I
    .end local v6    # "prescan":J
    .end local v10    # "start":J
    :goto_1
    return-void

    .line 1753
    .restart local v3    # "i":I
    .restart local v6    # "prescan":J
    .restart local v10    # "start":J
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v12}, Landroid/media/MediaInserter;->flushAll()V

    .line 1754
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1758
    .local v8, "scan":J
    invoke-direct/range {p0 .. p1}, Lcom/oppo/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1769
    .local v4, "end":J
    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " prescan time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v6, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    scan time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v8, v6

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "postscan time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v4, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   total time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v4, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1783
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eqz v12, :cond_7

    .line 1784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1785
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 1787
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eqz v12, :cond_8

    .line 1788
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-virtual {v12}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 1789
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 1791
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner;->releaseResources()V

    .line 1793
    .end local v3    # "i":I
    .end local v4    # "end":J
    .end local v6    # "prescan":J
    .end local v8    # "scan":J
    .end local v10    # "start":J
    :goto_2
    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "scanDirectories ended "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1774
    :catch_0
    move-exception v2

    .line 1776
    .local v2, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v12, "MediaScanner"

    const-string v13, "SQLException in MediaScanner.scan()"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1783
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eqz v12, :cond_9

    .line 1784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1785
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 1787
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eqz v12, :cond_a

    .line 1788
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-virtual {v12}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 1789
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 1791
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner;->releaseResources()V

    goto :goto_2

    .line 1777
    .end local v2    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v2

    .line 1779
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_3
    const-string v12, "MediaScanner"

    const-string v13, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1783
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eqz v12, :cond_b

    .line 1784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1785
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 1787
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eqz v12, :cond_c

    .line 1788
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-virtual {v12}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 1789
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 1791
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner;->releaseResources()V

    goto :goto_2

    .line 1780
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v2

    .line 1781
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v12, "MediaScanner"

    const-string v13, "RemoteException in MediaScanner.scan()"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1783
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eqz v12, :cond_d

    .line 1784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1785
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 1787
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eqz v12, :cond_e

    .line 1788
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-virtual {v12}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 1789
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 1791
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner;->releaseResources()V

    goto/16 :goto_2

    .line 1783
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eqz v13, :cond_f

    .line 1784
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1785
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 1787
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eqz v13, :cond_10

    .line 1788
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-virtual {v13}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 1789
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 1791
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner;->releaseResources()V

    throw v12
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 27
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "objectHandle"    # I
    .param p4, "format"    # I

    .prologue
    .line 1902
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oppo/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1903
    invoke-static/range {p1 .. p1}, Lcom/oppo/media/MediaFile;->getFileType(Ljava/lang/String;)Lcom/oppo/media/MediaFile$MediaFileType;

    move-result-object v26

    .line 1904
    .local v26, "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    if-nez v26, :cond_1

    const/16 v25, 0x0

    .line 1905
    .local v25, "fileType":I
    :goto_0
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1906
    .local v23, "file":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long v14, v4, v10

    .line 1908
    .local v14, "lastModifiedSeconds":J
    invoke-static/range {v25 .. v25}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v25 .. v25}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v25 .. v25}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v25 .. v25}, Lcom/oppo/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v25 .. v25}, Lcom/oppo/media/MediaFile;->isDrmFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1913
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1914
    .local v7, "values":Landroid/content/ContentValues;
    const-string v4, "_size"

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1915
    const-string v4, "date_modified"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1917
    const/4 v4, 0x1

    :try_start_0
    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    .line 1918
    .local v9, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v8, "_id=?"

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v9    # "whereArgs":[Ljava/lang/String;
    .end local v14    # "lastModifiedSeconds":J
    :cond_0
    :goto_1
    return-void

    .line 1904
    .end local v23    # "file":Ljava/io/File;
    .end local v25    # "fileType":I
    :cond_1
    move-object/from16 v0, v26

    iget v0, v0, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v25, v0

    goto :goto_0

    .line 1920
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v14    # "lastModifiedSeconds":J
    .restart local v23    # "file":Ljava/io/File;
    .restart local v25    # "fileType":I
    :catch_0
    move-exception v21

    .line 1921
    .local v21, "e":Landroid/os/RemoteException;
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in scanMtpFile"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1926
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v21    # "e":Landroid/os/RemoteException;
    :cond_2
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I

    .line 1927
    const/16 v24, 0x0

    .line 1929
    .local v24, "fileList":Landroid/database/Cursor;
    :try_start_1
    invoke-static/range {v25 .. v25}, Lcom/oppo/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1931
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1933
    invoke-virtual/range {p0 .. p1}, Lcom/oppo/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Lcom/oppo/media/MediaScanner$FileEntry;

    move-result-object v22

    .line 1934
    .local v22, "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    if-eqz v22, :cond_3

    .line 1935
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v13, Lcom/oppo/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v10 .. v17}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    .end local v14    # "lastModifiedSeconds":J
    move-result-object v24

    .line 1937
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/oppo/media/MediaScanner;->processPlayList(Lcom/oppo/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1950
    .end local v22    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    :cond_3
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I

    .line 1951
    if-eqz v24, :cond_0

    .line 1952
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1941
    .restart local v14    # "lastModifiedSeconds":J
    :cond_4
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/oppo/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1944
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/media/MediaScanner;->mClient:Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, v26

    iget-object v13, v0, Lcom/oppo/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v16

    const/16 v4, 0x3001

    move/from16 v0, p4

    if-ne v0, v4, :cond_5

    const/16 v18, 0x1

    :goto_3
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/oppo/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v20}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1947
    .end local v14    # "lastModifiedSeconds":J
    :catch_1
    move-exception v21

    .line 1948
    .restart local v21    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in MediaScanner.scanFile()"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1950
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I

    .line 1951
    if-eqz v24, :cond_0

    .line 1952
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1944
    .end local v21    # "e":Landroid/os/RemoteException;
    .restart local v14    # "lastModifiedSeconds":J
    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    .line 1950
    .end local v14    # "lastModifiedSeconds":J
    :catchall_0
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I

    .line 1951
    if-eqz v24, :cond_6

    .line 1952
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1799
    :try_start_0
    invoke-direct {p0, p2}, Lcom/oppo/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1800
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/oppo/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1802
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1806
    .local v11, "file":Ljava/io/File;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 1807
    const/4 v1, 0x0

    .line 1819
    .end local v11    # "file":Ljava/io/File;
    :goto_0
    return-object v1

    .line 1812
    .restart local v11    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 1815
    .local v4, "lastModifiedSeconds":J
    iget-object v1, p0, Lcom/oppo/media/MediaScanner;->mClient:Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v8

    const/4 v9, 0x1

    invoke-static {p1}, Lcom/oppo/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v10

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v1 .. v10}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1817
    .end local v4    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1818
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaScanner"

    const-string v2, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1819
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIsBreaking(Z)V
    .locals 3
    .param p1, "breaking"    # Z

    .prologue
    .line 2375
    sget-boolean v0, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v0, :cond_0

    .line 2376
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsBreaking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :cond_0
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mIsBreaking:Z

    .line 2379
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 2550
    iput-object p1, p0, Lcom/oppo/media/MediaScanner;->mLocale:Ljava/lang/String;

    .line 2551
    return-void
.end method

.method public setScanFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 2371
    iput p1, p0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    .line 2372
    return-void
.end method
