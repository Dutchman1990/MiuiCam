.class public Lcom/android/camera/storage/ImageSaver;
.super Ljava/lang/Thread;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/ImageSaver$1;,
        Lcom/android/camera/storage/ImageSaver$DngSaveRequest;,
        Lcom/android/camera/storage/ImageSaver$MemoryManager;,
        Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;,
        Lcom/android/camera/storage/ImageSaver$SaveRequest;,
        Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mHandler:Landroid/os/Handler;

.field private mHostState:I

.field private mIsImageCaptureIntent:Z

.field private mLastImageUri:Landroid/net/Uri;

.field private mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

.field private mPendingThumbnail:Lcom/android/camera/Thumbnail;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/storage/ImageSaver$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldStop:Z

.field private mStop:Z

.field private mUpdateThumbnail:Ljava/lang/Runnable;

.field private mUpdateThumbnailLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/storage/ImageSaver;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->needThumbnail(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/storage/ImageSaver;[B[B[B)Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/storage/ImageSaver;->createMpoData([B[B[B)Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/storage/ImageSaver;->notifyNewImage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/Thumbnail;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/storage/ImageSaver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->updateThumbnail()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;Landroid/os/Handler;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/camera/storage/ImageSaver$1;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/ImageSaver$1;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    iput-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iput-boolean p3, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/storage/ImageSaver$MemoryManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;-><init>(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/storage/ImageSaver$MemoryManager;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->start()V

    return-void
.end method

.method private addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_11

    const-string/jumbo v0, "ImageSaver"

    const-string/jumbo v1, "addImage: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2f

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap2(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z

    :cond_1c
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-virtual {p1}, Lcom/android/camera/storage/ImageSaver$SaveRequest;->getSize()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap4(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->notifyAll()V
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createMpoData([B[B[B)Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;
    .registers 9

    new-instance v3, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    invoke-direct {v3}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;-><init>()V

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, p2, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;-><init>([BLjava/nio/ByteOrder;)V

    new-instance v2, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, p3, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;-><init>([BLjava/nio/ByteOrder;)V

    if-nez p1, :cond_1c

    invoke-virtual {v3, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->addAuxiliaryMpoImage(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;)V

    invoke-virtual {v3, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->setPrimaryMpoImage(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;)V

    :goto_1b
    return-object v3

    :cond_1c
    new-instance v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p1, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;-><init>([BLjava/nio/ByteOrder;)V

    invoke-virtual {v3, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->addAuxiliaryMpoImage(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;)V

    invoke-virtual {v3, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->addAuxiliaryMpoImage(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;)V

    invoke-virtual {v3, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->setPrimaryMpoImage(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;)V

    goto :goto_1b
.end method

.method private isLastImageForThumbnail()Z
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    if-lez v0, :cond_19

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    iget-boolean v1, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->finalImage:Z

    if-eqz v1, :cond_19

    return v2

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1c
    const/4 v1, 0x1

    return v1
.end method

.method private needThumbnail(Z)Z
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p1, :cond_12

    :try_start_4
    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-nez v1, :cond_12

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->isLastImageForThumbnail()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_16

    if-eqz v1, :cond_14

    :cond_12
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyNewImage(Landroid/net/Uri;Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v0, p1}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    if-eqz p2, :cond_13

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->addSecureUri(Landroid/net/Uri;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private postUpdateThumbnail(Lcom/android/camera/Thumbnail;)V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateThumbnail()V
    .registers 5

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1c

    monitor-exit v2

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;)V

    :cond_1b
    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addDng(Landroid/media/Image;Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;Ljava/lang/String;JLandroid/location/Location;IIILandroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/Image;",
            "Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable",
            "<",
            "Landroid/media/ImageReader;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Landroid/location/Location;",
            "III",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Landroid/hardware/camera2/CaptureResult;",
            ")V"
        }
    .end annotation

    new-instance v1, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;Landroid/media/Image;Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;Ljava/lang/String;JLandroid/location/Location;IIILandroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    invoke-direct {p0, v1}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    return-void
.end method

.method public addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V
    .registers 32

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    invoke-virtual/range {v0 .. v15}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    return-void
.end method

.method public addImage([BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V
    .registers 36

    new-instance v3, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move-object/from16 v19, p15

    invoke-direct/range {v3 .. v19}, Lcom/android/camera/storage/ImageSaver$SaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    return-void
.end method

.method public addMpo([B[B[BIILjava/lang/String;JLandroid/location/Location;I)V
    .registers 24

    new-instance v0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;[B[B[BLjava/lang/String;JLandroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;I)V

    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    return-void
.end method

.method public addYuv(Landroid/graphics/YuvImage;Landroid/hardware/camera2/TotalCaptureResult;IILjava/lang/String;JLandroid/location/Location;I)V
    .registers 24

    new-instance v1, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;Landroid/graphics/YuvImage;Landroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;JLandroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;I)V

    invoke-direct {p0, v1}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    return-void
.end method

.method public getBurstDelay()I
    .registers 2

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap3(Lcom/android/camera/storage/ImageSaver$MemoryManager;)I

    move-result v0

    return v0
.end method

.method public getSuitableBurstShotSpeed()F
    .registers 2

    const v0, 0x3f28f5c3    # 0.66f

    return v0
.end method

.method public isNeedSlowDown()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap0(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    return v0
.end method

.method public isNeedStopCapture()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap1(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    return v0
.end method

.method public onHostDestroy()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mStop:Z

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->notifyAll()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_23

    monitor-exit p0

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_26

    monitor-exit v1

    const-string/jumbo v0, "ImageSaver"

    const-string/jumbo v1, "onHostDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onHostPause()V
    .registers 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_4
    iput v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_31

    move-result v0

    monitor-exit p0

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_10
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_34

    monitor-exit v2

    if-nez v0, :cond_27

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    :cond_27
    const-string/jumbo v1, "ImageSaver"

    const-string/jumbo v2, "onHostPause"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1

    :catchall_34
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onHostResume(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    const-string/jumbo v0, "ImageSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHostResume: isCapture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 5

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap5(Lcom/android/camera/storage/ImageSaver$MemoryManager;)V

    :goto_5
    monitor-enter p0

    :try_start_6
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-boolean v2, p0, Lcom/android/camera/storage/ImageSaver;->mStop:Z

    if-eqz v2, :cond_1d

    const-string/jumbo v2, "ImageSaver"

    const-string/jumbo v3, "run: exiting"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_5f

    monitor-exit p0

    return-void

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->wait()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_22
    .catchall {:try_start_1d .. :try_end_20} :catchall_5f

    :goto_20
    monitor-exit p0

    goto :goto_5

    :catch_22
    move-exception v0

    goto :goto_20

    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_5f

    monitor-exit p0

    iget-object v2, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    if-eqz v2, :cond_3a

    iget-object v2, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    iput-object v2, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    :cond_3a
    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver$SaveRequest;->save()V

    monitor-enter p0

    :try_start_3e
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver$SaveRequest;->getSize()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap6(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap2(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v2

    if-nez v2, :cond_58

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z

    :cond_58
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->notifyAll()V
    :try_end_5b
    .catchall {:try_start_3e .. :try_end_5b} :catchall_5c

    goto :goto_20

    :catchall_5c
    move-exception v2

    monitor-exit p0

    throw v2

    :catchall_5f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public saveMpoImage([B[B[B)[B
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/storage/ImageSaver;->createMpoData([B[B[B)Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->writeMpo(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;)[B

    move-result-object v1

    return-object v1
.end method

.method public shouldStopShot()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z

    return v0
.end method

.method public updateImage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/ImageSaver$SaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    iput-object p1, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    return-void
.end method
