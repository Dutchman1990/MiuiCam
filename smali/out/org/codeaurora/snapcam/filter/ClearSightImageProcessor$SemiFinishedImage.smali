.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;
.super Ljava/lang/Object;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemiFinishedImage"
.end annotation


# instance fields
.field mBayerImage:Landroid/graphics/YuvImage;

.field mBayerJpegData:[B

.field mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

.field mMonoJpegData:[B

.field mResult:Landroid/hardware/camera2/TotalCaptureResult;

.field mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method private constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)V
    .registers 3

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)V

    return-void
.end method

.method private saveImage(Landroid/graphics/YuvImage;)Z
    .registers 12

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveYuv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get18(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v9

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/storage/ImageSaver;->addYuv(Landroid/graphics/YuvImage;Landroid/hardware/camera2/TotalCaptureResult;IILjava/lang/String;JLandroid/location/Location;I)V

    const/4 v0, 0x1

    return v0
.end method

.method private saveImage([B[B)Z
    .registers 15

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    if-nez v1, :cond_b

    return v3

    :cond_b
    invoke-static {p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v11

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get18(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_7c

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    :goto_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "_STEREO"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveJpeg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v10

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v11}, Lcom/android/camera/storage/ImageSaver;->addMpo([B[B[BIILjava/lang/String;JLandroid/location/Location;I)V

    const/4 v1, 0x1

    return v1

    :cond_7c
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    goto :goto_31
.end method


# virtual methods
.method public reset()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerImage:Landroid/graphics/YuvImage;

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerJpegData:[B

    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mMonoJpegData:[B

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    return-void
.end method

.method public save()V
    .registers 3

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerJpegData:[B

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mMonoJpegData:[B

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerJpegData:[B

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mMonoJpegData:[B

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->saveImage([B[B)Z

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerImage:Landroid/graphics/YuvImage;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerImage:Landroid/graphics/YuvImage;

    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->saveImage(Landroid/graphics/YuvImage;)Z

    goto :goto_f
.end method

.method public updateBayerImage(Landroid/media/Image;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V
    .registers 6

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    sget-object v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    if-eq v1, v2, :cond_1d

    invoke-virtual {p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->ordinal()I

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    invoke-virtual {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_29

    :cond_1d
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-virtual {v1, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createYuvImage(Landroid/media/Image;)Landroid/graphics/YuvImage;

    move-result-object v0

    if-eqz v0, :cond_29

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerImage:Landroid/graphics/YuvImage;

    iput-object p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    :cond_29
    return-void
.end method

.method public updateEncodedImage(Landroid/media/Image;Landroid/media/Image;)V
    .registers 6

    const/16 v2, 0x100

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    if-eq v0, v2, :cond_c

    :cond_b
    return-void

    :cond_c
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v0

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-virtual {v0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerJpegData:[B

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-virtual {v0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mMonoJpegData:[B

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerImage:Landroid/graphics/YuvImage;

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->ENCODED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    return-void
.end method

.method public updateResult(Landroid/hardware/camera2/TotalCaptureResult;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V
    .registers 5

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    if-eq v0, v1, :cond_12

    invoke-virtual {p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->ordinal()I

    move-result v0

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    invoke-virtual {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_16

    :cond_12
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iput-object p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    :cond_16
    return-void
.end method
