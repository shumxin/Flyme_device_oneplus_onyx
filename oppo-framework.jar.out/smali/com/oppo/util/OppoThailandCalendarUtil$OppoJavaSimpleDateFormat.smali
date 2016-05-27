.class public Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;
.super Ljava/text/DateFormat;
.source "OppoThailandCalendarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/util/OppoThailandCalendarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OppoJavaSimpleDateFormat"
.end annotation


# static fields
.field static final PATTERN_CHARS:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzZLc"

.field private static final RFC_822_TIMEZONE_FIELD:I = 0x12

.field private static final STAND_ALONE_DAY_OF_WEEK_FIELD:I = 0x14

.field private static final STAND_ALONE_MONTH_FIELD:I = 0x13

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient creationYear:I

.field private defaultCenturyStart:Ljava/util/Date;

.field private formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 1710
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "defaultCenturyStart"

    const-class v4, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "formatData"

    const-class v4, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "pattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 637
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 638
    invoke-static {}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    .line 639
    new-instance v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .line 640
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 653
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 654
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .prologue
    .line 737
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 738
    invoke-direct {p0, p1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 739
    iput-object p1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    .line 740
    invoke-virtual {p2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .line 741
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 753
    invoke-direct {p0, p2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 754
    invoke-direct {p0, p1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 755
    iput-object p1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    .line 756
    new-instance v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-direct {v0, p2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .line 759
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x1

    .line 761
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 762
    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 763
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 764
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 765
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 766
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, -0x50

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 767
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->creationYear:I

    .line 768
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 769
    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V
    .locals 10
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "position"    # Ljava/text/FieldPosition;
    .param p4, "format"    # C
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;CI)V"
        }
    .end annotation

    .prologue
    .line 957
    .local p3, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v2, -0x1

    .line 958
    .local v2, "field":I
    const-string v7, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v7, p4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 959
    .local v4, "index":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    .line 960
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown pattern character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 963
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 964
    .local v0, "beginPosition":I
    const/4 v1, 0x0

    .line 965
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    packed-switch v4, :pswitch_data_0

    .line 1069
    :goto_0
    const/4 v7, -0x1

    if-eq v2, v7, :cond_1

    .line 1070
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct {p0, p1, p5, v7}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 1073
    :cond_1
    if-eqz p3, :cond_7

    .line 1074
    new-instance p2, Ljava/text/FieldPosition;

    .end local p2    # "position":Ljava/text/FieldPosition;
    invoke-direct {p2, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 1075
    .restart local p2    # "position":Ljava/text/FieldPosition;
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1076
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1077
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    :cond_2
    :goto_1
    return-void

    .line 967
    :pswitch_0
    sget-object v1, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    .line 968
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v7, v7, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v8, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 971
    :pswitch_1
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    .line 972
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 979
    .local v6, "year":I
    # invokes: Lcom/oppo/util/OppoThailandCalendarUtil;->isThaiCalendarEnabled()Z
    invoke-static {}, Lcom/oppo/util/OppoThailandCalendarUtil;->access$000()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x98b

    if-ge v6, v7, :cond_3

    .line 980
    add-int/lit16 v6, v6, 0x21f

    .line 983
    :cond_3
    const/4 v7, 0x2

    if-ne p5, v7, :cond_4

    .line 984
    const/4 v7, 0x2

    rem-int/lit8 v8, v6, 0x64

    invoke-direct {p0, p1, v7, v8}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 986
    :cond_4
    invoke-direct {p0, p1, p5, v6}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 990
    .end local v6    # "year":I
    :pswitch_2
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 991
    const/4 v7, 0x1

    invoke-direct {p0, p1, p5, v7}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;IZ)V

    goto :goto_0

    .line 994
    :pswitch_3
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 995
    const/4 v7, 0x0

    invoke-direct {p0, p1, p5, v7}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;IZ)V

    goto :goto_0

    .line 998
    :pswitch_4
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 999
    const/4 v2, 0x5

    .line 1000
    goto :goto_0

    .line 1002
    :pswitch_5
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    .line 1003
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1004
    .local v3, "hour":I
    if-nez v3, :cond_5

    const/16 v3, 0x18

    .end local v3    # "hour":I
    :cond_5
    invoke-direct {p0, p1, p5, v3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 1007
    :pswitch_6
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    .line 1008
    const/16 v2, 0xb

    .line 1009
    goto :goto_0

    .line 1011
    :pswitch_7
    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    .line 1012
    const/16 v2, 0xc

    .line 1013
    goto/16 :goto_0

    .line 1015
    :pswitch_8
    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    .line 1016
    const/16 v2, 0xd

    .line 1017
    goto/16 :goto_0

    .line 1019
    :pswitch_9
    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    .line 1020
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1021
    .local v5, "value":I
    invoke-direct {p0, p1, p5, v5}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    .line 1024
    .end local v5    # "value":I
    :pswitch_a
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 1025
    const/4 v7, 0x1

    invoke-direct {p0, p1, p5, v7}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_0

    .line 1028
    :pswitch_b
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 1029
    const/4 v7, 0x0

    invoke-direct {p0, p1, p5, v7}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_0

    .line 1032
    :pswitch_c
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 1033
    const/4 v2, 0x6

    .line 1034
    goto/16 :goto_0

    .line 1036
    :pswitch_d
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    .line 1037
    const/16 v2, 0x8

    .line 1038
    goto/16 :goto_0

    .line 1040
    :pswitch_e
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 1041
    const/4 v2, 0x3

    .line 1042
    goto/16 :goto_0

    .line 1044
    :pswitch_f
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 1045
    const/4 v2, 0x4

    .line 1046
    goto/16 :goto_0

    .line 1048
    :pswitch_10
    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    .line 1049
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v7, v7, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v8, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 1052
    :pswitch_11
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    .line 1053
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1054
    .restart local v3    # "hour":I
    if-nez v3, :cond_6

    const/16 v3, 0xc

    .end local v3    # "hour":I
    :cond_6
    invoke-direct {p0, p1, p5, v3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    .line 1057
    :pswitch_12
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    .line 1058
    const/16 v2, 0xa

    .line 1059
    goto/16 :goto_0

    .line 1061
    :pswitch_13
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 1062
    const/4 v7, 0x1

    invoke-direct {p0, p1, p5, v7}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_0

    .line 1065
    :pswitch_14
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 1066
    const/4 v7, 0x0

    invoke-direct {p0, p1, p5, v7}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_0

    .line 1080
    :cond_7
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    if-eq v7, v1, :cond_8

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getField()I

    move-result v7

    if-ne v7, v4, :cond_2

    :cond_8
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    if-nez v7, :cond_2

    .line 1083
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1084
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_1

    .line 965
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method private appendDayOfWeek(Ljava/lang/StringBuffer;IZ)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "standAlone"    # Z

    .prologue
    .line 1092
    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v1, v2, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 1093
    .local v1, "ld":Llibcore/icu/LocaleData;
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 1094
    if-eqz p3, :cond_0

    iget-object v0, v1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    .line 1100
    .local v0, "days":[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1101
    return-void

    .line 1094
    .end local v0    # "days":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v0, v2, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    goto :goto_0

    .line 1095
    :cond_1
    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    .line 1096
    if-eqz p3, :cond_2

    iget-object v0, v1, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    .restart local v0    # "days":[Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v0    # "days":[Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v2, v2, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v2, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    goto :goto_1

    .line 1098
    :cond_3
    if-eqz p3, :cond_4

    iget-object v0, v1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    .restart local v0    # "days":[Ljava/lang/String;
    :goto_2
    goto :goto_0

    .end local v0    # "days":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v0, v2, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    goto :goto_2
.end method

.method private appendMonth(Ljava/lang/StringBuffer;IZ)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "standAlone"    # Z

    .prologue
    const/4 v4, 0x2

    .line 1105
    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1106
    .local v1, "month":I
    if-gt p2, v4, :cond_0

    .line 1107
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 1121
    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v0, v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 1113
    .local v0, "ld":Llibcore/icu/LocaleData;
    const/4 v3, 0x4

    if-ne p2, v3, :cond_2

    .line 1114
    if-eqz p3, :cond_1

    iget-object v2, v0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    .line 1120
    .local v2, "months":[Ljava/lang/String;
    :goto_1
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1114
    .end local v2    # "months":[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v2, v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    goto :goto_1

    .line 1115
    :cond_2
    const/4 v3, 0x5

    if-ne p2, v3, :cond_4

    .line 1116
    if-eqz p3, :cond_3

    iget-object v2, v0, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    .restart local v2    # "months":[Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v2    # "months":[Ljava/lang/String;
    :cond_3
    iget-object v2, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    goto :goto_2

    .line 1118
    :cond_4
    if-eqz p3, :cond_5

    iget-object v2, v0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    .restart local v2    # "months":[Ljava/lang/String;
    :goto_3
    goto :goto_1

    .end local v2    # "months":[Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v2, v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    goto :goto_3
.end method

.method private appendNumber(Ljava/lang/StringBuffer;II)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "value"    # I

    .prologue
    .line 1180
    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v0

    .line 1181
    .local v0, "minimumIntegerDigits":I
    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1182
    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v1, v2, p1, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1183
    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1184
    return-void
.end method

.method private appendNumericTimeZone(Ljava/lang/StringBuffer;IZ)V
    .locals 8
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "generalTimeZone"    # Z

    .prologue
    const v7, 0x36ee80

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 1159
    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int v0, v2, v3

    .line 1160
    .local v0, "offset":I
    const/16 v1, 0x2b

    .line 1161
    .local v1, "sign":C
    if-gez v0, :cond_0

    .line 1162
    const/16 v1, 0x2d

    .line 1163
    neg-int v0, v0

    .line 1165
    :cond_0
    if-nez p3, :cond_1

    if-ne p2, v6, :cond_2

    .line 1166
    :cond_1
    const-string v2, "GMT"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1168
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1169
    div-int v2, v0, v7

    invoke-direct {p0, p1, v5, v2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 1170
    if-nez p3, :cond_3

    if-lt p2, v6, :cond_4

    .line 1171
    :cond_3
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1173
    :cond_4
    rem-int v2, v0, v7

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-direct {p0, p1, v5, v2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 1174
    return-void
.end method

.method private appendTimeZone(Ljava/lang/StringBuffer;IZ)V
    .locals 7
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "generalTimeZone"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1133
    if-eqz p3, :cond_3

    .line 1134
    iget-object v5, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1135
    .local v3, "tz":Ljava/util/TimeZone;
    iget-object v5, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 1136
    .local v1, "daylight":Z
    :goto_0
    const/4 v5, 0x4

    if-ge p2, v5, :cond_1

    .line 1137
    .local v2, "style":I
    :goto_1
    iget-object v4, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-boolean v4, v4, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->customZoneStrings:Z

    if-nez v4, :cond_2

    .line 1138
    iget-object v4, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v4, v4, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v1, v2, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1154
    .end local v1    # "daylight":Z
    .end local v2    # "style":I
    .end local v3    # "tz":Ljava/util/TimeZone;
    :goto_2
    return-void

    .restart local v3    # "tz":Ljava/util/TimeZone;
    :cond_0
    move v1, v2

    .line 1135
    goto :goto_0

    .restart local v1    # "daylight":Z
    :cond_1
    move v2, v4

    .line 1136
    goto :goto_1

    .line 1145
    .restart local v2    # "style":I
    :cond_2
    iget-object v4, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v4, v4, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1, v2}, Llibcore/icu/TimeZoneNames;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 1146
    .local v0, "custom":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1153
    .end local v0    # "custom":Ljava/lang/String;
    .end local v1    # "daylight":Z
    .end local v2    # "style":I
    .end local v3    # "tz":Ljava/util/TimeZone;
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto :goto_2
.end method

.method private static convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "fromChars"    # Ljava/lang/String;
    .param p2, "toChars"    # Ljava/lang/String;
    .param p3, "check"    # Z

    .prologue
    .line 1673
    if-nez p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1698
    .end local p0    # "template":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1676
    .restart local p0    # "template":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .line 1677
    .local v5, "quote":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1678
    .local v4, "output":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1679
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_7

    .line 1681
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1682
    .local v3, "next":C
    const/16 v6, 0x27

    if-ne v3, v6, :cond_1

    .line 1683
    if-nez v5, :cond_2

    const/4 v5, 0x1

    .line 1685
    :cond_1
    :goto_2
    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "index":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_3

    .line 1686
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1679
    .end local v1    # "index":I
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1683
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 1687
    :cond_3
    if-eqz p3, :cond_6

    if-nez v5, :cond_6

    const/16 v6, 0x61

    if-lt v3, v6, :cond_4

    const/16 v6, 0x7a

    if-le v3, v6, :cond_5

    :cond_4
    const/16 v6, 0x41

    if-lt v3, v6, :cond_6

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_6

    .line 1689
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid pattern character \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1692
    :cond_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1695
    .end local v3    # "next":C
    :cond_7
    if-eqz v5, :cond_8

    .line 1696
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1698
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static defaultPattern()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 810
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 811
    .local v0, "localeData":Llibcore/icu/LocaleData;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;
    .locals 1
    .param p1, "position"    # Ljava/text/ParsePosition;
    .param p2, "offset"    # I
    .param p3, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 1187
    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1188
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1189
    const/4 v0, 0x0

    return-object v0
.end method

.method private formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 11
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "field"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 904
    .local p4, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v10, 0x0

    .line 905
    .local v10, "quote":Z
    const/4 v7, -0x1

    .local v7, "last":I
    const/4 v5, 0x0

    .line 906
    .local v5, "count":I
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 907
    if-eqz p3, :cond_0

    .line 908
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 909
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    .line 913
    .local v9, "patternLength":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_b

    .line 914
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 915
    .local v8, "next":I
    const/16 v0, 0x27

    if-ne v8, v0, :cond_4

    .line 916
    if-lez v5, :cond_1

    .line 917
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 918
    const/4 v5, 0x0

    .line 920
    :cond_1
    if-ne v7, v8, :cond_2

    .line 921
    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 922
    const/4 v7, -0x1

    .line 926
    :goto_1
    if-nez v10, :cond_3

    const/4 v10, 0x1

    .line 913
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 924
    :cond_2
    move v7, v8

    goto :goto_1

    .line 926
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 929
    :cond_4
    if-nez v10, :cond_9

    if-eq v7, v8, :cond_6

    const/16 v0, 0x61

    if-lt v8, v0, :cond_5

    const/16 v0, 0x7a

    if-le v8, v0, :cond_6

    :cond_5
    const/16 v0, 0x41

    if-lt v8, v0, :cond_9

    const/16 v0, 0x5a

    if-gt v8, v0, :cond_9

    .line 931
    :cond_6
    if-ne v7, v8, :cond_7

    .line 932
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 934
    :cond_7
    if-lez v5, :cond_8

    .line 935
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 937
    :cond_8
    move v7, v8

    .line 938
    const/4 v5, 0x1

    goto :goto_2

    .line 941
    :cond_9
    if-lez v5, :cond_a

    .line 942
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 943
    const/4 v5, 0x0

    .line 945
    :cond_a
    const/4 v7, -0x1

    .line 946
    int-to-char v0, v8

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 949
    .end local v8    # "next":I
    :cond_b
    if-lez v5, :cond_c

    .line 950
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 952
    :cond_c
    return-object p2
.end method

.method private formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;
    .locals 8
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 864
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 865
    .local v2, "buffer":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 868
    .local v3, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/FieldPosition;>;"
    const/4 v6, 0x0

    invoke-direct {p0, p1, v2, v6, v3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 871
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 874
    .local v0, "as":Ljava/text/AttributedString;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/FieldPosition;

    .line 875
    .local v5, "pos":Ljava/text/FieldPosition;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    .line 876
    .local v1, "attribute":Ljava/text/Format$Field;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v6

    invoke-virtual {v5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    invoke-virtual {v0, v1, v1, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    .line 880
    .end local v1    # "attribute":Ljava/text/Format$Field;
    .end local v5    # "pos":Ljava/text/FieldPosition;
    :cond_0
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v6

    return-object v6
.end method

.method private parse(Ljava/lang/String;ICI)I
    .locals 17
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "format"    # C
    .param p4, "count"    # I

    .prologue
    .line 1237
    const-string v3, "GyMdkHmsSEDFwWahKzZLc"

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 1238
    .local v13, "index":I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_0

    .line 1239
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown pattern character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1241
    :cond_0
    const/4 v10, -0x1

    .line 1243
    .local v10, "field":I
    const/4 v7, 0x0

    .line 1244
    .local v7, "absolute":I
    if-gez p4, :cond_1

    .line 1245
    move/from16 v0, p4

    neg-int v0, v0

    move/from16 p4, v0

    .line 1246
    move/from16 v7, p4

    .line 1248
    :cond_1
    packed-switch v13, :pswitch_data_0

    .line 1341
    :goto_0
    const/4 v3, -0x1

    if-eq v10, v3, :cond_2

    .line 1342
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v6 .. v11}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result p2

    .line 1344
    .end local p2    # "offset":I
    :cond_2
    :goto_1
    return p2

    .line 1250
    .restart local p2    # "offset":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v3, v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p2

    goto :goto_1

    .line 1252
    :pswitch_1
    const/4 v3, 0x3

    move/from16 v0, p4

    if-lt v0, v3, :cond_3

    .line 1253
    const/4 v10, 0x1

    goto :goto_0

    .line 1255
    :cond_3
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1256
    .local v14, "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 1257
    .local v15, "result":Ljava/lang/Number;
    if-nez v15, :cond_4

    .line 1258
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto :goto_1

    .line 1260
    :cond_4
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 1262
    .local v16, "year":I
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int v3, v3, p2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    if-ltz v16, :cond_5

    .line 1263
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->creationYear:I

    div-int/lit8 v3, v3, 0x64

    mul-int/lit8 v3, v3, 0x64

    add-int v16, v16, v3

    .line 1264
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->creationYear:I

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    .line 1265
    add-int/lit8 v16, v16, 0x64

    .line 1268
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 1269
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto :goto_1

    .line 1273
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    .end local v16    # "year":I
    :pswitch_2
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v8}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseMonth(Ljava/lang/String;IIIZ)I

    move-result p2

    goto :goto_1

    .line 1275
    :pswitch_3
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v8}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseMonth(Ljava/lang/String;IIIZ)I

    move-result p2

    goto :goto_1

    .line 1277
    :pswitch_4
    const/4 v10, 0x5

    .line 1278
    goto/16 :goto_0

    .line 1280
    :pswitch_5
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1281
    .restart local v14    # "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 1282
    .restart local v15    # "result":Ljava/lang/Number;
    if-nez v15, :cond_6

    .line 1283
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto/16 :goto_1

    .line 1285
    :cond_6
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 1286
    .local v12, "hour":I
    const/16 v3, 0x18

    if-ne v12, v3, :cond_7

    .line 1287
    const/4 v12, 0x0

    .line 1289
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 1290
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto/16 :goto_1

    .line 1292
    .end local v12    # "hour":I
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    :pswitch_6
    const/16 v10, 0xb

    .line 1293
    goto/16 :goto_0

    .line 1295
    :pswitch_7
    const/16 v10, 0xc

    .line 1296
    goto/16 :goto_0

    .line 1298
    :pswitch_8
    const/16 v10, 0xd

    .line 1299
    goto/16 :goto_0

    .line 1301
    :pswitch_9
    const/16 v10, 0xe

    .line 1302
    goto/16 :goto_0

    .line 1304
    :pswitch_a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;IZ)I

    move-result p2

    goto/16 :goto_1

    .line 1306
    :pswitch_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;IZ)I

    move-result p2

    goto/16 :goto_1

    .line 1308
    :pswitch_c
    const/4 v10, 0x6

    .line 1309
    goto/16 :goto_0

    .line 1311
    :pswitch_d
    const/16 v10, 0x8

    .line 1312
    goto/16 :goto_0

    .line 1314
    :pswitch_e
    const/4 v10, 0x3

    .line 1315
    goto/16 :goto_0

    .line 1317
    :pswitch_f
    const/4 v10, 0x4

    .line 1318
    goto/16 :goto_0

    .line 1320
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v3, v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_1

    .line 1322
    :pswitch_11
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1323
    .restart local v14    # "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 1324
    .restart local v15    # "result":Ljava/lang/Number;
    if-nez v15, :cond_8

    .line 1325
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto/16 :goto_1

    .line 1327
    :cond_8
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 1328
    .restart local v12    # "hour":I
    const/16 v3, 0xc

    if-ne v12, v3, :cond_9

    .line 1329
    const/4 v12, 0x0

    .line 1331
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 1332
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto/16 :goto_1

    .line 1334
    .end local v12    # "hour":I
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    :pswitch_12
    const/16 v10, 0xa

    .line 1335
    goto/16 :goto_0

    .line 1337
    :pswitch_13
    invoke-direct/range {p0 .. p2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_1

    .line 1339
    :pswitch_14
    invoke-direct/range {p0 .. p2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_1

    .line 1248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method private parseDayOfWeek(Ljava/lang/String;IZ)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "standAlone"    # Z

    .prologue
    const/4 v3, 0x7

    .line 1348
    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v1, v2, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 1349
    .local v1, "ld":Llibcore/icu/LocaleData;
    if-eqz p3, :cond_1

    iget-object v2, v1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    .line 1352
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1353
    if-eqz p3, :cond_2

    iget-object v2, v1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    :goto_1
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    .line 1357
    :cond_0
    return v0

    .line 1349
    .end local v0    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v2, v2, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    goto :goto_0

    .line 1353
    .restart local v0    # "index":I
    :cond_2
    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v2, v2, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    goto :goto_1
.end method

.method private parseMonth(Ljava/lang/String;IIIZ)I
    .locals 8
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "absolute"    # I
    .param p5, "standAlone"    # Z

    .prologue
    const/4 v4, 0x2

    .line 1361
    if-gt p3, v4, :cond_1

    .line 1362
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p4

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result v6

    .line 1373
    :cond_0
    :goto_0
    return v6

    .line 1364
    :cond_1
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v7, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 1365
    .local v7, "ld":Llibcore/icu/LocaleData;
    if-eqz p5, :cond_2

    iget-object v0, v7, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    :goto_1
    invoke-direct {p0, p1, p2, v0, v4}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    .line 1368
    .local v6, "index":I
    if-gez v6, :cond_0

    .line 1369
    if-eqz p5, :cond_3

    iget-object v0, v7, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    :goto_2
    invoke-direct {p0, p1, p2, v0, v4}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    goto :goto_0

    .line 1365
    .end local v6    # "index":I
    :cond_2
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v0, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    goto :goto_1

    .line 1369
    .restart local v6    # "index":I
    :cond_3
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v0, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    goto :goto_2
.end method

.method private parseNumber(ILjava/lang/String;III)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "field"    # I
    .param p5, "skew"    # I

    .prologue
    .line 1521
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, p3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1522
    .local v0, "position":Ljava/text/ParsePosition;
    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 1523
    .local v1, "result":Ljava/lang/Number;
    if-nez v1, :cond_0

    .line 1524
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 1527
    :goto_0
    return v2

    .line 1526
    :cond_0
    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {v2, p4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1527
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    goto :goto_0
.end method

.method private parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 12
    .param p1, "max"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 1475
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 1476
    .local v4, "length":I
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 1477
    .local v2, "index":I
    if-lez p1, :cond_0

    sub-int v8, v4, v2

    if-ge p1, v8, :cond_0

    .line 1478
    add-int v4, v2, p1

    .line 1480
    :cond_0
    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_2

    .line 1481
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1483
    :cond_2
    if-nez p1, :cond_4

    .line 1484
    invoke-virtual {p3, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1485
    iget-object v8, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v8, p2, p3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v6

    .line 1492
    .local v6, "n":Ljava/lang/Number;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 1493
    iget-object v8, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    instance-of v8, v8, Ljava/text/DecimalFormat;

    if-eqz v8, :cond_3

    .line 1494
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    check-cast v0, Ljava/text/DecimalFormat;

    .line 1495
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1496
    .local v3, "lastChar":C
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v8

    invoke-virtual {v8}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v5

    .line 1497
    .local v5, "minusSign":C
    if-ne v3, v5, :cond_3

    .line 1498
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1499
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p3, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1517
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v3    # "lastChar":C
    .end local v5    # "minusSign":C
    .end local v6    # "n":Ljava/lang/Number;
    :cond_3
    :goto_1
    return-object v6

    .line 1506
    :cond_4
    const/4 v7, 0x0

    .line 1508
    .local v7, "result":I
    :goto_2
    if-ge v2, v4, :cond_5

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .local v1, "digit":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_5

    .line 1509
    mul-int/lit8 v8, v7, 0xa

    add-int v7, v8, v1

    .line 1510
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1512
    .end local v1    # "digit":I
    :cond_5
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-ne v2, v8, :cond_6

    .line 1513
    invoke-virtual {p3, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1514
    const/4 v6, 0x0

    goto :goto_1

    .line 1516
    :cond_6
    invoke-virtual {p3, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1517
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1
.end method

.method private parseText(Ljava/lang/String;I[Ljava/lang/String;I)I
    .locals 9
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "text"    # [Ljava/lang/String;
    .param p4, "field"    # I

    .prologue
    const/4 v8, -0x1

    .line 1531
    const/4 v6, -0x1

    .line 1532
    .local v6, "found":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p3

    if-ge v7, v0, :cond_3

    .line 1533
    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1532
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1536
    :cond_1
    const/4 v1, 0x1

    aget-object v3, p3, v7

    const/4 v4, 0x0

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    if-eq v6, v8, :cond_2

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v1, p3, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1540
    :cond_2
    move v6, v7

    goto :goto_1

    .line 1544
    :cond_3
    if-eq v6, v8, :cond_4

    .line 1545
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1546
    aget-object v0, p3, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 1548
    :goto_2
    return v0

    :cond_4
    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private parseTimeZone(Ljava/lang/String;I)I
    .locals 23
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 1552
    const-string v2, "GMT"

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    .line 1553
    .local v10, "foundGMT":Z
    if-eqz v10, :cond_0

    .line 1554
    add-int/lit8 p2, p2, 0x3

    .line 1557
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, p2

    if-ge v0, v2, :cond_7

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v21

    .local v21, "sign":C
    const/16 v2, 0x2b

    move/from16 v0, v21

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2d

    move/from16 v0, v21

    if-ne v0, v2, :cond_7

    .line 1558
    :cond_1
    new-instance v17, Ljava/text/ParsePosition;

    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1559
    .local v17, "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v19

    .line 1560
    .local v19, "result":Ljava/lang/Number;
    if-nez v19, :cond_2

    .line 1561
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 p2, v2, -0x1

    .line 1620
    .end local v17    # "position":Ljava/text/ParsePosition;
    .end local v19    # "result":Ljava/lang/Number;
    .end local v21    # "sign":C
    .end local p2    # "offset":I
    :goto_0
    return p2

    .line 1563
    .restart local v17    # "position":Ljava/text/ParsePosition;
    .restart local v19    # "result":Ljava/lang/Number;
    .restart local v21    # "sign":C
    .restart local p2    # "offset":I
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 1564
    .local v11, "hour":I
    const v2, 0x36ee80

    mul-int v18, v11, v2

    .line 1565
    .local v18, "raw":I
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result v14

    .line 1566
    .local v14, "index":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v14, v2, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_6

    .line 1567
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v19

    .line 1569
    if-nez v19, :cond_3

    .line 1570
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 p2, v2, -0x1

    goto :goto_0

    .line 1572
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 1573
    .local v16, "minute":I
    const v2, 0xea60

    mul-int v2, v2, v16

    add-int v18, v18, v2

    .line 1577
    .end local v16    # "minute":I
    :cond_4
    :goto_1
    const/16 v2, 0x2d

    move/from16 v0, v21

    if-ne v0, v2, :cond_5

    .line 1578
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    .line 1580
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, ""

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1581
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto :goto_0

    .line 1574
    :cond_6
    const/16 v2, 0x18

    if-lt v11, v2, :cond_4

    .line 1575
    div-int/lit8 v2, v11, 0x64

    const v3, 0x36ee80

    mul-int/2addr v2, v3

    rem-int/lit8 v3, v11, 0x64

    const v4, 0xea60

    mul-int/2addr v3, v4

    add-int v18, v2, v3

    goto :goto_1

    .line 1583
    .end local v11    # "hour":I
    .end local v14    # "index":I
    .end local v17    # "position":Ljava/text/ParsePosition;
    .end local v18    # "raw":I
    .end local v19    # "result":Ljava/lang/Number;
    .end local v21    # "sign":C
    :cond_7
    if-eqz v10, :cond_8

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_0

    .line 1587
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v8

    .local v8, "arr$":[[Ljava/lang/String;
    array-length v15, v8

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_2
    if-ge v13, v15, :cond_10

    aget-object v20, v8, v13

    .line 1588
    .local v20, "row":[Ljava/lang/String;
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_3
    const/4 v2, 0x5

    if-ge v12, v2, :cond_f

    .line 1589
    aget-object v2, v20, v12

    if-nez v2, :cond_a

    .line 1588
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1595
    :cond_a
    const/4 v3, 0x1

    aget-object v5, v20, v12

    const/4 v6, 0x0

    aget-object v2, v20, v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1596
    const/4 v2, 0x0

    aget-object v2, v20, v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    .line 1597
    .local v22, "zone":Ljava/util/TimeZone;
    if-nez v22, :cond_b

    .line 1598
    move/from16 v0, p2

    neg-int v2, v0

    add-int/lit8 p2, v2, -0x1

    goto/16 :goto_0

    .line 1600
    :cond_b
    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    .line 1601
    .restart local v18    # "raw":I
    const/4 v2, 0x3

    if-eq v12, v2, :cond_c

    const/4 v2, 0x4

    if-ne v12, v2, :cond_e

    .line 1604
    :cond_c
    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v9

    .line 1608
    .local v9, "dstSavings":I
    if-nez v9, :cond_d

    .line 1611
    const v9, 0x36ee80

    .line 1613
    :cond_d
    add-int v18, v18, v9

    .line 1615
    .end local v9    # "dstSavings":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, ""

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1616
    aget-object v2, v20, v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int p2, p2, v2

    goto/16 :goto_0

    .line 1587
    .end local v18    # "raw":I
    .end local v22    # "zone":Ljava/util/TimeZone;
    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1620
    .end local v12    # "i":I
    .end local v20    # "row":[Ljava/lang/String;
    :cond_10
    move/from16 v0, p2

    neg-int v2, v0

    add-int/lit8 p2, v2, -0x1

    goto/16 :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1728
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 1729
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v3, "serialVersionOnStream"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 1731
    .local v2, "version":I
    if-lez v2, :cond_0

    .line 1732
    const-string v3, "defaultCenturyStart"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 1736
    .local v0, "date":Ljava/util/Date;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 1737
    const-string v3, "formatData"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iput-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .line 1738
    const-string v3, "pattern"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1739
    return-void

    .line 1734
    .end local v0    # "date":Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .restart local v0    # "date":Ljava/util/Date;
    goto :goto_0
.end method

.method private validateFormat(C)V
    .locals 4
    .param p1, "format"    # C

    .prologue
    .line 664
    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 665
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 666
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown pattern character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    :cond_0
    return-void
.end method

.method private validatePattern(Ljava/lang/String;)V
    .locals 8
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 679
    const/4 v5, 0x0

    .line 680
    .local v5, "quote":Z
    const/4 v2, -0x1

    .local v2, "last":I
    const/4 v0, 0x0

    .line 682
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 683
    .local v4, "patternLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_a

    .line 684
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 685
    .local v3, "next":I
    const/16 v6, 0x27

    if-ne v3, v6, :cond_3

    .line 686
    if-lez v0, :cond_0

    .line 687
    int-to-char v6, v2

    invoke-direct {p0, v6}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->validateFormat(C)V

    .line 688
    const/4 v0, 0x0

    .line 690
    :cond_0
    if-ne v2, v3, :cond_1

    .line 691
    const/4 v2, -0x1

    .line 695
    :goto_1
    if-nez v5, :cond_2

    const/4 v5, 0x1

    .line 683
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    :cond_1
    move v2, v3

    goto :goto_1

    .line 695
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 698
    :cond_3
    if-nez v5, :cond_8

    if-eq v2, v3, :cond_5

    const/16 v6, 0x61

    if-lt v3, v6, :cond_4

    const/16 v6, 0x7a

    if-le v3, v6, :cond_5

    :cond_4
    const/16 v6, 0x41

    if-lt v3, v6, :cond_8

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_8

    .line 700
    :cond_5
    if-ne v2, v3, :cond_6

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 703
    :cond_6
    if-lez v0, :cond_7

    .line 704
    int-to-char v6, v2

    invoke-direct {p0, v6}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->validateFormat(C)V

    .line 706
    :cond_7
    move v2, v3

    .line 707
    const/4 v0, 0x1

    goto :goto_2

    .line 710
    :cond_8
    if-lez v0, :cond_9

    .line 711
    int-to-char v6, v2

    invoke-direct {p0, v6}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->validateFormat(C)V

    .line 712
    const/4 v0, 0x0

    .line 714
    :cond_9
    const/4 v2, -0x1

    goto :goto_2

    .line 717
    .end local v3    # "next":I
    :cond_a
    if-lez v0, :cond_b

    .line 718
    int-to-char v6, v2

    invoke-direct {p0, v6}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->validateFormat(C)V

    .line 721
    :cond_b
    if-eqz v5, :cond_c

    .line 722
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 724
    :cond_c
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1718
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1719
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "defaultCenturyStart"

    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1720
    const-string v1, "formatData"

    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1721
    const-string v1, "pattern"

    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1722
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1723
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1724
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 778
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    .line 779
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 790
    invoke-direct {p0, p1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 791
    iput-object p1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    .line 792
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 803
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;

    .line 804
    .local v0, "clone":Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;
    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iput-object v1, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .line 805
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 806
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 827
    if-ne p0, p1, :cond_1

    .line 834
    :cond_0
    :goto_0
    return v1

    .line 830
    :cond_1
    instance-of v3, p1, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;

    if-nez v3, :cond_2

    move v1, v2

    .line 831
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 833
    check-cast v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;

    .line 834
    .local v0, "simple":Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v3, v4}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPos"    # Ljava/text/FieldPosition;

    .prologue
    .line 1211
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 850
    if-nez p1, :cond_0

    .line 851
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "object == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 854
    check-cast p1, Ljava/util/Date;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    .line 857
    :goto_0
    return-object v0

    .line 856
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 857
    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    goto :goto_0

    .line 859
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormatSymbols()Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1233
    invoke-super {p0}, Ljava/text/DateFormat;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->creationYear:I

    add-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 15
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 1395
    const/4 v10, 0x0

    .line 1396
    .local v10, "quote":Z
    const/4 v5, -0x1

    .local v5, "last":I
    const/4 v1, 0x0

    .local v1, "count":I
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    .line 1397
    .local v8, "offset":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1398
    .local v6, "length":I
    iget-object v13, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 1399
    iget-object v13, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    .line 1400
    .local v12, "zone":Ljava/util/TimeZone;
    iget-object v13, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    .line 1401
    .local v9, "patternLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_10

    .line 1402
    iget-object v13, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1403
    .local v7, "next":I
    const/16 v13, 0x27

    if-ne v7, v13, :cond_6

    .line 1404
    if-lez v1, :cond_1

    .line 1405
    int-to-char v13, v5

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8, v13, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v8

    if-gez v8, :cond_0

    .line 1406
    neg-int v13, v8

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13, v12}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v2

    .line 1471
    .end local v7    # "next":I
    :goto_1
    return-object v2

    .line 1408
    .restart local v7    # "next":I
    :cond_0
    const/4 v1, 0x0

    .line 1410
    :cond_1
    if-ne v5, v7, :cond_4

    .line 1411
    if-ge v8, v6, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x27

    if-eq v13, v14, :cond_3

    .line 1412
    :cond_2
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v8, v12}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v2

    goto :goto_1

    .line 1414
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 1415
    const/4 v5, -0x1

    .line 1419
    :goto_2
    if-nez v10, :cond_5

    const/4 v10, 0x1

    .line 1401
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1417
    :cond_4
    move v5, v7

    goto :goto_2

    .line 1419
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 1422
    :cond_6
    if-nez v10, :cond_b

    if-eq v5, v7, :cond_8

    const/16 v13, 0x61

    if-lt v7, v13, :cond_7

    const/16 v13, 0x7a

    if-le v7, v13, :cond_8

    :cond_7
    const/16 v13, 0x41

    if-lt v7, v13, :cond_b

    const/16 v13, 0x5a

    if-gt v7, v13, :cond_b

    .line 1424
    :cond_8
    if-ne v5, v7, :cond_9

    .line 1425
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1427
    :cond_9
    if-lez v1, :cond_a

    .line 1428
    int-to-char v13, v5

    neg-int v14, v1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8, v13, v14}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v8

    if-gez v8, :cond_a

    .line 1429
    neg-int v13, v8

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13, v12}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v2

    goto :goto_1

    .line 1432
    :cond_a
    move v5, v7

    .line 1433
    const/4 v1, 0x1

    goto :goto_3

    .line 1436
    :cond_b
    if-lez v1, :cond_d

    .line 1437
    int-to-char v13, v5

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8, v13, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v8

    if-gez v8, :cond_c

    .line 1438
    neg-int v13, v8

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13, v12}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v2

    goto :goto_1

    .line 1440
    :cond_c
    const/4 v1, 0x0

    .line 1442
    :cond_d
    const/4 v5, -0x1

    .line 1443
    if-ge v8, v6, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v7, :cond_f

    .line 1444
    :cond_e
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v8, v12}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v2

    goto :goto_1

    .line 1446
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1449
    .end local v7    # "next":I
    :cond_10
    if-lez v1, :cond_11

    .line 1450
    int-to-char v13, v5

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8, v13, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v8

    if-gez v8, :cond_11

    .line 1451
    neg-int v13, v8

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13, v12}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v2

    goto/16 :goto_1

    .line 1458
    :cond_11
    :try_start_0
    iget-object v13, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 1459
    .local v11, "year":I
    const/16 v13, 0x98b

    if-le v11, v13, :cond_12

    .line 1460
    add-int/lit16 v11, v11, -0x21f

    .line 1461
    iget-object v13, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14, v11}, Ljava/util/Calendar;->set(II)V

    .line 1465
    :cond_12
    iget-object v13, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1469
    .local v2, "date":Ljava/util/Date;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1470
    iget-object v13, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v13, v12}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_1

    .line 1466
    .end local v2    # "date":Ljava/util/Date;
    .end local v11    # "year":I
    :catch_0
    move-exception v3

    .line 1467
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v8, v12}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 1647
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1648
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1649
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1650
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->creationYear:I

    .line 1651
    return-void
.end method

.method public setDateFormatSymbols(Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;)V
    .locals 1
    .param p1, "value"    # Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .prologue
    .line 1659
    invoke-virtual {p1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .line 1660
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
