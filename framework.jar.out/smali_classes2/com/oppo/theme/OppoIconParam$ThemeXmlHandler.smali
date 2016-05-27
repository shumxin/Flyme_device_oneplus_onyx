.class Lcom/oppo/theme/OppoIconParam$ThemeXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OppoIconParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/theme/OppoIconParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThemeXmlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/theme/OppoIconParam;


# direct methods
.method constructor <init>(Lcom/oppo/theme/OppoIconParam;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/theme/OppoIconParam$ThemeXmlHandler;->this$0:Lcom/oppo/theme/OppoIconParam;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 72
    .local v0, "value":Ljava/lang/String;
    const-string v1, "Scale"

    iget-object v2, p0, Lcom/oppo/theme/OppoIconParam$ThemeXmlHandler;->this$0:Lcom/oppo/theme/OppoIconParam;

    iget-object v2, v2, Lcom/oppo/theme/OppoIconParam;->mCurrentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/oppo/theme/OppoIconParam$ThemeXmlHandler;->this$0:Lcom/oppo/theme/OppoIconParam;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/oppo/theme/OppoIconParam;->mScale:F

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string v1, "XOffsetPCT"

    iget-object v2, p0, Lcom/oppo/theme/OppoIconParam$ThemeXmlHandler;->this$0:Lcom/oppo/theme/OppoIconParam;

    iget-object v2, v2, Lcom/oppo/theme/OppoIconParam;->mCurrentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/oppo/theme/OppoIconParam$ThemeXmlHandler;->this$0:Lcom/oppo/theme/OppoIconParam;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/oppo/theme/OppoIconParam;->mXOffsetPCT:F

    goto :goto_0

    .line 76
    :cond_2
    const-string v1, "YOffsetPCT"

    iget-object v2, p0, Lcom/oppo/theme/OppoIconParam$ThemeXmlHandler;->this$0:Lcom/oppo/theme/OppoIconParam;

    iget-object v2, v2, Lcom/oppo/theme/OppoIconParam;->mCurrentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/oppo/theme/OppoIconParam$ThemeXmlHandler;->this$0:Lcom/oppo/theme/OppoIconParam;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/oppo/theme/OppoIconParam;->mYOffsetPCT:F

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oppo/theme/OppoIconParam$ThemeXmlHandler;->this$0:Lcom/oppo/theme/OppoIconParam;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oppo/theme/OppoIconParam;->mCurrentTag:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
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
    .line 67
    iget-object v0, p0, Lcom/oppo/theme/OppoIconParam$ThemeXmlHandler;->this$0:Lcom/oppo/theme/OppoIconParam;

    iput-object p2, v0, Lcom/oppo/theme/OppoIconParam;->mCurrentTag:Ljava/lang/String;

    .line 68
    return-void
.end method
