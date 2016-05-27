.class public Loppo/content/res/OppoExtraConfiguration;
.super Ljava/lang/Object;
.source "OppoExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final CONFIG_FLIPFONT:I = 0x20000000

.field public static final THEME_NEW_SKIN_CHANGED:I = 0x9000000

.field public static final THEME_OLD_SKIN_CHANGED:I = 0x8000000


# instance fields
.field public mFlipFont:I

.field public mThemeChanged:I

.field public mThemeChangedFlags:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needNewResources(I)Z
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "flag":Z
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    .line 118
    :cond_0
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Loppo/content/res/OppoExtraConfiguration;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Loppo/content/res/OppoExtraConfiguration;->compareTo(Loppo/content/res/OppoExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public compareTo(Loppo/content/res/OppoExtraConfiguration;)I
    .locals 4
    .param p1, "extraconfiguration"    # Loppo/content/res/OppoExtraConfiguration;

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "i":I
    iget v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget v3, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    sub-int v0, v2, v3

    .line 48
    if-eqz v0, :cond_0

    move v1, v0

    .line 57
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    return v1

    .line 55
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    iget v2, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iget v3, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    sub-int v0, v2, v3

    move v1, v0

    .line 57
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public diff(Loppo/content/res/OppoExtraConfiguration;)I
    .locals 3
    .param p1, "extraconfiguration"    # Loppo/content/res/OppoExtraConfiguration;

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "i":I
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-eq v1, v2, :cond_0

    .line 102
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    .line 106
    :cond_0
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    if-lez v1, :cond_1

    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    if-eq v1, v2, :cond_1

    .line 107
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 109
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "i":I
    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget-wide v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 144
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    add-int v0, v1, v2

    .line 145
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    .line 138
    return-void
.end method

.method public setTo(Loppo/content/res/OppoExtraConfiguration;)V
    .locals 2
    .param p1, "extraconfiguration"    # Loppo/content/res/OppoExtraConfiguration;

    .prologue
    .line 61
    iget v0, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 62
    iget-wide v0, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    iput-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 63
    iget v0, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    .line 64
    return-void
.end method

.method public setToDefaults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    iput v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 77
    iput v2, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "stringbuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mThemeChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mThemeChangedFlags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mFlipFont = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Loppo/content/res/OppoExtraConfiguration;)I
    .locals 4
    .param p1, "extraconfiguration"    # Loppo/content/res/OppoExtraConfiguration;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "i":I
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-eq v1, v2, :cond_0

    .line 84
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    .line 86
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iput v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 87
    iget-wide v2, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    iput-wide v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 90
    :cond_0
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    if-lez v1, :cond_1

    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    if-eq v1, v2, :cond_1

    .line 91
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 92
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iput v1, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    .line 94
    :cond_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 128
    iget v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget v0, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void
.end method
