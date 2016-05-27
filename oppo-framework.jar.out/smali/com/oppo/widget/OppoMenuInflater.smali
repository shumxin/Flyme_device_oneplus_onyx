.class public Lcom/oppo/widget/OppoMenuInflater;
.super Ljava/lang/Object;
.source "OppoMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoMenuInflater$MenuState;,
        Lcom/oppo/widget/OppoMenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OppoMenuInflater"

.field private static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field private final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field private final mActionViewConstructorArguments:[Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/widget/OppoMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 72
    sget-object v0, Lcom/oppo/widget/OppoMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Lcom/oppo/widget/OppoMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoMenuInflater;->mMenuItems:Ljava/util/List;

    .line 88
    iput-object p1, p0, Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/oppo/widget/OppoMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/oppo/widget/OppoMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/oppo/widget/OppoMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/oppo/widget/OppoMenuInflater;->mMenuItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoMenuInflater;->mMenuItems:Ljava/util/List;

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoMenuInflater;->mMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoMenuInflater;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoMenuInflater;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/oppo/widget/OppoMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoMenuInflater;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoMenuInflater;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oppo/widget/OppoMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/oppo/widget/OppoMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoMenuInflater;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoMenuInflater;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oppo/widget/OppoMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v3, 0x0

    .line 140
    .local v3, "menu":Landroid/view/Menu;
    new-instance v4, Lcom/oppo/widget/OppoMenuInflater$MenuState;

    invoke-direct {v4, p0, v3}, Lcom/oppo/widget/OppoMenuInflater$MenuState;-><init>(Lcom/oppo/widget/OppoMenuInflater;Landroid/view/Menu;)V

    .line 142
    .local v4, "menuState":Lcom/oppo/widget/OppoMenuInflater$MenuState;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 144
    .local v0, "eventType":I
    const/4 v2, 0x0

    .line 145
    .local v2, "lookingForEndOfUnknownTag":Z
    const/4 v7, 0x0

    .line 149
    .local v7, "unknownTagName":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x2

    if-ne v0, v8, :cond_3

    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "tagName":Ljava/lang/String;
    const-string v8, "menu"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 153
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 162
    .end local v6    # "tagName":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .line 163
    .local v5, "reachedEndOfMenu":Z
    :goto_1
    if-nez v5, :cond_9

    .line 164
    packed-switch v0, :pswitch_data_0

    .line 212
    :cond_1
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1

    .line 157
    .end local v5    # "reachedEndOfMenu":Z
    .restart local v6    # "tagName":Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expecting menu, got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 159
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 160
    const/4 v8, 0x1

    if-ne v0, v8, :cond_0

    goto :goto_0

    .line 166
    .restart local v5    # "reachedEndOfMenu":Z
    :pswitch_0
    if-nez v2, :cond_1

    .line 170
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 171
    .restart local v6    # "tagName":Ljava/lang/String;
    const-string v8, "group"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 173
    const-string v8, "item"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 174
    invoke-virtual {v4, p2}, Lcom/oppo/widget/OppoMenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 175
    :cond_4
    const-string v8, "menu"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 182
    :cond_5
    const/4 v2, 0x1

    .line 183
    move-object v7, v6

    .line 185
    goto :goto_2

    .line 188
    .end local v6    # "tagName":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 189
    .restart local v6    # "tagName":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 190
    const/4 v2, 0x0

    .line 191
    const/4 v7, 0x0

    goto :goto_2

    .line 192
    :cond_6
    const-string v8, "group"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 193
    invoke-virtual {v4}, Lcom/oppo/widget/OppoMenuInflater$MenuState;->resetGroup()V

    goto :goto_2

    .line 194
    :cond_7
    const-string v8, "item"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 195
    invoke-virtual {v4}, Lcom/oppo/widget/OppoMenuInflater$MenuState;->getItem()Lcom/oppo/widget/OppoMenuItem;

    move-result-object v1

    .line 196
    .local v1, "item":Lcom/oppo/widget/OppoMenuItem;
    if-eqz v1, :cond_1

    .line 197
    iget-object v8, p0, Lcom/oppo/widget/OppoMenuInflater;->mMenuItems:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 203
    .end local v1    # "item":Lcom/oppo/widget/OppoMenuItem;
    :cond_8
    const-string v8, "menu"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 204
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 209
    .end local v6    # "tagName":Ljava/lang/String;
    :pswitch_2
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Unexpected end of document"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 214
    :cond_9
    return-void

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/oppo/widget/OppoMenuInflater;->mMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public inflate(I)V
    .locals 5
    .param p1, "menuRes"    # I

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 110
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v3, p0, Lcom/oppo/widget/OppoMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 111
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 116
    .local v0, "attrs":Landroid/util/AttributeSet;
    iget-object v3, p0, Lcom/oppo/widget/OppoMenuInflater;->mMenuItems:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 117
    iget-object v3, p0, Lcom/oppo/widget/OppoMenuInflater;->mMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 120
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/oppo/widget/OppoMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v2, :cond_1

    .line 127
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 130
    :cond_1
    return-void

    .line 121
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 127
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v3

    .line 123
    :catch_1
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
