.class public Lcom/android/internal/inputmethod/OppoIMEUtils;
.super Ljava/lang/Object;
.source "OppoIMEUtils.java"


# static fields
.field private static final REGION_DEGUB:Z = false

.field private static final REGION_TAG:Ljava/lang/String; = "RegionIME"

.field private static final TH_IME:Ljava/lang/String; = "com.oppo.keyboard/.GoKeyboard"

.field private static final US_IME:Ljava/lang/String; = "com.google.android.inputmethod.latin/com.android.inputmethod.latin.LatinIME"

.field private static final VN_IME:Ljava/lang/String; = "kynam.ime.gotiengviet/.IME"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegionFilteredInputMethodList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const-string v4, "persist.sys.oppo.region"

    const-string v5, "CN"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "region":Ljava/lang/String;
    const-string v4, "CN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_0
    return-object p0

    .line 117
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 118
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 121
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "filteredInputMethodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 123
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 128
    .local v2, "im":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/inputmethod/OppoIMEUtils;->isRegionValidIME(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 129
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "im":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    move-object p0, v0

    .line 140
    goto :goto_0
.end method

.method public static isChinaRegion()Z
    .locals 3

    .prologue
    .line 144
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "region":Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isRegionValidIME(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "region"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v1, "CN"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const/4 v0, 0x1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    :cond_2
    const-string v1, "RegionIME"

    const-string v2, "isRegionValidIME(), id is wrong !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_3
    const/4 v0, 0x0

    .line 61
    .local v0, "ret":Z
    const-string v1, "VN"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    const-string v1, "com.oppo.keyboard/.GoKeyboard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    :cond_4
    const-string v1, "kynam.ime.gotiengviet/.IME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRegionValidSystemIME(Ljava/lang/String;)Z
    .locals 7
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    const-string v5, "persist.sys.oppo.region"

    const-string v6, "CN"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "region":Ljava/lang/String;
    const-string v5, "com.oppo.keyboard/.GoKeyboard"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "kynam.ime.gotiengviet/.IME"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.google.android.inputmethod.latin/com.android.inputmethod.latin.LatinIME"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v0, v4

    .line 86
    .local v0, "def":Z
    :goto_0
    invoke-static {v1, p0}, Lcom/android/internal/inputmethod/OppoIMEUtils;->isRegionValidIME(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    move v2, v4

    .line 91
    .local v2, "ret":Z
    :goto_1
    return v2

    .end local v0    # "def":Z
    .end local v2    # "ret":Z
    :cond_1
    move v0, v3

    .line 85
    goto :goto_0

    .restart local v0    # "def":Z
    :cond_2
    move v2, v3

    .line 86
    goto :goto_1
.end method
