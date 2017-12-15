.class Lcom/android/camera/storage/ImageSaver$DngSaveRequest;
.super Lcom/android/camera/storage/ImageSaver$SaveRequest;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DngSaveRequest"
.end annotation


# instance fields
.field private mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mImage:Landroid/media/Image;

.field private mMetadata:Landroid/hardware/camera2/CaptureResult;

.field private mReader:Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable",
            "<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;Landroid/media/Image;Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;Ljava/lang/String;JLandroid/location/Location;IIILandroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    .registers 34
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

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p4

    move-wide/from16 v8, p5

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v15, p10

    invoke-direct/range {v3 .. v19}, Lcom/android/camera/storage/ImageSaver$SaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mReader:Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mMetadata:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mSize:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mSize:I

    :cond_1b
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mSize:I

    return v0
.end method

.method public save()V
    .registers 10

    const/4 v8, 0x0

    const/4 v3, 0x0

    :try_start_2
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->title:Ljava/lang/String;

    const-string/jumbo v7, ".dng"

    invoke-static {v6, v7}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_10} :catch_57
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10} :catch_43
    .catchall {:try_start_2 .. :try_end_10} :catchall_6b

    :try_start_10
    new-instance v0, Landroid/hardware/camera2/DngCreator;

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v7, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mMetadata:Landroid/hardware/camera2/CaptureResult;

    invoke-direct {v0, v6, v7}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v0, v4, v6}, Landroid/hardware/camera2/DngCreator;->writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/DngCreator;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v6}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->title:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/android/camera/storage/Storage;->addDNGToDataBase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_32} :catch_7f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_32} :catch_82
    .catchall {:try_start_10 .. :try_end_32} :catchall_7c

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mReader:Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v6}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->close()V

    iput-object v8, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    :goto_42
    return-void

    :catch_43
    move-exception v2

    :goto_44
    :try_start_44
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_6b

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mReader:Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v6}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->close()V

    iput-object v8, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_42

    :catch_57
    move-exception v1

    :goto_58
    :try_start_58
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_6b

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mReader:Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v6}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->close()V

    iput-object v8, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_42

    :catchall_6b
    move-exception v6

    :goto_6c
    iget-object v7, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v7}, Landroid/media/Image;->close()V

    iget-object v7, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mReader:Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v7}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->close()V

    iput-object v8, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    :catchall_7c
    move-exception v6

    move-object v3, v4

    goto :goto_6c

    :catch_7f
    move-exception v1

    move-object v3, v4

    goto :goto_58

    :catch_82
    move-exception v2

    move-object v3, v4

    goto :goto_44
.end method
