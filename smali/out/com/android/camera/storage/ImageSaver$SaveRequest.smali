.class public Lcom/android/camera/storage/ImageSaver$SaveRequest;
.super Ljava/lang/Object;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveRequest"
.end annotation


# instance fields
.field public data:[B

.field public date:J

.field public exif:Lcom/android/gallery3d/exif/ExifInterface;

.field public finalImage:Z

.field public height:I

.field public info:Lcom/android/camera/PictureInfo;

.field public isHide:Z

.field public isMap:Z

.field public loc:Landroid/location/Location;

.field public oldTitle:Ljava/lang/String;

.field public orientation:I

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;

.field public title:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V
    .registers 20

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    iput-wide p5, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->date:J

    iput-object p7, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    if-nez p8, :cond_2d

    const/4 v1, 0x0

    :goto_12
    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->loc:Landroid/location/Location;

    iput p9, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->width:I

    iput p10, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->height:I

    iput-object p11, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    iput p12, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->orientation:I

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isHide:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isMap:Z

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->finalImage:Z

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->info:Lcom/android/camera/PictureInfo;

    return-void

    :cond_2d
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p8}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_12
.end method


# virtual methods
.method public getSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public save()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_9c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->orientation:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->height:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    invoke-static/range {v2 .. v11}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Z

    :cond_35
    :goto_35
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_9b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->finalImage:Z

    invoke-static {v2, v3}, Lcom/android/camera/storage/ImageSaver;->-wrap0(Lcom/android/camera/storage/ImageSaver;Z)Z

    move-result v16

    if-eqz v16, :cond_8c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->width:I

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->height:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4080000000000000L    # 512.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isMap:Z

    if-eqz v2, :cond_dd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v18

    :goto_83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/camera/storage/ImageSaver;->-wrap3(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/Thumbnail;)V

    :cond_8c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->finalImage:Z

    invoke-static {v2, v3, v4}, Lcom/android/camera/storage/ImageSaver;->-wrap2(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;Z)V

    :cond_9b
    return-void

    :cond_9c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->date:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->orientation:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->height:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isHide:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isMap:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->info:Lcom/android/camera/PictureInfo;

    const/4 v11, 0x0

    invoke-static/range {v2 .. v14}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZLcom/android/camera/PictureInfo;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    goto/16 :goto_35

    :cond_dd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->orientation:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-static {v2, v3, v15, v4, v5}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v18

    goto :goto_83
.end method
