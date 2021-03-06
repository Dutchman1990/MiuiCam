.class Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;
.super Lcom/android/camera/storage/ImageSaver$SaveRequest;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YuvSaveRequest"
.end annotation


# instance fields
.field private mBayerImage:Landroid/graphics/YuvImage;

.field private mResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private mSize:I

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;Landroid/graphics/YuvImage;Landroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;JLandroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;I)V
    .registers 33

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p4

    move-wide/from16 v8, p5

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p11

    invoke-direct/range {v3 .. v19}, Lcom/android/camera/storage/ImageSaver$SaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mBayerImage:Landroid/graphics/YuvImage;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method

.method private calculateCropRect(IIII)Landroid/graphics/Rect;
    .registers 10

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_b

    :cond_5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    :cond_b
    invoke-static {p1, v3, p3}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    invoke-static {p2, v3, p4}, Lcom/android/camera/Util;->clamp(III)I

    move-result p2

    sub-int v2, p3, p1

    div-int/lit8 v0, v2, 0x2

    sub-int v2, p4, p2

    div-int/lit8 v1, v2, 0x2

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v0, p1

    add-int v4, v1, p2

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method


# virtual methods
.method public getSize()I
    .registers 3

    iget v0, p0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mSize:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mBayerImage:Landroid/graphics/YuvImage;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mSize:I

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mBayerImage:Landroid/graphics/YuvImage;

    invoke-virtual {v1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mSize:I

    :cond_14
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mSize:I

    return v0
.end method

.method public save()V
    .registers 25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->width:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->height:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mBayerImage:Landroid/graphics/YuvImage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mBayerImage:Landroid/graphics/YuvImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->calculateCropRect(IIII)Landroid/graphics/Rect;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getJpegQuality()I

    move-result v18

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mBayerImage:Landroid/graphics/YuvImage;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance v11, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v11}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    sget-object v21, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    sget-object v21, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->orientation:I

    move/from16 v20, v0

    if-eqz v20, :cond_b6

    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->orientation:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/gallery3d/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    :cond_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    move-object/from16 v20, v0

    if-eqz v20, :cond_18a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    move-object/from16 v20, v0

    sget-object v21, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    if-eqz v15, :cond_f8

    new-instance v13, Lcom/android/gallery3d/exif/Rational;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v20

    const/high16 v21, 0x42c80000    # 100.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x64

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    move/from16 v0, v20

    invoke-virtual {v11, v0, v13}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    :cond_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    move-object/from16 v20, v0

    sget-object v21, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    if-eqz v14, :cond_136

    new-instance v16, Lcom/android/gallery3d/exif/Rational;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v20

    const/high16 v21, 0x42c80000    # 100.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x64

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    move/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    :cond_136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    move-object/from16 v20, v0

    sget-object v21, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    if-eqz v17, :cond_15d

    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    :cond_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    move-object/from16 v20, v0

    sget-object v21, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-eqz v10, :cond_18a

    new-instance v12, Lcom/android/gallery3d/exif/Rational;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/32 v22, 0x3b9aca00

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    move/from16 v0, v20

    invoke-virtual {v11, v0, v12}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    :cond_18a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->addGpsTags(DD)Z

    :cond_1ad
    :try_start_1ad
    invoke-virtual {v11, v6, v7}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1b3} :catch_1cf

    move-result-object v6

    :goto_1b4
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->data:[B

    invoke-super/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaver$SaveRequest;->save()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mBayerImage:Landroid/graphics/YuvImage;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catch_1cf
    move-exception v9

    const-string/jumbo v20, "ImageSaver"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b4
.end method
