.class Lcom/android/camera/CameraDataAnalytics$RuleParser;
.super Ljava/lang/Object;
.source "CameraDataAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraDataAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RuleParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraDataAnalytics;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraDataAnalytics;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/CameraDataAnalytics$RuleParser;->this$0:Lcom/android/camera/CameraDataAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraDataAnalytics;Lcom/android/camera/CameraDataAnalytics$RuleParser;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/CameraDataAnalytics$RuleParser;-><init>(Lcom/android/camera/CameraDataAnalytics;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/CameraDataAnalytics$Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    sget-object v7, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v7}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_22
    if-eq v1, v8, :cond_98

    const/4 v7, 0x2

    if-ne v1, v7, :cond_66

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "rule"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    new-instance v4, Lcom/android/camera/CameraDataAnalytics$Rule;

    iget-object v7, p0, Lcom/android/camera/CameraDataAnalytics$RuleParser;->this$0:Lcom/android/camera/CameraDataAnalytics;

    const-string/jumbo v10, "name"

    invoke-interface {v6, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v7, v10}, Lcom/android/camera/CameraDataAnalytics$Rule;-><init>(Lcom/android/camera/CameraDataAnalytics;Ljava/lang/String;)V

    :cond_42
    :goto_42
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_22

    :cond_47
    const-string/jumbo v7, "event"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    new-instance v0, Lcom/android/camera/CameraDataAnalytics$Event;

    iget-object v7, p0, Lcom/android/camera/CameraDataAnalytics$RuleParser;->this$0:Lcom/android/camera/CameraDataAnalytics;

    const-string/jumbo v10, "key"

    invoke-interface {v6, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "name"

    invoke-interface {v6, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v7, v10, v11}, Lcom/android/camera/CameraDataAnalytics$Event;-><init>(Lcom/android/camera/CameraDataAnalytics;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_66
    const/4 v7, 0x3

    if-ne v1, v7, :cond_42

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "rule"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    if-eqz v4, :cond_7c

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_7c
    const-string/jumbo v7, "event"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    if-eqz v4, :cond_94

    move v10, v8

    :goto_88
    if-eqz v0, :cond_96

    move v7, v8

    :goto_8b
    and-int/2addr v7, v10

    if-eqz v7, :cond_42

    iget-object v7, v4, Lcom/android/camera/CameraDataAnalytics$Rule;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_94
    move v10, v9

    goto :goto_88

    :cond_96
    move v7, v9

    goto :goto_8b

    :cond_98
    return-object v5
.end method
