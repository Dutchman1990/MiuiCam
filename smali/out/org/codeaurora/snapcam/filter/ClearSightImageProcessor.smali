.class public Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.super Ljava/lang/Object;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;
    }
.end annotation


# static fields
.field private static final MONO_SIZES:[Landroid/util/Size;

.field private static OTP_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<[B>;"
        }
    .end annotation
.end field

.field private static mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# instance fields
.field private mBayerCaptureStarted:Z

.field private mCallback:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

.field private mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureStartTime:J

.field private mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

.field private mClearsightProcessThread:Landroid/os/HandlerThread;

.field private mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

.field private mClearsightRegisterThread:Landroid/os/HandlerThread;

.field private mCsFinishTime:J

.field private mCsTimeout:I

.field private mDumpImages:Z

.field private mDumpYUV:Z

.field private mEncodeImageReader:[Landroid/media/ImageReader;

.field private mFinalMonoSize:Landroid/util/Size;

.field private mFinalPictureRatio:F

.field private mFinalPictureSize:Landroid/util/Size;

.field private mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

.field private mImageEncodeThread:Landroid/os/HandlerThread;

.field private mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

.field private mImageProcessThread:Landroid/os/HandlerThread;

.field private mImageReader:[Landroid/media/ImageReader;

.field private mImageWriter:[Landroid/media/ImageWriter;

.field private mIsClosing:Z

.field private mJpegFinishTime:J

.field private mJpegRotation:I

.field private mMediaSaver:Lcom/android/camera/storage/ImageSaver;

.field private mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

.field private mNumBurstCount:I

.field private mNumFrameCount:I

.field private mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

.field private mTimestampThresholdNs:J


# direct methods
.method static synthetic -get0(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .registers 2

    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mBayerCaptureStarted:Z

    return v0
.end method

.method static synthetic -get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;
    .registers 2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCallback:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    return-object v0
.end method

.method static synthetic -get10(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;
    .registers 2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    return-object v0
.end method

.method static synthetic -get11(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;
    .registers 2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalMonoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic -get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;
    .registers 2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic -get13(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;
    .registers 2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    return-object v0
.end method

.method static synthetic -get14(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;
    .registers 2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    return-object v0
.end method

.method static synthetic -get15(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;
    .registers 2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    return-object v0
.end method

.method static synthetic -get16(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageWriter;
    .registers 2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    return-object v0
.end method

.method static synthetic -get17(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J
    .registers 3

    iget-wide v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mJpegFinishTime:J

    return-wide v0
.end method

.method static synthetic -get18(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .registers 2

    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mJpegRotation:I

    return v0
.end method

.method static synthetic -get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;
    .registers 2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSaver:Lcom/android/camera/storage/ImageSaver;

    return-object v0
.end method

.method static synthetic -get2(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/hardware/camera2/CameraCaptureSession;
    .registers 2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic -get20(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/camera_adapter/camera2/NamedImages;
    .registers 2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

    return-object v0
.end method

.method static synthetic -get21(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .registers 2

    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    return v0
.end method

.method static synthetic -get22(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .registers 2

    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    return v0
.end method

.method static synthetic -get23(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;
    .registers 2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    return-object v0
.end method

.method static synthetic -get24(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J
    .registers 3

    iget-wide v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mTimestampThresholdNs:J

    return-wide v0
.end method

.method static synthetic -get3(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J
    .registers 3

    iget-wide v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic -get4(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;
    .registers 2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    return-object v0
.end method

.method static synthetic -get5(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;
    .registers 2

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    return-object v0
.end method

.method static synthetic -get6(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J
    .registers 3

    iget-wide v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsFinishTime:J

    return-wide v0
.end method

.method static synthetic -get7(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .registers 2

    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsTimeout:I

    return v0
.end method

.method static synthetic -get8(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .registers 2

    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpImages:Z

    return v0
.end method

.method static synthetic -get9(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .registers 2

    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpYUV:Z

    return v0
.end method

.method static synthetic -set0(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Z)Z
    .registers 2

    iput-boolean p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mBayerCaptureStarted:Z

    return p1
.end method

.method static synthetic -set1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;J)J
    .registers 4

    iput-wide p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsFinishTime:J

    return-wide p1
.end method

.method static synthetic -set2(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;J)J
    .registers 4

    iput-wide p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mJpegFinishTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3

    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getFinalCropRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .registers 2

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->isClosing()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)V
    .registers 1

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->resetSemiFinishedImage()V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)V
    .registers 1

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveAndResetSemiFinishedImage()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/media/Image;Landroid/media/Image;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->updateSemiFinishedJpeg(Landroid/media/Image;Landroid/media/Image;)V

    return-void
.end method

.method static synthetic -wrap5(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/media/Image;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->updateSemiFinishedYuv(Landroid/media/Image;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x578

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/util/Size;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x640

    const/16 v3, 0x4b0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v4, v4}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->MONO_SIZES:[Landroid/util/Size;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.dualcam_calib_meta_data.dualcam_calib_meta_data_blob"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->OTP_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    const/4 v6, 0x0

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v2, v3, [Landroid/media/ImageReader;

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    new-array v2, v3, [Landroid/media/ImageReader;

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    new-array v2, v3, [Landroid/media/ImageWriter;

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    new-array v2, v3, [Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v2, Lcom/android/camera/camera_adapter/camera2/NamedImages;

    invoke-direct {v2}, Lcom/android/camera/camera_adapter/camera2/NamedImages;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

    const-string/jumbo v2, "persist.camera.cs.threshold"

    const-wide/16 v4, 0xa

    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mTimestampThresholdNs:J

    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mTimestampThresholdNs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mTimestampThresholdNs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "persist.camera.cs.burstcount"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mNumBurstCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mNumFrameCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "persist.camera.cs.dumpframes"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpImages:Z

    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDumpImages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpImages:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "persist.camera.cs.dumpyuv"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpYUV:Z

    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDumpYUV: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpYUV:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "persist.camera.cs.timeout"

    const/16 v3, 0x7d0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsTimeout:I

    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCsTimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createEncodeImageReader(III)Landroid/media/ImageReader;
    .registers 7

    iget v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    const/16 v2, 0x100

    invoke-static {p2, p3, v2, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$3;

    invoke-direct {v1, p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$3;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method private createImageReader(III)Landroid/media/ImageReader;
    .registers 7

    iget v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    add-int/2addr v1, v2

    const/16 v2, 0x23

    invoke-static {p2, p3, v2, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$2;

    invoke-direct {v1, p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$2;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static createInstance()V
    .registers 1

    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    if-nez v0, :cond_e

    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;-><init>()V

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->createInstance()V

    :cond_e
    return-void
.end method

.method private findMaxOutputSize(Landroid/hardware/camera2/params/StreamConfigurationMap;)Landroid/util/Size;
    .registers 4

    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    new-instance v1, Lcom/android/camera/camera_adapter/camera2/SettingsManager$CompareSizesByArea;

    invoke-direct {v1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager$CompareSizesByArea;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private getFinalCropRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 12

    const/high16 v9, 0x3f000000    # 0.5f

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    const-string/jumbo v6, "CSImageProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getFinalCropRect - rect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "CSImageProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getFinalCropRect - ratios: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_98

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v9

    float-to-int v2, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int v3, v6, v7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    add-int v6, v3, v2

    iput v6, v0, Landroid/graphics/Rect;->right:I

    :cond_79
    :goto_79
    const-string/jumbo v6, "CSImageProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getFinalCropRect - final rect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_98
    iget v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_79

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    div-float/2addr v6, v7

    add-float/2addr v6, v9

    float-to-int v1, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int v4, v6, v7

    iput v4, v0, Landroid/graphics/Rect;->top:I

    add-int v6, v4, v1

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_79
.end method

.method private getFinalMonoSize()Landroid/util/Size;
    .registers 14

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-long v0, v7

    const-wide/32 v8, 0x1cfde0

    cmp-long v7, v0, v8

    if-lez v7, :cond_33

    sget-object v8, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->MONO_SIZES:[Landroid/util/Size;

    const/4 v7, 0x0

    array-length v9, v8

    :goto_1c
    if-ge v7, v9, :cond_33

    aget-object v6, v8, v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v4, v10, v11

    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpl-float v10, v4, v10

    if-nez v10, :cond_38

    move-object v2, v6

    :cond_33
    if-nez v2, :cond_37

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    :cond_37
    return-object v2

    :cond_38
    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    sub-float v10, v4, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3dcccccd    # 0.1f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_60

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpl-float v10, v4, v10

    if-lez v10, :cond_63

    int-to-float v10, v5

    iget v11, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    div-float/2addr v10, v11

    add-float/2addr v10, v12

    float-to-int v3, v10

    :cond_5b
    :goto_5b
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v5, v3}, Landroid/util/Size;-><init>(II)V

    :cond_60
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_63
    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpg-float v10, v4, v10

    if-gez v10, :cond_5b

    int-to-float v10, v3

    iget v11, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v12

    float-to-int v5, v10

    goto :goto_5b
.end method

.method public static getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .registers 1

    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    if-nez v0, :cond_7

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createInstance()V

    :cond_7
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    return-object v0
.end method

.method private declared-synchronized isClosing()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mIsClosing:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetSemiFinishedImage()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveAndResetSemiFinishedImage()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->save()V

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->reset()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setClosing(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mIsClosing:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateSemiFinishedJpeg(Landroid/media/Image;Landroid/media/Image;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->updateEncodedImage(Landroid/media/Image;Landroid/media/Image;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateSemiFinishedYuv(Landroid/media/Image;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->updateBayerImage(Landroid/media/Image;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public capture(ZLandroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/os/Handler;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v8, 0x0

    const-string/jumbo v5, "CSImageProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "capture: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureStartTime:J

    :cond_23
    if-eqz p1, :cond_56

    const/4 v1, 0x0

    :goto_26
    if-eqz p1, :cond_2a

    iput-boolean v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mBayerCaptureStarted:Z

    :cond_2a
    new-instance v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;

    invoke-direct {v2, p0, v1, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;IZ)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/4 v3, 0x0

    :goto_40
    iget v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    if-ge v3, v5, :cond_58

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_56
    const/4 v1, 0x1

    goto :goto_26

    :cond_58
    iget-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v8, v1, v6, v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p2, v0, v2, p4}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void
.end method

.method public close()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "close>>>"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setClosing(Z)V

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    :try_start_17
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_22} :catch_9a

    :cond_22
    :goto_22
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    :try_start_2b
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_36} :catch_a7

    :cond_36
    :goto_36
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    :try_start_3f
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_4a} :catch_b3

    :cond_4a
    :goto_4a
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    :try_start_53
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_5e} :catch_bf

    :cond_5e
    :goto_5e
    const/4 v1, 0x0

    :goto_5f
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    array-length v2, v2

    if-ge v1, v2, :cond_cb

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    if-eqz v2, :cond_75

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aput-object v4, v2, v1

    :cond_75
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    if-eqz v2, :cond_86

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aput-object v4, v2, v1

    :cond_86
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    aget-object v2, v2, v1

    if-eqz v2, :cond_97

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageWriter;->close()V

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    aput-object v4, v2, v1

    :cond_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :catch_9a
    move-exception v0

    const-string/jumbo v2, "CSImageProcessor"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    :catch_a7
    move-exception v0

    const-string/jumbo v2, "CSImageProcessor"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    :catch_b3
    move-exception v0

    const-string/jumbo v2, "CSImageProcessor"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    :catch_bf
    move-exception v0

    const-string/jumbo v2, "CSImageProcessor"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    :cond_cb
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveAndResetSemiFinishedImage()V

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    aput-object v4, v2, v5

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    iput-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->close()V

    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "close<<<"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createCaptureRequest(Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const-string/jumbo v1, "CSImageProcessor"

    const-string/jumbo v2, "createCaptureRequest"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public createCaptureSession(ZLandroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createCaptureSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_55

    const/4 v0, 0x0

    :goto_1d
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/media/ImageReader;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/media/ImageReader;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, p4, v2}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    return-void

    :cond_55
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public createYuvImage(Landroid/media/Image;)Landroid/graphics/YuvImage;
    .registers 13

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    if-nez p1, :cond_f

    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v2, "createYuvImage - invalid param"

    invoke-static {v0, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_f
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v0, v6, v2

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    aget-object v0, v6, v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    add-int v0, v8, v7

    new-array v1, v0, [B

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v10, v1, v2, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v9, v1, v8, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-array v5, v3, [I

    aget-object v0, v6, v2

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    aput v0, v5, v2

    aget-object v0, v6, v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    const/4 v2, 0x1

    aput v0, v5, v2

    new-instance v0, Landroid/graphics/YuvImage;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v4

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    return-object v0
.end method

.method public getJpegData(Landroid/media/Image;)[B
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_e

    const-string/jumbo v4, "CSImageProcessor"

    const-string/jumbo v5, "getJpegData - invalid param"

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_e
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    new-array v1, v3, [B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0, v1, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public init(Landroid/hardware/camera2/params/StreamConfigurationMap;IILandroid/content/Context;)V
    .registers 15

    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "init>>>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mIsClosing:Z

    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mSemiFinishedImage:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    new-instance v7, Landroid/os/HandlerThread;

    const-string/jumbo v8, "CameraImageProcess"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    new-instance v7, Landroid/os/HandlerThread;

    const-string/jumbo v8, "ClearsightRegister"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    new-instance v7, Landroid/os/HandlerThread;

    const-string/jumbo v8, "ClearsightProcess"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    new-instance v7, Landroid/os/HandlerThread;

    const-string/jumbo v8, "CameraImageEncode"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    int-to-float v7, p2

    int-to-float v8, p3

    div-float/2addr v7, v8

    iput v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getFinalMonoSize()Landroid/util/Size;

    move-result-object v7

    iput-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalMonoSize:Landroid/util/Size;

    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->findMaxOutputSize(Landroid/hardware/camera2/params/StreamConfigurationMap;)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    const/4 v8, 0x0

    invoke-direct {p0, v8, v6, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createImageReader(III)Landroid/media/ImageReader;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    const/4 v8, 0x1

    invoke-direct {p0, v8, v6, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createImageReader(III)Landroid/media/ImageReader;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    const/4 v8, 0x0

    invoke-direct {p0, v8, v6, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createEncodeImageReader(III)Landroid/media/ImageReader;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    const/4 v8, 0x1

    invoke-direct {p0, v8, v6, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createEncodeImageReader(III)Landroid/media/ImageReader;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string/jumbo v7, "camera"

    invoke-virtual {p4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    :try_start_ef
    const-string/jumbo v7, "0"

    invoke-virtual {v2, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->OTP_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v7

    iget v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->createFromBytes([B)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    move-result-object v9

    invoke-virtual {v7, v8, v6, v4, v9}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->init(IIILorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;)V
    :try_end_10d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_ef .. :try_end_10d} :catch_117

    :goto_10d
    const-string/jumbo v7, "CSImageProcessor"

    const-string/jumbo v8, "init<<<"

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_117
    move-exception v3

    const-string/jumbo v7, "CSImageProcessor"

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10d
.end method

.method public onCaptureSessionConfigured(ZLandroid/hardware/camera2/CameraCaptureSession;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCaptureSessionConfigured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_34

    move v0, v1

    :goto_21
    aput-object p2, v3, v0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    if-eqz p1, :cond_36

    :goto_27
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    invoke-static {v2, v3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v2

    aput-object v2, v0, v1

    return-void

    :cond_34
    move v0, v2

    goto :goto_21

    :cond_36
    move v1, v2

    goto :goto_27
.end method

.method public saveDebugImageAsJpeg(Lcom/android/camera/storage/ImageSaver;Landroid/graphics/YuvImage;ZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V
    .registers 20

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v10}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/storage/ImageSaver;[BIIZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V

    return-void
.end method

.method public saveDebugImageAsJpeg(Lcom/android/camera/storage/ImageSaver;Landroid/media/Image;ZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V
    .registers 18

    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_17

    invoke-virtual {p0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createYuvImage(Landroid/media/Image;)Landroid/graphics/YuvImage;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/storage/ImageSaver;Landroid/graphics/YuvImage;ZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_16

    invoke-virtual {p0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/media/Image;->getHeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/storage/ImageSaver;[BIIZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V

    goto :goto_16
.end method

.method public saveDebugImageAsJpeg(Lcom/android/camera/storage/ImageSaver;[BIIZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V
    .registers 30

    if-eqz p5, :cond_57

    const-string/jumbo v18, "b"

    :goto_5
    if-nez p6, :cond_5b

    const-wide/16 v6, -0x1

    :goto_9
    if-nez p6, :cond_60

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_23
    const-string/jumbo v3, "%s_%s%02d_%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v4, v8

    const/4 v8, 0x1

    aput-object v18, v4, v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v4, v9

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v3 .. v17}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    return-void

    :cond_57
    const-string/jumbo v18, "m"

    goto :goto_5

    :cond_5b
    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->date:J

    goto :goto_9

    :cond_60
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_23
.end method

.method public saveDebugImageAsNV21(Landroid/media/Image;ZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V
    .registers 16

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_11

    const-string/jumbo v4, "CSImageProcessor"

    const-string/jumbo v5, "saveDebugImageAsNV21 - invalid param"

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-eqz p2, :cond_5f

    const-string/jumbo v2, "b"

    :goto_16
    const-string/jumbo v4, "%s_%dx%d_NV21_%s%02d_%d"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p3, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->title:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createYuvImage(Landroid/media/Image;)Landroid/graphics/YuvImage;

    move-result-object v3

    const-string/jumbo v4, ".yuv"

    invoke-static {v1, v4}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/storage/Storage;->writeFile(Ljava/lang/String;[B)J

    return-void

    :cond_5f
    const-string/jumbo v2, "m"

    goto :goto_16
.end method

.method public setCallback(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;)V
    .registers 2

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCallback:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    return-void
.end method

.method public setJpegRotation(I)V
    .registers 2

    iput p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mJpegRotation:I

    return-void
.end method

.method public setMediaSaver(Lcom/android/camera/storage/ImageSaver;)V
    .registers 2

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSaver:Lcom/android/camera/storage/ImageSaver;

    return-void
.end method
