.class public Lcom/oppo/widget/OppoQuickContactBadgeICS;
.super Landroid/widget/ImageView;
.source "OppoQuickContactBadgeICS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoQuickContactBadgeICS$QueryHandler;
    }
.end annotation


# static fields
.field public static final ACTION_QUICK_CONTACT:Ljava/lang/String; = "com.android.contacts.action.QUICK_CONTACT"

.field private static final DBG:Z = false

.field static final EMAIL_ID_COLUMN_INDEX:I = 0x0

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

.field static final EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field static final PHONE_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoQuickContactBadge"

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3


# instance fields
.field private mContactEmail:Ljava/lang/String;

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field private mDefaultAvatar:Landroid/graphics/drawable/Drawable;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mQueryHandler:Lcom/oppo/widget/OppoQuickContactBadgeICS$QueryHandler;

.field private mThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 81
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mThreadId:J

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mExcludeMimes:[Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContext:Landroid/content/Context;

    sget-object v2, Loppo/R$styleable;->OppoTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    new-instance v1, Lcom/oppo/widget/OppoQuickContactBadgeICS$QueryHandler;

    iget-object v2, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oppo/widget/OppoQuickContactBadgeICS$QueryHandler;-><init>(Lcom/oppo/widget/OppoQuickContactBadgeICS;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mQueryHandler:Lcom/oppo/widget/OppoQuickContactBadgeICS$QueryHandler;

    .line 104
    invoke-virtual {p0, p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoQuickContactBadgeICS;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoQuickContactBadgeICS;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoQuickContactBadgeICS;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoQuickContactBadgeICS;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->onContactUriChanged()V

    return-void
.end method

.method private static findOfView(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 392
    .local v0, "appScale":F
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 393
    .local v1, "pos":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 395
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 396
    .local v2, "rect":Landroid/graphics/Rect;
    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 397
    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 398
    aget v3, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 399
    aget v3, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 400
    return-object v2
.end method

.method private isAssigned()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactEmail:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onContactUriChanged()V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->isAssigned()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->setEnabled(Z)V

    .line 248
    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;
    .param p5, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 435
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 436
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 437
    const-string v1, "android.provider.extra.MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    const-string v1, "android.provider.extra.EXCLUDE_MIMES"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v1, "PHONE_UNKNOWN"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 441
    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;
    .param p5, "phoneNumber"    # Ljava/lang/String;
    .param p6, "threadId"    # J

    .prologue
    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 477
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 478
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 479
    const-string v1, "android.provider.extra.MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    const-string v1, "android.provider.extra.EXCLUDE_MIMES"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v1, "PHONE_UNKNOWN"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v1, "QUICK_THREADID"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 483
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 484
    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;
    .param p5, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-static {p0, p1}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->findOfView(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "rect":Landroid/graphics/Rect;
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 425
    invoke-static/range {v0 .. v5}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;
    .param p5, "phoneNumber"    # Ljava/lang/String;
    .param p6, "threadId"    # J

    .prologue
    .line 452
    invoke-static {p0, p1}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->findOfView(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "rect":Landroid/graphics/Rect;
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    .line 467
    invoke-static/range {v0 .. v7}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;J)V

    .line 468
    return-void
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z

    .prologue
    const/4 v2, 0x0

    .line 214
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactEmail:Ljava/lang/String;

    .line 215
    if-nez p2, :cond_0

    .line 216
    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mQueryHandler:Lcom/oppo/widget/OppoQuickContactBadgeICS$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/oppo/widget/OppoQuickContactBadgeICS;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/widget/OppoQuickContactBadgeICS$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    iput-object v2, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactUri:Landroid/net/Uri;

    .line 221
    invoke-direct {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z

    .prologue
    const/4 v2, 0x0

    .line 235
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactPhone:Ljava/lang/String;

    .line 236
    if-nez p2, :cond_0

    .line 237
    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mQueryHandler:Lcom/oppo/widget/OppoQuickContactBadgeICS$QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/oppo/widget/OppoQuickContactBadgeICS;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/widget/OppoQuickContactBadgeICS$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-object v2, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactUri:Landroid/net/Uri;

    .line 242
    invoke-direct {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 172
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactUri:Landroid/net/Uri;

    .line 173
    iput-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactEmail:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactPhone:Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->onContactUriChanged()V

    .line 176
    return-void
.end method

.method public assignContactUri(Landroid/net/Uri;J)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "threadId"    # J

    .prologue
    const/4 v0, 0x0

    .line 185
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactUri:Landroid/net/Uri;

    .line 186
    iput-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactEmail:Ljava/lang/String;

    .line 187
    iput-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactPhone:Ljava/lang/String;

    .line 188
    iput-wide p2, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mThreadId:J

    .line 189
    invoke-direct {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->onContactUriChanged()V

    .line 190
    return-void
.end method

.method public assignContactUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactUri:Landroid/net/Uri;

    .line 382
    iput-object p2, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactPhone:Ljava/lang/String;

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactEmail:Ljava/lang/String;

    .line 384
    invoke-direct {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->onContactUriChanged()V

    .line 385
    return-void
.end method

.method public assignContactUri(Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "threadId"    # J

    .prologue
    .line 196
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactUri:Landroid/net/Uri;

    .line 197
    iput-object p2, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactPhone:Ljava/lang/String;

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactEmail:Ljava/lang/String;

    .line 199
    iput-wide p3, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mThreadId:J

    .line 200
    invoke-direct {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->onContactUriChanged()V

    .line 201
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 110
    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 112
    invoke-virtual {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->invalidate()V

    .line 114
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactUri:Landroid/net/Uri;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mExcludeMimes:[Ljava/lang/String;

    iget-object v5, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactPhone:Ljava/lang/String;

    iget-wide v6, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mThreadId:J

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;J)V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string v0, "OppoQuickContactBadge"

    const-string v1, "mContactUri is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    invoke-virtual {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    iget v1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mPaddingTop:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mPaddingLeft:I

    if-nez v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 141
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 142
    iget v1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 143
    iget-object v1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 144
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 0
    .param p1, "excludeMimes"    # [Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mExcludeMimes:[Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setImageToDefault()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc080492

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 118
    return-void
.end method
