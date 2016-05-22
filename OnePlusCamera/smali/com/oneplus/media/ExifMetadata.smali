.class public Lcom/oneplus/media/ExifMetadata;
.super Lcom/oneplus/base/BasicBaseObject;
.source "ExifMetadata.java"

# interfaces
.implements Lcom/oneplus/media/PhotoMetadata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/media/ExifMetadata$1;
    }
.end annotation


# static fields
.field private static final ENTRY_ID_APERTURE_VALUE:I = 0x9202

.field private static final ENTRY_ID_EXPOSURE_TIME:I = 0x829a

.field private static final ENTRY_ID_FLASH:I = 0x9209

.field private static final ENTRY_ID_FOCAL_LENGTH:I = 0x920a

.field private static final ENTRY_ID_GPS_ALTITUDE:I = 0x6

.field private static final ENTRY_ID_GPS_ALTITUDE_REF:I = 0x5

.field private static final ENTRY_ID_GPS_LATITUDE:I = 0x2

.field private static final ENTRY_ID_GPS_LATITUDE_REF:I = 0x1

.field private static final ENTRY_ID_GPS_LONGITUDE:I = 0x4

.field private static final ENTRY_ID_GPS_LONGITUDE_REF:I = 0x3

.field private static final ENTRY_ID_ISO:I = 0x8827

.field private static final ENTRY_ID_MAKE:I = 0x10f

.field private static final ENTRY_ID_MODEL:I = 0x110

.field private static final ENTRY_ID_WHITE_BALANCE:I = 0xa403

.field private static final GPS_REF_ABOVE_SEA:I = 0x1

.field private static final GPS_REF_BELOW_SEA:I = 0x1

.field private static final GPS_REF_EAST:Ljava/lang/String; = "E"

.field private static final GPS_REF_NORTH:Ljava/lang/String; = "N"

.field private static final GPS_REF_SOUTH:Ljava/lang/String; = "S"

.field private static final GPS_REF_WEST:Ljava/lang/String; = "W"


# instance fields
.field private m_Location:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 11
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 113
    new-instance v7, Landroid/location/Location;

    iget-object v8, p0, Lcom/oneplus/media/ExifMetadata;->TAG:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    .line 114
    iget-object v7, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 115
    iget-object v7, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 118
    :try_start_0
    new-instance v1, Lcom/oneplus/media/IfdEntryEnumerator;

    const-wide/16 v8, 0x0

    invoke-direct {v1, p1, v8, v9}, Lcom/oneplus/media/IfdEntryEnumerator;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    const/4 v8, 0x0

    .line 120
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/oneplus/media/IfdEntryEnumerator;->read()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 122
    sget-object v7, Lcom/oneplus/media/ExifMetadata$1;->$SwitchMap$com$oneplus$media$Ifd:[I

    invoke-virtual {v1}, Lcom/oneplus/media/IfdEntryEnumerator;->currentIfd()Lcom/oneplus/media/Ifd;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/media/Ifd;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/oneplus/media/ExifMetadata;->processIFD0(Lcom/oneplus/media/IfdEntryEnumerator;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v7

    :try_start_2
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :catchall_0
    move-exception v8

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    :goto_1
    if-eqz v1, :cond_0

    if-eqz v8, :cond_6

    :try_start_3
    invoke-virtual {v1}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_2
    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 136
    .end local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/oneplus/media/ExifMetadata;->TAG:Ljava/lang/String;

    const-string v8, "ExifMetadata() - Error when IFD enumerator"

    invoke-static {v7, v8, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_3
    iget-object v7, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 143
    .local v2, "latitude":D
    iget-object v7, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 144
    .local v4, "longitude":D
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    cmpl-double v7, v2, v8

    if-eqz v7, :cond_2

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    cmpl-double v7, v4, v8

    if-nez v7, :cond_3

    .line 145
    :cond_2
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    .line 146
    :cond_3
    return-void

    .line 128
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    .restart local v1    # "entryEnumerator":Lcom/oneplus/media/IfdEntryEnumerator;
    :pswitch_1
    :try_start_5
    invoke-direct {p0, v1}, Lcom/oneplus/media/ExifMetadata;->processExif(Lcom/oneplus/media/IfdEntryEnumerator;)V

    goto :goto_0

    .line 135
    :catchall_1
    move-exception v7

    goto :goto_1

    .line 131
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/oneplus/media/ExifMetadata;->processGPS(Lcom/oneplus/media/IfdEntryEnumerator;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 135
    :cond_4
    if-eqz v1, :cond_1

    if-eqz v8, :cond_5

    :try_start_6
    invoke-virtual {v1}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v1}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V

    goto :goto_3

    :catch_3
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v1}, Lcom/oneplus/media/IfdEntryEnumerator;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private convertLatLong([Landroid/util/Rational;)D
    .locals 12
    .param p1, "rationals"    # [Landroid/util/Rational;

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 152
    if-eqz p1, :cond_0

    array-length v6, p1

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 153
    :cond_0
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    .line 157
    :goto_0
    return-wide v6

    .line 154
    :cond_1
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v0

    .line 155
    .local v0, "degrees":D
    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v2

    .line 156
    .local v2, "minutes":D
    const/4 v6, 0x2

    aget-object v6, p1, v6

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    .line 157
    .local v4, "seconds":D
    mul-double v6, v2, v10

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    div-double/2addr v6, v8

    add-double/2addr v6, v0

    mul-double v8, v4, v10

    const-wide v10, 0x40ac200000000000L    # 3600.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    goto :goto_0
.end method

.method private processExif(Lcom/oneplus/media/IfdEntryEnumerator;)V
    .locals 6
    .param p1, "entryEnumerator"    # Lcom/oneplus/media/IfdEntryEnumerator;

    .prologue
    const/4 v5, 0x0

    .line 175
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 179
    :sswitch_0
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v1

    .line 180
    .local v1, "rationals":[Landroid/util/Rational;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 181
    sget-object v3, Lcom/oneplus/media/ExifMetadata;->PROP_APERTURE_VALUE:Lcom/oneplus/base/PropertyKey;

    aget-object v4, v1, v5

    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    .end local v1    # "rationals":[Landroid/util/Rational;
    :sswitch_1
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v1

    .line 187
    .restart local v1    # "rationals":[Landroid/util/Rational;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 188
    sget-object v3, Lcom/oneplus/media/ExifMetadata;->PROP_EXPOSURE_TIME:Lcom/oneplus/base/PropertyKey;

    aget-object v4, v1, v5

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    .end local v1    # "rationals":[Landroid/util/Rational;
    :sswitch_2
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v2

    .line 194
    .local v2, "values":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 196
    new-instance v0, Lcom/oneplus/media/FlashData;

    aget v3, v2, v5

    invoke-direct {v0, v3}, Lcom/oneplus/media/FlashData;-><init>(I)V

    .line 197
    .local v0, "flashData":Lcom/oneplus/media/FlashData;
    sget-object v3, Lcom/oneplus/media/ExifMetadata;->PROP_FLASH_DATA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3, v0}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v0    # "flashData":Lcom/oneplus/media/FlashData;
    .end local v2    # "values":[I
    :sswitch_3
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v1

    .line 204
    .restart local v1    # "rationals":[Landroid/util/Rational;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 205
    sget-object v3, Lcom/oneplus/media/ExifMetadata;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    aget-object v4, v1, v5

    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v1    # "rationals":[Landroid/util/Rational;
    :sswitch_4
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v2

    .line 211
    .restart local v2    # "values":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 212
    sget-object v3, Lcom/oneplus/media/ExifMetadata;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    aget v4, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    .end local v2    # "values":[I
    :sswitch_5
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v2

    .line 218
    .restart local v2    # "values":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 219
    sget-object v4, Lcom/oneplus/media/ExifMetadata;->PROP_WHITE_BALANCE:Lcom/oneplus/base/PropertyKey;

    aget v3, v2, v5

    if-nez v3, :cond_1

    sget-object v3, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->AUTO:Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    :goto_1
    invoke-virtual {p0, v4, v3}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    sget-object v3, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->MANUAL:Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    goto :goto_1

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x829a -> :sswitch_1
        0x8827 -> :sswitch_4
        0x9202 -> :sswitch_0
        0x9209 -> :sswitch_2
        0x920a -> :sswitch_3
        0xa403 -> :sswitch_5
    .end sparse-switch
.end method

.method private processGPS(Lcom/oneplus/media/IfdEntryEnumerator;)V
    .locals 18
    .param p1, "entryEnumerator"    # Lcom/oneplus/media/IfdEntryEnumerator;

    .prologue
    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 233
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v9

    .line 234
    .local v9, "rationals":[Landroid/util/Rational;
    if-eqz v9, :cond_0

    array-length v14, v9

    if-lez v14, :cond_0

    .line 236
    const/4 v14, 0x0

    aget-object v14, v9, v14

    invoke-virtual {v14}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    .line 237
    .local v4, "altitude":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 238
    .local v12, "signum":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    invoke-virtual {v14}, Landroid/location/Location;->hasAltitude()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    invoke-virtual {v14}, Landroid/location/Location;->getAltitude()D

    move-result-wide v12

    .line 240
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    mul-double v16, v12, v4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_0

    .line 246
    .end local v4    # "altitude":D
    .end local v9    # "rationals":[Landroid/util/Rational;
    .end local v12    # "signum":D
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataInteger()[I

    move-result-object v2

    .line 247
    .local v2, "altRef":[I
    if-eqz v2, :cond_0

    array-length v14, v2

    if-lez v14, :cond_0

    .line 249
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 250
    .restart local v12    # "signum":D
    const/4 v14, 0x0

    aget v14, v2, v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 251
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 252
    :cond_2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 253
    .restart local v4    # "altitude":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    invoke-virtual {v14}, Landroid/location/Location;->hasAltitude()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    invoke-virtual {v14}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    .line 255
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    mul-double v16, v12, v4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_0

    .line 261
    .end local v2    # "altRef":[I
    .end local v4    # "altitude":D
    .end local v12    # "signum":D
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v9

    .line 262
    .restart local v9    # "rationals":[Landroid/util/Rational;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/oneplus/media/ExifMetadata;->convertLatLong([Landroid/util/Rational;)D

    move-result-wide v6

    .line 263
    .local v6, "latitude":D
    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    cmpl-double v14, v6, v14

    if-eqz v14, :cond_0

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    .line 266
    .restart local v12    # "signum":D
    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    cmpl-double v14, v12, v14

    if-nez v14, :cond_4

    .line 267
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 268
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    mul-double v16, v12, v6

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    goto/16 :goto_0

    .line 274
    .end local v6    # "latitude":D
    .end local v9    # "rationals":[Landroid/util/Rational;
    .end local v12    # "signum":D
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "latRef":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 278
    .restart local v6    # "latitude":D
    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    cmpl-double v14, v6, v14

    if-nez v14, :cond_5

    .line 279
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 280
    :cond_5
    const/4 v12, 0x1

    .line 281
    .local v12, "signum":I
    const-string v14, "S"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 282
    const/4 v12, -0x1

    .line 283
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    int-to-double v0, v12

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    goto/16 :goto_0

    .line 289
    .end local v3    # "latRef":Ljava/lang/String;
    .end local v6    # "latitude":D
    .end local v12    # "signum":I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataRational()[Landroid/util/Rational;

    move-result-object v9

    .line 290
    .restart local v9    # "rationals":[Landroid/util/Rational;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/oneplus/media/ExifMetadata;->convertLatLong([Landroid/util/Rational;)D

    move-result-wide v10

    .line 291
    .local v10, "longitude":D
    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    cmpl-double v14, v10, v14

    if-eqz v14, :cond_0

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    .line 294
    .local v12, "signum":D
    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    cmpl-double v14, v12, v14

    if-nez v14, :cond_7

    .line 295
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 296
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    mul-double v16, v12, v10

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    goto/16 :goto_0

    .line 302
    .end local v9    # "rationals":[Landroid/util/Rational;
    .end local v10    # "longitude":D
    .end local v12    # "signum":D
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, "longRef":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 305
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 306
    .restart local v10    # "longitude":D
    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    cmpl-double v14, v10, v14

    if-nez v14, :cond_8

    .line 307
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 308
    :cond_8
    const/4 v12, 0x1

    .line 309
    .local v12, "signum":I
    const-string v14, "W"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 310
    const/4 v12, -0x1

    .line 311
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    int-to-double v0, v12

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    goto/16 :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processIFD0(Lcom/oneplus/media/IfdEntryEnumerator;)V
    .locals 2
    .param p1, "entryEnumerator"    # Lcom/oneplus/media/IfdEntryEnumerator;

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->currentEntryId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_0
    return-void

    .line 325
    :pswitch_0
    sget-object v0, Lcom/oneplus/media/ExifMetadata;->PROP_MAKE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    :pswitch_1
    sget-object v0, Lcom/oneplus/media/ExifMetadata;->PROP_MODEL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1}, Lcom/oneplus/media/IfdEntryEnumerator;->getEntryDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/media/ExifMetadata;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x10f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setLocationProp(Landroid/location/Location;)Z
    .locals 2
    .param p1, "value"    # Landroid/location/Location;

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/oneplus/media/ExifMetadata;->verifyAccess()V

    .line 349
    invoke-virtual {p0}, Lcom/oneplus/media/ExifMetadata;->verifyReleaseState()V

    .line 352
    iget-object v0, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    .line 353
    .local v0, "oldValue":Landroid/location/Location;
    iput-object p1, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    .line 356
    sget-object v1, Lcom/oneplus/media/ExifMetadata;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/media/ExifMetadata;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/media/ExifMetadata;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/oneplus/media/ExifMetadata;->m_Location:Landroid/location/Location;

    .line 168
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/base/BasicBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/media/ExifMetadata;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 339
    check-cast p2, Landroid/location/Location;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/media/ExifMetadata;->setLocationProp(Landroid/location/Location;)Z

    move-result v0

    .line 340
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BasicBaseObject;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
