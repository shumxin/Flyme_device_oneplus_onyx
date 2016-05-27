.class Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;
.super Ljava/lang/Object;
.source "OppoThailandCalendarUtil.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/util/OppoThailandCalendarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OppoDateFormatSymbols"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field ampms:[Ljava/lang/String;

.field transient customZoneStrings:Z

.field eras:[Ljava/lang/String;

.field private localPatternChars:Ljava/lang/String;

.field final transient locale:Ljava/util/Locale;

.field transient localeData:Llibcore/icu/LocaleData;

.field months:[Ljava/lang/String;

.field shortMonths:[Ljava/lang/String;

.field shortWeekdays:[Ljava/lang/String;

.field weekdays:[Ljava/lang/String;

.field zoneStrings:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1804
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 1805
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1814
    iput-object p1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    .line 1815
    const-string v0, "GyMdkHmsSEDFwWahKzZLc"

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 1816
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 1820
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 1821
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v0, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    .line 1822
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    .line 1823
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 1824
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 1825
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 1826
    return-void
.end method

.method private static clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [[Ljava/lang/String;

    .prologue
    .line 2056
    array-length v2, p0

    new-array v1, v2, [[Ljava/lang/String;

    .line 2057
    .local v1, "result":[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2058
    aget-object v2, p0, v0

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v1, v0

    .line 2057
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2060
    :cond_0
    return-object v1
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1863
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatSymbolsLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;
    .locals 1

    .prologue
    .line 1836
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->getInstance(Ljava/util/Locale;)Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1848
    if-nez p0, :cond_0

    .line 1849
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1851
    :cond_0
    new-instance v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-direct {v0, p0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1867
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1868
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 1869
    return-void
.end method

.method private static timeZoneStringsEqual(Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;)Z
    .locals 2
    .param p0, "lhs"    # Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;
    .param p1, "rhs"    # Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    iget-object v1, p1, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1919
    const/4 v0, 0x1

    .line 1922
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1872
    invoke-virtual {p0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    .line 1873
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1874
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1879
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1880
    :catch_0
    move-exception v0

    .line 1881
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1895
    if-ne p0, p1, :cond_1

    .line 1902
    :cond_0
    :goto_0
    return v1

    .line 1898
    :cond_1
    instance-of v3, p1, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    if-nez v3, :cond_2

    move v1, v2

    .line 1899
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1901
    check-cast v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .line 1902
    .local v0, "rhs":Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;
    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->timeZoneStringsEqual(Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAmPmStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEras()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPatternChars()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localPatternChars:Ljava/lang/String;

    return-object v0
.end method

.method public getMonths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getShortWeekdays()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getWeekdays()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getZoneStrings()[[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2034
    invoke-virtual {p0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v4

    .line 2037
    .local v4, "result":[[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v5, v0, v1

    .line 2038
    .local v5, "zone":[Ljava/lang/String;
    aget-object v2, v5, v9

    .line 2039
    .local v2, "id":Ljava/lang/String;
    aget-object v6, v5, v8

    if-nez v6, :cond_0

    .line 2040
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v9, v8, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 2042
    :cond_0
    aget-object v6, v5, v10

    if-nez v6, :cond_1

    .line 2043
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v9, v9, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 2045
    :cond_1
    aget-object v6, v5, v11

    if-nez v6, :cond_2

    .line 2046
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v8, v8, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 2048
    :cond_2
    aget-object v6, v5, v12

    if-nez v6, :cond_3

    .line 2049
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v8, v9, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    .line 2037
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2052
    .end local v2    # "id":Ljava/lang/String;
    .end local v5    # "zone":[Ljava/lang/String;
    :cond_4
    return-object v4
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 2065
    invoke-virtual {p0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v6

    .line 2067
    .local v6, "zoneStrings":[[Ljava/lang/String;
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 2068
    .local v2, "hashCode":I
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 2069
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 2068
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2071
    .end local v1    # "element":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 2072
    .restart local v1    # "element":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 2071
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2074
    .end local v1    # "element":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 2075
    .restart local v1    # "element":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 2074
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2077
    .end local v1    # "element":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 2078
    .restart local v1    # "element":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 2077
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2080
    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_4

    aget-object v1, v0, v3

    .line 2081
    .restart local v1    # "element":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 2080
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2083
    .end local v1    # "element":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_5

    aget-object v1, v0, v3

    .line 2084
    .restart local v1    # "element":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 2083
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2086
    .end local v1    # "element":Ljava/lang/String;
    :cond_5
    move-object v0, v6

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v5, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_8

    aget-object v1, v0, v3

    .line 2087
    .local v1, "element":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_7
    array-length v7, v1

    if-ge v4, v7, :cond_7

    .line 2088
    aget-object v7, v1, v4

    if-eqz v7, :cond_6

    .line 2089
    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 2087
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2086
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2093
    .end local v1    # "element":[Ljava/lang/String;
    .end local v4    # "j":I
    :cond_8
    return v2
.end method

.method declared-synchronized internalZoneStrings()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1792
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/TimeZoneNames;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 1795
    :cond_0
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->zoneStrings:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1792
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAmPmStrings([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 2103
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 2104
    return-void
.end method

.method public setEras([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 2114
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    .line 2115
    return-void
.end method

.method public setLocalPatternChars(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 2125
    if-nez p1, :cond_0

    .line 2126
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2128
    :cond_0
    iput-object p1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 2129
    return-void
.end method

.method public setMonths([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 2139
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    .line 2140
    return-void
.end method

.method public setShortMonths([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 2150
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 2151
    return-void
.end method

.method public setShortWeekdays([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 2161
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 2162
    return-void
.end method

.method public setWeekdays([Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 2172
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 2173
    return-void
.end method

.method public setZoneStrings([[Ljava/lang/String;)V
    .locals 7
    .param p1, "zoneStrings"    # [[Ljava/lang/String;

    .prologue
    .line 2183
    if-nez p1, :cond_0

    .line 2184
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "zoneStrings == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2186
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 2187
    .local v3, "row":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 2188
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".length < 5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2186
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2191
    .end local v3    # "row":[Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 2192
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->customZoneStrings:Z

    .line 2193
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[amPmStrings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",customZoneStrings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->customZoneStrings:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",eras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localPatternChars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",months="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shortMonths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shortWeekdays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",weekdays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",zoneStrings=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
