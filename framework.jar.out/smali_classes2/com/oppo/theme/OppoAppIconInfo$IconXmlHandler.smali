.class Lcom/oppo/theme/OppoAppIconInfo$IconXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OppoAppIconInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/theme/OppoAppIconInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconXmlHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    # setter for: Lcom/oppo/theme/OppoAppIconInfo;->mCurrentTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/theme/OppoAppIconInfo;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 50
    # setter for: Lcom/oppo/theme/OppoAppIconInfo;->mCurrentTag:Ljava/lang/String;
    invoke-static {p2}, Lcom/oppo/theme/OppoAppIconInfo;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    # getter for: Lcom/oppo/theme/OppoAppIconInfo;->mCurrentTag:Ljava/lang/String;
    invoke-static {}, Lcom/oppo/theme/OppoAppIconInfo;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "icon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "iconName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 54
    # getter for: Lcom/oppo/theme/OppoAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;
    invoke-static {}, Lcom/oppo/theme/OppoAppIconInfo;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :goto_0
    const-string v2, "package"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 60
    # getter for: Lcom/oppo/theme/OppoAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;
    invoke-static {}, Lcom/oppo/theme/OppoAppIconInfo;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v0    # "iconName":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 56
    .restart local v0    # "iconName":Ljava/lang/String;
    :cond_1
    # getter for: Lcom/oppo/theme/OppoAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;
    invoke-static {}, Lcom/oppo/theme/OppoAppIconInfo;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "no_icon_name"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_2
    # getter for: Lcom/oppo/theme/OppoAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;
    invoke-static {}, Lcom/oppo/theme/OppoAppIconInfo;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "no_package_name"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
