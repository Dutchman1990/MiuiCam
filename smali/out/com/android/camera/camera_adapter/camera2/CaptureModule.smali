.class public Lcom/android/camera/camera_adapter/camera2/CaptureModule;
.super Lcom/android/camera/module/Base2Module;
.source "CaptureModule.java"

# interfaces
.implements Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;
.implements Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$3;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$ImageAvailableListener;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$MainHandler;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;,
        Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;
    }
.end annotation


# static fields
.field public static FRONT_ID:I

.field public static JpegCropEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static JpegCropRectKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field public static JpegRoiRectKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field public static MONO_ID:I

.field public static MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final ORIENTATIONS:Landroid/util/SparseIntArray;

.field private static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;


# instance fields
.field BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field CdsModeKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hideCaptureProgressBarTask:Ljava/lang/Runnable;

.field mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

.field mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAeFinishTime:[J

.field private mAfFinishTime:[J

.field private mAutoExposureRegionSupported:Z

.field private mAutoFocusRegionSupported:Z

.field private mAutoFocusRequestHashCode:[I

.field private mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraId:[Ljava/lang/String;

.field private mCameraIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraOpened:[Z

.field private mCameraThread:Landroid/os/HandlerThread;

.field private mCamerasOpened:Z

.field private mCancelAutoFocusIfMove:Z

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureCallbackHandler:Landroid/os/Handler;

.field private mCaptureCallbackThread:Landroid/os/HandlerThread;

.field private mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureStartTime:J

.field private mCaptureState:[I

.field private mCaptureStateLock:Ljava/lang/Object;

.field private mControlAFMode:I

.field private mCropRegion:[Landroid/graphics/Rect;

.field private mCurrentMode:I

.field private mDecodeTaskForReview:Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

.field private mDngCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private mDngImage:Landroid/media/Image;

.field private mFirstTimeInitialized:Z

.field private mFocusStateListener:Lcom/android/camera/camera_adapter/camera2/FocusStateListener;

.field private mImageAvailableHandler:Landroid/os/Handler;

.field private mImageAvailableThread:Landroid/os/HandlerThread;

.field private mImageReader:[Landroid/media/ImageReader;

.field private mIsClearSightOn:Z

.field private mIsLinked:Z

.field private mLastResultAFState:[I

.field private mLatestFocusTime:J

.field private mLockRequestHashCode:[I

.field private mLongshotActive:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mMpoSaveHandler:Landroid/os/Handler;

.field private mMpoSaveThread:Landroid/os/HandlerThread;

.field private mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

.field private mPrecaptureRequestHashCode:[I

.field private mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mRawImageReader:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable",
            "<",
            "Landroid/media/ImageReader;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mState:[I

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mSurfaceReady:Z

.field private mThumbnailSize:Landroid/util/Size;

.field private mUI:Lcom/android/camera/ui/UIController;

.field private mVolumeLongPress:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[J
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAeFinishTime:[J

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDecodeTaskForReview:Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/FocusStateListener;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFocusStateListener:Lcom/android/camera/camera_adapter/camera2/FocusStateListener;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageCaptureShowing:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[B
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mJpegImageData:[B

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLatestFocusTime:J

    return-wide v0
.end method

.method static synthetic -get19(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLockRequestHashCode:[I

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[J
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAfFinishTime:[J

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/NamedImages;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPrecaptureRequestHashCode:[I

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/SettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/ui/UIController;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Ljava/util/concurrent/Semaphore;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpened:[Z

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCancelAutoFocusIfMove:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCamerasOpened:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCancelAutoFocusIfMove:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;)Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;
    .registers 2

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDecodeTaskForReview:Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;
    .registers 2

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/media/Image;)Landroid/media/Image;
    .registers 2

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngImage:Landroid/media/Image;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsLinked:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/camera/camera_adapter/camera2/CaptureModule;[B)[B
    .registers 2

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLongshotActive:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->canStartMonoPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/media/Image;)[B
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getJpegData(Landroid/media/Image;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getAutoFocusRequestHashCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getState(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->animateCapture()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->cancelTouchFocus(I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->checkAfAeStatesAndCapture(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->closeCamera()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSessions()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isCaptureSessionReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->handleCameraError()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->initializePreviewConfiguration(I)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->initializeZoom(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->lockExposure(I)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/camera/camera_adapter/camera2/CaptureModule;ILandroid/hardware/camera2/CameraAccessException;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraError()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCaptureDone(I)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->openCamera(I)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->playCameraSound(I)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->runPrecaptureSequence(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->saveRawImage(I)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/camera/camera_adapter/camera2/CaptureModule;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setAutoFocusRequestHashCode(II)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/camera/camera_adapter/camera2/CaptureModule;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setState(II)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->stopMonoPreview()V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->unlockFocus(I)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->updateCaptureProgressBar(Z)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/hardware/camera2/CaptureResult;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->updateFocusStateChange(Landroid/hardware/camera2/CaptureResult;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isDualMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isFlashOff(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isMonoMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isMpoOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isRawOn()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    sput v8, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    sput v7, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    new-array v6, v7, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v0, v6, v1

    sput-object v6, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ORIENTATIONS:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/16 v1, 0x10e

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.jpeg_encode_crop.enable"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->JpegCropEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.jpeg_encode_crop.rect"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->JpegCropRectKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.jpeg_encode_crop.roi"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->JpegRoiRectKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.sensor_meta_data.is_mono_only"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/android/camera/module/Base2Module;-><init>()V

    new-array v0, v3, [[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v0, v3, [[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.dualcam_link_meta_data.enable"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.dualcam_link_meta_data.is_main"

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.dualcam_link_meta_data.related_camera_id"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "org.codeaurora.qcamera3.CDS.cds_mode"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->CdsModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLastResultAFState:[I

    new-array v0, v3, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    iput-boolean v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCamerasOpened:Z

    iput-boolean v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsClearSightOn:Z

    iput-boolean v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsLinked:Z

    iput-boolean v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSurfaceReady:Z

    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpened:[Z

    new-array v0, v3, [Landroid/hardware/camera2/CameraDevice;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraId:[Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLongshotActive:Z

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAfFinishTime:[J

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAeFinishTime:[J

    new-array v0, v3, [Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MainHandler;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Lcom/android/camera/camera_adapter/camera2/CaptureModule$MainHandler;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMainHandler:Landroid/os/Handler;

    new-array v0, v3, [Landroid/media/ImageReader;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPrecaptureRequestHashCode:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLockRequestHashCode:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAutoFocusRequestHashCode:[I

    new-array v0, v3, [Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mState:[I

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$3;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->hideCaptureProgressBarTask:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mVolumeLongPress:Z

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-void
.end method

.method private afaeRectangle(FFIIFLandroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .registers 20

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float v2, v2, p5

    float-to-int v12, v2

    new-instance v11, Landroid/graphics/RectF;

    div-int/lit8 v2, v12, 0x2

    int-to-float v2, v2

    sub-float v2, p1, v2

    div-int/lit8 v3, v12, 0x2

    int-to-float v3, v3

    sub-float v3, p2, v3

    div-int/lit8 v4, v12, 0x2

    int-to-float v4, v4

    add-float/2addr v4, p1

    div-int/lit8 v5, v12, 0x2

    int-to-float v5, v5

    add-float/2addr v5, p2

    invoke-direct {v11, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_d3

    const/4 v2, 0x0

    :goto_2d
    iget v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDisplayOrientation:I

    div-int/lit8 v6, p3, 0x2

    div-int/lit8 v7, p4, 0x2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    invoke-virtual {v1, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float v2, v3, v2

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float v3, v4, v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v8, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v1, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v8, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v10, Landroid/graphics/Rect;

    iget v2, v11, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v11, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v11, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v11, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v10, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iget v2, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x1

    new-array v9, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v3, 0x1

    invoke-direct {v2, v10, v3}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    const/4 v3, 0x0

    aput-object v2, v9, v3

    return-object v9

    :cond_d3
    const/4 v2, 0x1

    goto/16 :goto_2d
.end method

.method private animateCapture()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule$13;

    invoke-direct {v1, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$13;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 5

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v0, v0, p2

    if-eqz v0, :cond_15

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_14
    return-void

    :cond_15
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_14
.end method

.method private applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 5

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v0, v0, p2

    if-eqz v0, :cond_15

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_14
    return-void

    :cond_15
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_14
.end method

.method private applyAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v3, "pref_camera_antibanding_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string/jumbo v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    return-void

    :cond_15
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 5

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private applyExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v3, "pref_camera_exposure_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 6

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v1, p2}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isFlashSupported(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v2, "pref_camera_flashmode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_14
.end method

.method private applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .registers 7

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v3, "pref_camera2_redeyereduction_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    packed-switch v0, :pswitch_data_44

    :cond_19
    :goto_19
    return-void

    :pswitch_1a
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_25
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_30
    const-string/jumbo v2, "disable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_25
        :pswitch_30
        :pswitch_1a
    .end packed-switch
.end method

.method private applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v3, "pref_qc_camera_iso_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    const-string/jumbo v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-void

    :cond_16
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getJpegQuality()I

    move-result v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-byte v2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const-string/jumbo v1, "pref_camera_whitebalance_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :goto_12
    return v0

    :cond_13
    const-string/jumbo v1, "pref_camera_scenemode_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_12

    :cond_25
    const-string/jumbo v1, "pref_camera_exposure_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyExposure(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_12

    :cond_37
    const-string/jumbo v1, "pref_camera_flashmode_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyFlash(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_12

    :cond_49
    const-string/jumbo v1, "pref_qc_camera_iso_key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_12

    :cond_5b
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v3, "pref_camera_scenemode_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_26

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_25
    return-void

    :cond_26
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_25
.end method

.method private applySettingsForAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 5

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method private applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 5

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method private applySettingsForLockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 5

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 5

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method private applySettingsForPrecapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 5

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method private applySettingsForUnlockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 5

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applySettingsForUnlockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 5

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method private applyWhiteBalance(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 5

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->cropRegionForZoom(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private applyZoomAndUpdate(I)V
    .registers 7

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    if-nez v1, :cond_21

    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyZoomAndUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :try_start_28
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v1, :cond_32

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->canStartMonoPreview()Z

    move-result v1

    if-eqz v1, :cond_46

    :cond_32
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    :goto_45
    return-void

    :cond_46
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_59
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_28 .. :try_end_59} :catch_5a

    goto :goto_45

    :catch_5a
    move-exception v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_45
.end method

.method private autoFocusTrigger(I)V
    .registers 8

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    if-nez v3, :cond_36

    :cond_c
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "autoFocusTrigger device["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "autoFocusTrigger "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :try_start_51
    iput v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getPreviewSurface(I)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-direct {p0, v0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setAutoFocusRequestHashCode(II)V

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const/4 v3, 0x5

    invoke-direct {p0, p1, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setState(II)V

    iget v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setAFModeToPreview(IIZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLatestFocusTime:J
    :try_end_93
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_51 .. :try_end_93} :catch_94

    :goto_93
    return-void

    :catch_94
    move-exception v1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_93
.end method

.method private canStartMonoPreview()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isMonoMode()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isDualMode()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isMonoPreviewOn()Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10

    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private cancelTouchFocus(I)V
    .registers 6

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1c
    return-void
.end method

.method private captureStillPicture(I)V
    .registers 16

    :try_start_0
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v7, v7, p1

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v7, v7, p1

    if-nez v7, :cond_36

    :cond_c
    const-string/jumbo v7, "CaptureModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "captureStillPicture device["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v11, v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    const-string/jumbo v7, "CaptureModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "captureStillPicture "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_53
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_53} :catch_127

    :try_start_53
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v11, 0x2

    aput v11, v7, p1
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_124

    :try_start_58
    monitor-exit v10

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v2

    if-eqz v2, :cond_12c

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v7

    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v10, v10, p1

    invoke-virtual {v7, v10}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createCaptureRequest(Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    :goto_6b
    iget v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mOrientation:I

    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v10, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/camera/Util;->getJpegRotation(ILandroid/hardware/camera2/CameraCharacteristics;)I

    move-result v7

    iput v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mJpegRotation:I

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mJpegRotation:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mThumbnailSize:Landroid/util/Size;

    invoke-virtual {v1, v7, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_d2

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_d2

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v7, v10, v12

    if-lez v7, :cond_d2

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v7, v10, v12

    if-lez v7, :cond_d2

    new-instance v6, Landroid/location/Location;

    invoke-direct {v6, v5}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v6, v10, v11}, Landroid/location/Location;->setTime(J)V

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v7, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_d2
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getPreviewSurface(I)Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->CdsModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForLockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    if-eqz v2, :cond_139

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v10

    if-nez p1, :cond_137

    const/4 v7, 0x1

    :goto_111
    iget-object v11, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v11, v11, p1

    iget-object v12, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v10, v7, v11, v1, v12}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->capture(ZLandroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/os/Handler;)V

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v7

    iget v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mJpegRotation:I

    invoke-virtual {v7, v10}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setJpegRotation(I)V

    :goto_123
    return-void

    :catchall_124
    move-exception v7

    monitor-exit v10

    throw v7
    :try_end_127
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_58 .. :try_end_127} :catch_127

    :catch_127
    move-exception v3

    invoke-direct {p0, p1, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_123

    :cond_12c
    :try_start_12c
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v7, v7, p1

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    goto/16 :goto_6b

    :cond_137
    const/4 v7, 0x0

    goto :goto_111

    :cond_139
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-boolean v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLongshotActive:Z

    if-eqz v7, :cond_187

    const-string/jumbo v7, "CaptureModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "longShot "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_168
    invoke-static {}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getLongshotShotLimit()I

    move-result v7

    if-ge v4, v7, :cond_178

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_168

    :cond_178
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v7, v7, p1

    new-instance v10, Lcom/android/camera/camera_adapter/camera2/CaptureModule$6;

    invoke-direct {v10, p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$6;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    iget-object v11, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v7, v0, v10, v11}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_123

    :cond_187
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isMpoOn()Z

    move-result v7

    if-eqz v7, :cond_1b3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_19f
    :goto_19f
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v7, v7, p1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v10

    new-instance v11, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;

    invoke-direct {v11, p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    iget-object v12, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v11, v12}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto/16 :goto_123

    :cond_1b3
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isRawOn()Z

    move-result v7

    if-eqz v7, :cond_19f

    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v7}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v7

    check-cast v7, Landroid/media/ImageReader;

    invoke-virtual {v7}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_1ce
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_12c .. :try_end_1ce} :catch_127

    goto :goto_19f
.end method

.method private checkAfAeStatesAndCapture(I)V
    .registers 7

    const/4 v4, 0x6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    aget v0, v0, p1

    const/4 v2, 0x1

    if-eq v2, v0, :cond_37

    const-string/jumbo v0, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAfAeStatesAndCapture: s["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_55

    monitor-exit v1

    return-void

    :cond_37
    monitor-exit v1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isDualMode()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getState(I)I

    move-result v0

    if-ne v0, v4, :cond_54

    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getState(I)I

    move-result v0

    if-ne v0, v4, :cond_54

    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->captureStillPicture(I)V

    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->captureStillPicture(I)V

    :cond_54
    :goto_54
    return-void

    :catchall_55
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_58
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->captureStillPicture(I)V

    goto :goto_54
.end method

.method private closeCamera()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v2, "CaptureModule"

    const-string/jumbo v3, "closeCamera>>>"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    :goto_c
    if-ltz v1, :cond_94

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, v1

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "closeCamera>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    const-string/jumbo v2, "CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "closeCamera<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aput-object v5, v2, v1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpened:[Z

    aput-boolean v6, v2, v1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aput-object v5, v2, v1

    :cond_63
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    if-eqz v2, :cond_74

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aput-object v5, v2, v1

    :cond_74
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->close()V

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    invoke-interface {v2, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_90
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_c

    :cond_94
    iput-boolean v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsLinked:Z

    const-string/jumbo v2, "CaptureModule"

    const-string/jumbo v3, "closeCamera<<<"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createSession(I)V
    .registers 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v6, v6, p1

    if-nez v6, :cond_f

    :cond_e
    return-void

    :cond_f
    iget-boolean v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSurfaceReady:Z

    if-eqz v6, :cond_e

    const-string/jumbo v6, "CaptureModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createSession "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :try_start_32
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getPreviewSurface(I)Landroid/view/Surface;

    move-result-object v3

    sget v6, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v6, :cond_54

    const-string/jumbo v6, "CaptureModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "monoSurface="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v7, v7, p1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    aput-object v7, v6, p1

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v6, v6, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v6, v6, p1

    invoke-virtual {v6, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v6

    if-eqz v6, :cond_91

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v6

    if-nez p1, :cond_8f

    :goto_87
    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v5, v5, p1

    invoke-virtual {v6, v4, v5, v2, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createCaptureSession(ZLandroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    :goto_8e
    return-void

    :cond_8f
    move v4, v5

    goto :goto_87

    :cond_91
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isRawOn()Z

    move-result v4

    if-eqz v4, :cond_b7

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v4}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v4

    check-cast v4, Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b7
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v4, v4, p1

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v0, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_bf
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_32 .. :try_end_bf} :catch_c0

    goto :goto_8e

    :catch_c0
    move-exception v1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_8e
.end method

.method private createSessions()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v1

    if-nez v1, :cond_37

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCamerasOpened:Z

    if-eqz v1, :cond_37

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSurfaceReady:Z

    if-eqz v1, :cond_37

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createSessions: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_7a

    :goto_36
    return-void

    :cond_37
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createSessions: surfaceReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSurfaceReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cameraReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCamerasOpened:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_61
    invoke-direct {p0, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSession(I)V

    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSession(I)V

    goto :goto_36

    :pswitch_6a
    invoke-direct {p0, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSession(I)V

    goto :goto_36

    :pswitch_6e
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSession(I)V

    goto :goto_36

    :cond_74
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSession(I)V

    goto :goto_36

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_61
        :pswitch_6a
        :pswitch_6e
    .end packed-switch
.end method

.method private getAutoFocusRequestHashCode(I)I
    .registers 4

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAutoFocusRequestHashCode:[I

    aget v0, v0, p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v1

    return v0

    :catchall_9
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getCameraMode()I
    .registers 2

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCurrentMode:I

    return v0
.end method

.method private getJpegData(Landroid/media/Image;)[B
    .registers 6

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v1, v2, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method private getLastResultAFState(I)I
    .registers 4

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLastResultAFState:[I

    aget v0, v0, p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v1

    return v0

    :catchall_9
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMainCameraId()I
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    return v1

    :pswitch_f
    return v1

    :pswitch_10
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    return v0

    :cond_13
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    return v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;II)Landroid/util/Size;
    .registers 15

    const/4 v4, 0x0

    aget-object v0, p2, v4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    array-length v5, p2

    :goto_10
    if-ge v4, v5, :cond_41

    aget-object v2, p2, v4

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    sub-float v6, v1, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3e

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-gt v6, p4, :cond_3d

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-gt v6, p3, :cond_3d

    return-object v2

    :cond_3d
    move-object v0, v2

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_41
    return-object v0
.end method

.method private getPreviewSurface(I)Landroid/view/Surface;
    .registers 3

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isDualMode()Z

    move-result v0

    if-eqz v0, :cond_17

    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getMonoDummySurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method private getState(I)I
    .registers 4

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mState:[I

    aget v0, v0, p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v1

    return v0

    :catchall_9
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleCameraError()V
    .registers 7

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "camera2_error_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_2a

    const v0, 0x7f0e0005

    :goto_26
    invoke-static {v1, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_c

    :cond_2a
    const v0, 0x7f0e0004

    goto :goto_26
.end method

.method private handleVolumeKeyEvent(ZZI)Z
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v2, "pref_camera_volumekey_function_key"

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    const v4, 0x7f0e011e

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    const v2, 0x7f0e011b

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0, p3, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->performVolumeKeyClicked(IZ)V

    return v6

    :cond_27
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    const v2, 0x7f0e011c

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isZoomEnabled()Z

    move-result v1

    if-eqz v1, :cond_5a

    if-eqz p2, :cond_5a

    if-nez p3, :cond_4a

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "zoom_volume_times"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    :cond_4a
    if-eqz p1, :cond_53

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->scaleZoomValue(F)Z

    :goto_52
    return v6

    :cond_53
    const v1, -0x42333333    # -0.1f

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->scaleZoomValue(F)Z

    goto :goto_52

    :cond_5a
    return v5
.end method

.method private hidePostCaptureAlert()V
    .registers 6

    const/16 v4, 0x64

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_58

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageCaptureShowing:Z

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ignoreTouchEvent(Z)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->show()V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->show()V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/camera/ui/V6ShutterButton;->animateIn(Ljava/lang/Runnable;IZ)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewImage()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    :cond_58
    return-void
.end method

.method private initCameraMode()I
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string/jumbo v1, "camera_rear_sub"

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isSpecialImageCaptureIntent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v3

    :cond_d
    const-string/jumbo v1, "camera_rear_dual"

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isSpecialImageCaptureIntent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    return v4

    :cond_17
    const-string/jumbo v1, "pref_camera_raw_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    return v2

    :cond_21
    const-string/jumbo v1, "pref_camera_mono_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    return v3

    :cond_2b
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getPersistSceneMode(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bayer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    return v2

    :cond_3b
    const-string/jumbo v1, "mono"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    return v3

    :cond_45
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v1

    if-eqz v1, :cond_4c

    return v4

    :cond_4c
    return v2
.end method

.method private initClearSightOn()V
    .registers 2

    const-string/jumbo v0, "camera_rear_sub"

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isSpecialImageCaptureIntent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "camera_rear_dual"

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isSpecialImageCaptureIntent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsClearSightOn:Z

    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isClearSightOn(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isDualMode()Z

    move-result v0

    goto :goto_13
.end method

.method private initRawImageReaderList()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isRawOn()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    if-nez v1, :cond_1e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v2, :cond_1e

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1e
    return-void
.end method

.method private initializeFirstTime()V
    .registers 3

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFirstTimeInitialized:Z

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setMediaSaver(Lcom/android/camera/storage/ImageSaver;)V

    :cond_20
    new-instance v1, Lcom/android/camera/camera_adapter/camera2/NamedImages;

    invoke-direct {v1}, Lcom/android/camera/camera_adapter/camera2/NamedImages;-><init>()V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFirstTimeInitialized:Z

    return-void
.end method

.method private initializePreviewConfiguration(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method private initializeSecondTime()V
    .registers 3

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setMediaSaver(Lcom/android/camera/storage/ImageSaver;)V

    :cond_15
    new-instance v1, Lcom/android/camera/camera_adapter/camera2/NamedImages;

    invoke-direct {v1}, Lcom/android/camera/camera_adapter/camera2/NamedImages;-><init>()V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

    return-void
.end method

.method private isBackCamera()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private isCaptureSessionReady()Z
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    :goto_f
    return v0

    :pswitch_10
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, v2

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    :pswitch_22
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, v2

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    goto :goto_f

    :cond_2a
    const/4 v0, 0x0

    goto :goto_f

    :pswitch_2c
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_36

    const/4 v0, 0x1

    goto :goto_f

    :cond_36
    const/4 v0, 0x0

    goto :goto_f

    :cond_38
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_42

    const/4 v0, 0x1

    goto :goto_f

    :cond_42
    const/4 v0, 0x0

    goto :goto_f

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_10
        :pswitch_22
        :pswitch_2c
    .end packed-switch
.end method

.method private isClearSightOn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsClearSightOn:Z

    return v0
.end method

.method private isCountDownMode()Z
    .registers 3

    const/4 v0, 0x0

    const-string/jumbo v1, "pref_delay_capture_mode"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isDualMode()Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private isFlashOff(I)Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isFlashSupported(I)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    :cond_a
    return v1
.end method

.method private isInMode(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v2

    packed-switch v2, :pswitch_data_2c

    return v1

    :pswitch_10
    if-eqz p1, :cond_16

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v2, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16

    :pswitch_19
    if-nez p1, :cond_1c

    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b

    :pswitch_1e
    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v2, :cond_23

    :goto_22
    return v0

    :cond_23
    move v0, v1

    goto :goto_22

    :cond_25
    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    if-ne p1, v2, :cond_2a

    :goto_29
    return v0

    :cond_2a
    move v0, v1

    goto :goto_29

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_19
        :pswitch_1e
    .end packed-switch
.end method

.method private isMonoMode()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isMpoOn()Z
    .registers 2

    const-string/jumbo v0, "camera_rear_sub"

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isSpecialImageCaptureIntent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v0, "camera_rear_dual"

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isSpecialImageCaptureIntent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isMpoOn(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1a
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isDualMode()Z

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private isPreviewVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private isRawOn()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_1a

    const-string/jumbo v2, "pref_camera_raw_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v2

    if-ne v2, v0, :cond_18

    :goto_17
    return v0

    :cond_18
    move v0, v1

    goto :goto_17

    :cond_1a
    move v0, v1

    goto :goto_17
.end method

.method private isSceneModeOn()Z
    .registers 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v4, "pref_camera_scenemode_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v2, 0x1

    :cond_14
    return v2
.end method

.method private isShutterButtonClickable()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private isSpecialImageCaptureIntent(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extras.CAMERA_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isTouchToFocusAllowed()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isTakingPicture()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isSceneModeOn()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageCaptureShowing:Z

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    return v0

    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method private lockExposure(I)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    if-nez v1, :cond_36

    :cond_c
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lockExposure session["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lockExposure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_50
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForLockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setState(II)V

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_6e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_50 .. :try_end_6e} :catch_6f

    :goto_6e
    return-void

    :catch_6f
    move-exception v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_6e
.end method

.method private lockFocus(I)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    if-nez v3, :cond_36

    :cond_c
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lockFocus session["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    if-eqz v3, :cond_c

    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lockFocus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_59
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v5, 0x1

    aput v5, v3, p1
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_a2

    monitor-exit v4

    sget v3, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne v3, p1, :cond_6c

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isDualMode()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->startMonoPreview()V

    :cond_6c
    :try_start_6c
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getPreviewSurface(I)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-direct {p0, v0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLockRequestHashCode:[I

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v4

    aput v4, v3, p1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setState(II)V

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_a1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6c .. :try_end_a1} :catch_a5

    :goto_a1
    return-void

    :catchall_a2
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_a5
    move-exception v1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_a1
.end method

.method private onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V
    .registers 7

    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p2}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne v1, p1, :cond_37

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isMonoMode()Z

    move-result v1

    if-eqz v1, :cond_40

    :cond_37
    const/4 v1, 0x2

    if-eq v1, v0, :cond_3d

    const/4 v1, 0x3

    if-ne v1, v0, :cond_40

    :cond_3d
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraError()V

    :cond_40
    return-void
.end method

.method private onCameraError()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private onCaptureDone(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v2, 0x0

    aput v2, v0, p1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3f

    monitor-exit v1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v0, v0, p1

    if-nez v0, :cond_42

    :cond_15
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureDone session["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_42
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v0

    if-ne p1, v0, :cond_6c

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule$10;

    invoke-direct {v1, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$10;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6c
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCancelAutoFocusIfMove:Z

    if-nez v0, :cond_73

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->unlockFocus(I)V

    :cond_73
    return-void
.end method

.method private onModeSelected(Ljava/lang/Object;)V
    .registers 9

    const/4 v6, 0x0

    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onModeSelected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "pref_camera_panoramamode_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->switchToOtherMode(I)V

    return-void

    :cond_29
    const-string/jumbo v3, "pref_camera_mono_mode_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string/jumbo v3, "pref_camera_raw_mode_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_39
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v0, :cond_50

    if-eqz v2, :cond_50

    const-string/jumbo v3, "pref_camera_stereo_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->restart()V

    return-void

    :cond_4e
    const/4 v0, 0x1

    goto :goto_39

    :cond_50
    if-nez v0, :cond_78

    if-eqz v2, :cond_78

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setSelectedMode(Ljava/lang/String;)V

    :goto_59
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6SettingPage;->getSelectedItemKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7c

    const-string/jumbo v3, "pref_camera_mono_mode_key"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string/jumbo v3, "pref_camera_raw_mode_key"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    :cond_77
    :goto_77
    return-void

    :cond_78
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setSelectedMode(Ljava/lang/String;)V

    goto :goto_59

    :cond_7c
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->switchToOtherMode(I)V

    goto :goto_77
.end method

.method private onStereoModeChanged()V
    .registers 2

    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->switchToOtherMode(I)V

    :cond_d
    return-void
.end method

.method private onUIStyleChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->changePreviewSurfaceSize()V

    return-void
.end method

.method private openCamera(I)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    :cond_7
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "openCamera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_21
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v4, "camera"

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraId:[Ljava/lang/String;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p1

    aput-object v4, v3, p1

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x1388

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_59

    const-string/jumbo v3, "CaptureModule"

    const-string/jumbo v4, "Time out waiting to lock camera opening."

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Time out waiting to lock camera opening"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_54
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_21 .. :try_end_54} :catch_54
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_54} :catch_65

    :catch_54
    move-exception v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    :goto_58
    return-void

    :cond_59
    :try_start_59
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraId:[Ljava/lang/String;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_64
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_59 .. :try_end_64} :catch_54
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_64} :catch_65

    goto :goto_58

    :catch_65
    move-exception v1

    const-string/jumbo v3, "CaptureModule"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58
.end method

.method private resetCameraState()V
    .registers 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSurfaceReady:Z

    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x3

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpened:[Z

    aput-boolean v2, v1, v0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mState:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method

.method private restart()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->reinit()V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onPauseBeforeSuper()V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onPauseAfterSuper()V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onResumeBeforeSuper()V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onResumeAfterSuper()V

    return-void
.end method

.method private runPrecaptureSequence(I)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    if-nez v3, :cond_36

    :cond_c
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runPrecaptureSequence session["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    if-eqz v3, :cond_c

    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runPrecaptureSequence "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_56
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v3, v3, p1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getPreviewSurface(I)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-direct {p0, v0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForPrecapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPrecaptureRequestHashCode:[I

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v4

    aput v4, v3, p1

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setState(II)V

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_8b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_56 .. :try_end_8b} :catch_8c

    :goto_8b
    return-void

    :catch_8c
    move-exception v1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_8b
.end method

.method private saveRawImage(I)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v2, :cond_a7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngImage:Landroid/media/Image;

    if-eqz v2, :cond_a7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->getAndRetain()Ljava/lang/AutoCloseable;

    move-result-object v2

    if-eqz v2, :cond_a7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->nameNewImage(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mNamedImages:Lcom/android/camera/camera_adapter/camera2/NamedImages;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->getNextNameEntity()Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    move-result-object v14

    if-nez v14, :cond_a8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_57
    if-nez v14, :cond_ab

    const-wide/16 v6, -0x1

    :goto_5b
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngImage:Landroid/media/Image;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngImage:Landroid/media/Image;

    invoke-virtual {v9}, Landroid/media/Image;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngImage:Landroid/media/Image;

    invoke-virtual {v10}, Landroid/media/Image;->getHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/android/camera/storage/ImageSaver;->addDng(Landroid/media/Image;Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;Ljava/lang/String;JLandroid/location/Location;IIILandroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngImage:Landroid/media/Image;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDngCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    :cond_a7
    return-void

    :cond_a8
    iget-object v5, v14, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_57

    :cond_ab
    iget-wide v6, v14, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->date:J

    goto :goto_5b
.end method

.method private setAFModeToPreview(IIZ)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    if-nez v1, :cond_36

    :cond_c
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAFModeToPreview session["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAFModeToPreview id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v1, v1, p1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :try_start_76
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v1, :cond_80

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->canStartMonoPreview()Z

    move-result v1

    if-eqz v1, :cond_94

    :cond_80
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    :goto_93
    return-void

    :cond_94
    if-nez p3, :cond_80

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_a9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_76 .. :try_end_a9} :catch_aa

    goto :goto_93

    :catch_aa
    move-exception v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_93
.end method

.method private setAutoFocusRequestHashCode(II)V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAutoFocusRequestHashCode:[I

    aput p2, v0, p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v1

    return-void

    :catchall_9
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setCurrentMode()V
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->initCameraMode()I

    move-result v0

    :goto_a
    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCurrentMode:I

    return-void

    :cond_d
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private setLastResultAFState(II)V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mLastResultAFState:[I

    aput p2, v0, p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v1

    return-void

    :catchall_9
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setState(II)V
    .registers 7

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mState:[I

    aget v0, v0, p1

    if-eq v0, p2, :cond_41

    const-string/jumbo v0, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "s["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mState:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mState:[I

    aput p2, v0, p1
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_43

    :cond_41
    monitor-exit v1

    return-void

    :catchall_43
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setUpCameraOutputs()V
    .registers 27

    const-string/jumbo v20, "CaptureModule"

    const-string/jumbo v21, "setUpCameraOutputs"

    invoke-static/range {v20 .. v21}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v20, v0

    const-string/jumbo v21, "camera"

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/CameraManager;

    const/4 v5, -0x1

    :try_start_19
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->initRawImageReaderList()V

    invoke-virtual {v11}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    :goto_21
    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_27f

    aget-object v6, v7, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sget v20, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    move/from16 v0, v20

    if-ne v5, v0, :cond_3d

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isRawOn()Z

    move-result v20

    if-eqz v20, :cond_3d

    :cond_3a
    :goto_3a
    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_3d
    invoke-virtual {v11, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isInMode(I)Z

    move-result v20

    if-eqz v20, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraIdList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    sget-object v20, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v12, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraId:[Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v6, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move-object/from16 v20, v0

    const/16 v21, 0x100

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getMaxPictureSize(II)Landroid/util/Size;

    move-result-object v17

    const-string/jumbo v20, "CaptureModule"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "camId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " pictureSize="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v20

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUIStyle:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_ca

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUIStyle:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onUIStyleChanged(I)V

    :cond_ca
    sget-object v20, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/util/Size;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mThumbnailSize:Landroid/util/Size;

    const-string/jumbo v20, "CaptureModule"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "setUpCameraOutputs - thumbnail size: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mThumbnailSize:Landroid/util/Size;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v20

    move/from16 v0, v20

    if-ne v10, v0, :cond_163

    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const-class v20, Landroid/view/SurfaceHolder;

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v14

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getOptimalPreviewSize(Landroid/util/Size;[Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    move-object/from16 v20, v0

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v21

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Lcom/android/camera/ui/UIController;->setPreviewSize(II)V

    :cond_163
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v20

    if-eqz v20, :cond_1a2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v20

    move/from16 v0, v20

    if-ne v10, v0, :cond_3a

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v12, v1, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->init(Landroid/hardware/camera2/params/StreamConfigurationMap;IILandroid/content/Context;)V

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->setCallback(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;)V
    :try_end_199
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_19 .. :try_end_199} :catch_19b

    goto/16 :goto_3a

    :catch_19b
    move-exception v9

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    :goto_1a1
    return-void

    :cond_1a2
    :try_start_1a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v22

    const/16 v23, 0x100

    const/16 v24, 0x3

    invoke-static/range {v21 .. v24}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v21

    aput-object v21, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageReader:[Landroid/media/ImageReader;

    move-object/from16 v20, v0

    aget-object v20, v20, v10

    new-instance v21, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isRawOn()Z

    move-result v20

    if-eqz v20, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getMaxPictureSize(II)Landroid/util/Size;

    move-result-object v15

    const-string/jumbo v20, "CaptureModule"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "camId= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " rawSize="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_235

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->getAndRetain()Ljava/lang/AutoCloseable;

    move-result-object v20

    if-nez v20, :cond_257

    :cond_235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v22

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v23

    const/16 v24, 0x20

    const/16 v25, 0xa

    invoke-static/range {v22 .. v25}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;-><init>(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v10, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mRawImageReader:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v20

    check-cast v20, Landroid/media/ImageReader;

    new-instance v21, Lcom/android/camera/camera_adapter/camera2/CaptureModule$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$9;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    goto/16 :goto_3a

    :cond_27f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraIdList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isAutoFocusRegionSupported(Ljava/util/List;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAutoFocusRegionSupported:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraIdList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isAutoExposureRegionSupported(Ljava/util/List;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAutoExposureRegionSupported:Z
    :try_end_2ab
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1a2 .. :try_end_2ab} :catch_19b

    goto/16 :goto_1a1
.end method

.method private setupCaptureParams()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsImageCaptureIntent:Z

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string/jumbo v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSaveUri:Landroid/net/Uri;

    :cond_22
    return-void
.end method

.method private showPostCaptureAlert()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_4d

    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageCaptureShowing:Z

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->ignoreTouchEvent(Z)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->hide()V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->setPopupVisible(Z)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/camera/ui/V6ShutterButton;->animateOut(Ljava/lang/Runnable;IZ)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getOrientationIndicator()Lcom/android/camera/ui/OrientationIndicator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/OrientationIndicator;->updateVisible(Z)V

    :cond_4d
    return-void
.end method

.method private startBackgroundThread()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CameraImageAvailable"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CameraCaptureCallback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MpoSaveHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;

    return-void
.end method

.method private startMonoPreview()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v1, v1, v2

    if-nez v1, :cond_2f

    :cond_e
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMonoPreview session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v4, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->canStartMonoPreview()Z

    move-result v1

    if-nez v1, :cond_4c

    :try_start_35
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v3, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_4c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_35 .. :try_end_4c} :catch_4d

    :cond_4c
    :goto_4c
    return-void

    :catch_4d
    move-exception v0

    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_4c
.end method

.method private stopBackgroundThread()V
    .registers 4

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :try_start_9
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_14} :catch_51

    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :try_start_1d
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageAvailableHandler:Landroid/os/Handler;
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_28} :catch_5d

    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :try_start_31
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallbackHandler:Landroid/os/Handler;
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_3c} :catch_69

    :cond_3c
    :goto_3c
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_45
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mMpoSaveHandler:Landroid/os/Handler;
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_50} :catch_75

    :cond_50
    :goto_50
    return-void

    :catch_51
    move-exception v0

    const-string/jumbo v1, "CaptureModule"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :catch_5d
    move-exception v0

    const-string/jumbo v1, "CaptureModule"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_69
    move-exception v0

    const-string/jumbo v1, "CaptureModule"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    :catch_75
    move-exception v0

    const-string/jumbo v1, "CaptureModule"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50
.end method

.method private stopMonoPreview()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v1, v1, v2

    if-nez v1, :cond_2f

    :cond_e
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopMonoPreview session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v4, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    const-string/jumbo v1, "CaptureModule"

    const-string/jumbo v2, "stopMonoPreview"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_38
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->canStartMonoPreview()Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_47
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_38 .. :try_end_47} :catch_48

    :cond_47
    :goto_47
    return-void

    :catch_48
    move-exception v0

    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_47
.end method

.method private switchToOtherMode(I)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    :cond_1c
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    return-void
.end method

.method private takePicture()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "takePicture"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStartTime:J

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->enableCameraControls(Z)V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    :goto_20
    return-void

    :pswitch_21
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->takeStereoPicture()V

    goto :goto_20

    :pswitch_25
    invoke-direct {p0, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->takeSinglePicture(I)V

    goto :goto_20

    :pswitch_29
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->takeSinglePicture(I)V

    goto :goto_20

    :cond_2f
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->takeSinglePicture(I)V

    goto :goto_20

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_21
        :pswitch_25
        :pswitch_29
    .end packed-switch
.end method

.method private takeSinglePicture(I)V
    .registers 6

    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "takeSinglePicture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1d
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    aget v0, v0, p1

    if-eqz v0, :cond_43

    const-string/jumbo v0, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "takeSinglePicture: previous state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_1d .. :try_end_41} :catchall_72

    monitor-exit v1

    return-void

    :cond_43
    monitor-exit v1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->trackTakingPicture()V

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getLastResultAFState(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_78

    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "takeSinglePicture: focusing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6b
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v2, 0x1

    aput v2, v0, p1
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_75

    monitor-exit v1

    :goto_71
    return-void

    :catchall_72
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_75
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_78
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->captureStillPicture(I)V

    goto :goto_71
.end method

.method private takeStereoPicture()V
    .registers 8

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "takeStereoPicture"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget v0, v0, v2

    if-eqz v0, :cond_51

    :cond_1f
    const-string/jumbo v0, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "takeStereoPicture: previous state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    sget v4, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_10 .. :try_end_4f} :catchall_87

    monitor-exit v1

    return-void

    :cond_51
    monitor-exit v1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->trackTakingPicture()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-direct {p0, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->updateCaptureProgressBar(Z)V

    :cond_5e
    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getLastResultAFState(I)I

    move-result v0

    if-eq v5, v0, :cond_6c

    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getLastResultAFState(I)I

    move-result v0

    if-ne v5, v0, :cond_8d

    :cond_6c
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "takeStereoPicture: focusing"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_78
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    const/4 v3, 0x1

    aput v3, v0, v2
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_8a

    monitor-exit v1

    :goto_86
    return-void

    :catchall_87
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_8a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_8d
    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getState(I)I

    move-result v0

    if-ne v0, v6, :cond_a4

    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getState(I)I

    move-result v0

    if-ne v0, v6, :cond_a4

    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->captureStillPicture(I)V

    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->captureStillPicture(I)V

    goto :goto_86

    :cond_a4
    invoke-direct {p0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->lockFocus(I)V

    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->lockFocus(I)V

    goto :goto_86
.end method

.method private trackTakingPicture()V
    .registers 4

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    :goto_7
    return-void

    :pswitch_8
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "capture_nums_mono"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_13
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "capture_nums_raw"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_1e
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "capture_nums_dual"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_7

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method

.method private unlockFocus(I)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    if-nez v2, :cond_36

    :cond_c
    const-string/jumbo v2, "CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlockFocus session["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, p1

    if-eqz v2, :cond_c

    const-string/jumbo v2, "CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlockFocus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_56
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraDevice:[Landroid/hardware/camera2/CameraDevice;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getPreviewSurface(I)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-direct {p0, v0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForUnlockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    aget-object v2, v2, p1

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setState(II)V

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v2, v2, p1

    invoke-direct {p0, v2, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applySettingsForUnlockExposure(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mControlAFMode:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setAFModeToPreview(IIZ)V
    :try_end_93
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_56 .. :try_end_93} :catch_94

    :goto_93
    return-void

    :catch_94
    move-exception v1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_93
.end method

.method private updateCaptureProgressBar(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureProgressBar()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method private updateFocusStateChange(Landroid/hardware/camera2/CaptureResult;I)V
    .registers 6

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getLastResultAFState(I)I

    move-result v1

    if-eq v0, v1, :cond_3a

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v1

    if-ne p2, v1, :cond_37

    const/4 v1, 0x4

    if-ne v1, v0, :cond_2f

    invoke-direct {p0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getState(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2f

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->playCameraSound(I)V

    :cond_2f
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFocusStateListener:Lcom/android/camera/camera_adapter/camera2/FocusStateListener;

    if-eqz v1, :cond_37

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageCaptureShowing:Z

    if-eqz v1, :cond_3b

    :cond_37
    :goto_37
    invoke-direct {p0, p2, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setLastResultAFState(II)V

    :cond_3a
    return-void

    :cond_3b
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule$12;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$12;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_37
.end method


# virtual methods
.method public cropRegionForZoom(I)Landroid/graphics/Rect;
    .registers 12

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v6, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getSensorActiveArraySize(I)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getZoomValue()F

    move-result v7

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    float-to-int v3, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getZoomValue()F

    move-result v7

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    float-to-int v5, v6

    sub-int v6, v2, v3

    sub-int v7, v4, v5

    add-int v8, v2, v3

    add-int v9, v4, v5

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aput-object v1, v6, p1

    const-string/jumbo v6, "CaptureModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cropRegionForZoom cam["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " zoom="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getZoomValue()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aget-object v6, v6, p1

    return-object v6
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "pref_camera_panoramamode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    const-string/jumbo v1, "pref_delay_capture_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string/jumbo v1, "pref_camera_ubifocus_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    const-string/jumbo v1, "pref_camera_manual_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/Device;->isSupportGradienter()Z

    move-result v1

    if-eqz v1, :cond_41

    const-string/jumbo v1, "pref_camera_gradienter_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v1

    if-eqz v1, :cond_4b

    sget-boolean v1, Lcom/android/camera/Device;->IS_H2X_LC:Z

    if-eqz v1, :cond_b6

    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_bd

    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v1

    if-eqz v1, :cond_bd

    const-string/jumbo v1, "pref_camera_groupshot_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5d
    :goto_5d
    sget-boolean v1, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v1, :cond_67

    const-string/jumbo v1, "pref_camera_scenemode_setting_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_67
    invoke-static {}, Lcom/android/camera/Device;->isMonoSupported()Z

    move-result v1

    if-eqz v1, :cond_73

    const-string/jumbo v1, "pref_camera_mono_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_73
    invoke-static {}, Lcom/android/camera/Device;->isSupportSquare()Z

    move-result v1

    if-eqz v1, :cond_7f

    const-string/jumbo v1, "pref_camera_square_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7f
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_91

    invoke-static {}, Lcom/android/camera/Device;->isRAWSupported()Z

    move-result v1

    if-eqz v1, :cond_91

    const-string/jumbo v1, "pref_camera_raw_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_91
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_a9

    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v1

    if-eqz v1, :cond_a9

    const-string/jumbo v1, "pref_camera_hand_night_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a9
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v1

    if-eqz v1, :cond_b5

    const-string/jumbo v1, "pref_camera_tilt_shift_mode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b5
    return-object v0

    :cond_b6
    const-string/jumbo v1, "pref_camera_face_beauty_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_bd
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v1

    if-eqz v1, :cond_5d

    const-string/jumbo v1, "pref_camera_hand_night_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/Base2Module;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    return v8

    :cond_a
    sparse-switch p2, :sswitch_data_d2

    return v6

    :sswitch_e
    const-string/jumbo v4, "CaptureModule"

    const-string/jumbo v5, "msg flash_mode_button"

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :sswitch_18
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1f

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onShutterButtonClick()V

    :cond_1e
    :goto_1e
    return v8

    :cond_1f
    if-ne p1, v8, :cond_1e

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v8, :cond_1e

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v4, v3}, Lcom/android/camera/CameraSettings;->writeExposure(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    const-string/jumbo v5, "pref_camera_exposure_key"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getAeCompensationStep(I)F

    move-result v4

    int-to-float v5, v3

    mul-float v0, v4, v5

    const-string/jumbo v4, "pref_camera_exposure_key"

    invoke-virtual {p0, v4, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->updateStatusBar(Ljava/lang/String;F)V

    goto :goto_1e

    :sswitch_64
    invoke-virtual {p0, v5}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onThumbnailClicked(Landroid/view/View;)V

    return v8

    :sswitch_68
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    sget v5, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    invoke-direct {p0, v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->switchToOtherMode(I)V

    return v8

    :sswitch_73
    if-nez p1, :cond_79

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onShutterButtonClick()V

    :cond_78
    :goto_78
    return v8

    :cond_79
    if-ne p1, v8, :cond_78

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onShutterButtonLongClick()V

    goto :goto_78

    :sswitch_7f
    new-instance v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule$11;

    invoke-direct {v1, p0, p3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$11;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->enableCameraControls(Z)V

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ShutterButton;->onPause()V

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/FocusView;->clear()V

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/BottomControlLowerPanel;->animationSwitchToVideo(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    return v8

    :sswitch_ac
    const/4 v4, 0x6

    if-ne p1, v4, :cond_b2

    invoke-direct {p0, p3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onModeSelected(Ljava/lang/Object;)V

    :cond_b2
    return v8

    :sswitch_b3
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onStereoModeChanged()V

    return v8

    :sswitch_b7
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    return v8

    :sswitch_c3
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->openSettingActivity()V

    return v8

    :sswitch_c7
    if-nez p1, :cond_cd

    invoke-virtual {p0, v5}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onReviewDoneClicked(Landroid/view/View;)V

    :goto_cc
    return v8

    :cond_cd
    invoke-virtual {p0, v5}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onReviewCancelClicked(Landroid/view/View;)V

    goto :goto_cc

    nop

    :sswitch_data_d2
    .sparse-switch
        0x7f09000c -> :sswitch_b7
        0x7f09000e -> :sswitch_64
        0x7f090012 -> :sswitch_73
        0x7f090015 -> :sswitch_7f
        0x7f09001e -> :sswitch_68
        0x7f090023 -> :sswitch_c7
        0x7f090066 -> :sswitch_e
        0x7f09007c -> :sswitch_b3
        0x7f090088 -> :sswitch_18
        0x7f09008e -> :sswitch_ac
        0x7f090090 -> :sswitch_c3
    .end sparse-switch
.end method

.method public isCaptureIntent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method public isImageCaptureIntent()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    return v0
.end method

.method public isTakingPicture()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureStateLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_5
    :try_start_5
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    array-length v1, v1

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureState:[I

    aget v1, v1, v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_18

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    monitor-exit v2

    return v3

    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public linkBayerMono(I)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "linkBayerMono "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_48

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_47
    :goto_47
    return-void

    :cond_48
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_47

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkMainKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->BayerMonoLinkSessionIdKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_47
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onBackPressed()Z
    .registers 5

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onBack()Z

    move-result v1

    if-eqz v1, :cond_a

    return v3

    :cond_a
    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    return v3

    :cond_1e
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->isItemSelected()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPage;->resetSettings()Z

    move-result v0

    if-eqz v0, :cond_39

    return v3

    :cond_39
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewPage;->isPopupShown()Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    return v3

    :cond_50
    invoke-super {p0}, Lcom/android/camera/module/Base2Module;->onBackPressed()Z

    move-result v1

    return v1
.end method

.method public onClearSightFailure()V
    .registers 3

    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onClearSightFailure"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->hideCaptureProgressBarTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_18
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "clear_sight_failure_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCaptureDone(I)V

    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCaptureDone(I)V

    return-void
.end method

.method public onClearSightStarted()V
    .registers 3

    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onClearSightStarted"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClearSightSuccess()V
    .registers 3

    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onClearSightSuccess"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->hideCaptureProgressBarTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCaptureDone(I)V

    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCaptureDone(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setDisplayOrientation()V

    return-void
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .registers 5

    const/4 v2, 0x0

    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/camera/module/Base2Module;->onCreate(Lcom/android/camera/Camera;)V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isRestoring()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->resetRestoreFlag()V

    :goto_1c
    invoke-static {p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->registerListener(Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->init(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setupCaptureParams()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->resetCameraState()V

    invoke-virtual {p1}, Lcom/android/camera/Camera;->createContentView()V

    invoke-virtual {p1, v2, v2}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCreate()V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->skipDraw(Z)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    :cond_5e
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFocusStateListener:Lcom/android/camera/camera_adapter/camera2/FocusStateListener;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->enableCameraControls(Z)V

    return-void

    :cond_7a
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->resetCameraSettingsIfNeed()V

    goto :goto_1c
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/module/Base2Module;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->unregisterListener(Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->skipDraw(Z)V

    :cond_1a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_28

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Base2Module;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_9
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isCaptureSessionReady()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x18

    if-ne p1, v0, :cond_25

    move v0, v1

    :goto_1a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_25
    const/4 v0, 0x0

    goto :goto_1a

    nop

    :pswitch_data_28
    .packed-switch 0x18
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_4e

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/Base2Module;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2f

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isCaptureSessionReady()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onShutterButtonClick()V

    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v2, "capture_times_finger"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    :cond_2f
    return v1

    :sswitch_30
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isCaptureSessionReady()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x18

    if-ne p1, v0, :cond_4c

    move v0, v1

    :goto_41
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_4c
    move v0, v2

    goto :goto_41

    :sswitch_data_4e
    .sparse-switch
        0x18 -> :sswitch_30
        0x19 -> :sswitch_30
        0x1b -> :sswitch_a
        0x42 -> :sswitch_a
    .end sparse-switch
.end method

.method public onPauseAfterSuper()V
    .registers 8

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/camera/module/Base2Module;->onPauseAfterSuper()V

    const-string/jumbo v2, "CaptureModule"

    const-string/jumbo v3, "onPause>>>"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    const/4 v1, 0x0

    :try_start_17
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string/jumbo v2, "CaptureModule"

    const-string/jumbo v3, "Time out waiting to pause activity."

    invoke-static {v2, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_2c} :catch_69

    :cond_2c
    :goto_2c
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->stopBackgroundThread()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isClearSightOn()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->close()V

    :cond_3c
    const-string/jumbo v2, "CaptureModule"

    const-string/jumbo v3, "ClearSightImageProcessor close done"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->closeCamera()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->resetCameraState()V

    if-eqz v1, :cond_52

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_52
    invoke-direct {p0, v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->updateCaptureProgressBar(Z)V

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->hideSurfaceView()V

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->onPause()V

    const-string/jumbo v2, "CaptureModule"

    const-string/jumbo v3, "onPause<<<"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_69
    move-exception v0

    const-string/jumbo v2, "CaptureModule"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method public onPreviewTextureCopied()V
    .registers 1

    return-void
.end method

.method public onPreviewUIDestroyed()V
    .registers 3

    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onPreviewUIDestroyed"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreviewUIReady()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSurfaceReady:Z

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSessions()V

    return-void
.end method

.method public onReleaseShutterLock()V
    .registers 3

    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onReleaseShutterLock"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->playCameraSound(I)V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->animateCapture()V

    return-void
.end method

.method public onResumeAfterSuper()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/camera/module/Base2Module;->onResumeAfterSuper()V

    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setCurrentMode()V

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageCaptureShowing:Z

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onResume()V

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    :cond_37
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->showSurfaceView()V

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraIdList:Ljava/util/List;

    iput-boolean v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCancelAutoFocusIfMove:Z

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->initClearSightOn()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setUpCameraOutputs()V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setDisplayOrientation()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->startBackgroundThread()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v1

    packed-switch v1, :pswitch_data_ae

    :goto_79
    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFirstTimeInitialized:Z

    if-nez v1, :cond_a9

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->initializeFirstTime()V

    :goto_80
    return-void

    :pswitch_81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_79

    :pswitch_8d
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_79

    :cond_9b
    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_79

    :cond_a9
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->initializeSecondTime()V

    goto :goto_80

    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_81
        :pswitch_81
        :pswitch_8d
    .end packed-switch
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mImageCaptureShowing:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->hidePostCaptureAlert()V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDecodeTaskForReview:Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDecodeTaskForReview:Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;->cancel(Z)Z

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_11
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .registers 12

    const/4 v9, -0x1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v6

    if-eqz v6, :cond_8

    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mJpegImageData:[B

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v6, :cond_36

    const/4 v5, 0x0

    :try_start_f
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/android/camera/Camera;->setResult(I)V

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->finish()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_28} :catch_2c
    .catchall {:try_start_f .. :try_end_28} :catchall_31

    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_2b
    return-void

    :catch_2c
    move-exception v2

    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2b

    :catchall_31
    move-exception v6

    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    :cond_36
    invoke-static {v1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v4

    const v6, 0xc800

    invoke-static {v1, v6}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "inline-data"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "data"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->finish()V

    goto :goto_2b
.end method

.method public onSettingsChanged(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v10

    if-eqz v10, :cond_7

    return-void

    :cond_7
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;

    iget-object v2, v3, Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;->key:Ljava/lang/String;

    iget-object v9, v3, Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;->values:Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;

    iget-object v10, v9, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    if-eqz v10, :cond_43

    iget-object v8, v9, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    :goto_25
    const-string/jumbo v10, "persist.camera.scene_mode"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_46

    :cond_2e
    :goto_2e
    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->restart()V

    :cond_33
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v10

    if-eqz v10, :cond_76

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v10

    packed-switch v10, :pswitch_data_112

    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_43
    iget-object v8, v9, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;->value:Ljava/lang/String;

    goto :goto_25

    :cond_46
    const-string/jumbo v10, "persist.camera.clear_sight"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2e

    const-string/jumbo v10, "persist.camera.mono_preview"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    goto :goto_2e

    :pswitch_59
    const/4 v10, 0x0

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v5, v10

    goto :goto_40

    :pswitch_60
    sget v10, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v7, v10

    goto :goto_40

    :pswitch_68
    const/4 v10, 0x0

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v5, v10

    sget v10, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v7, v10

    goto :goto_40

    :cond_76
    sget v10, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-direct {p0, v10, v2, v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyPreferenceToPreview(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v6, v10

    goto :goto_40

    :cond_7e
    if-eqz v5, :cond_9c

    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-eqz v10, :cond_9c

    :try_start_87
    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v13, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_9c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_87 .. :try_end_9c} :catch_e5

    :cond_9c
    :goto_9c
    if-eqz v7, :cond_c3

    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v10, v10, v11

    if-eqz v10, :cond_c3

    :try_start_a6
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->canStartMonoPreview()Z

    move-result v10

    if-eqz v10, :cond_eb

    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v12, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v13, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_c3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_a6 .. :try_end_c3} :catch_103

    :cond_c3
    :goto_c3
    if-eqz v6, :cond_e4

    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    aget-object v10, v10, v11

    if-eqz v10, :cond_e4

    :try_start_cd
    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v12, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v13, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_e4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_cd .. :try_end_e4} :catch_10a

    :cond_e4
    :goto_e4
    return-void

    :catch_e5
    move-exception v1

    const/4 v10, 0x0

    invoke-direct {p0, v10, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_9c

    :cond_eb
    :try_start_eb
    iget-object v10, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureSession:[Landroid/hardware/camera2/CameraCaptureSession;

    sget v11, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mPreviewRequestBuilder:[Landroid/hardware/camera2/CaptureRequest$Builder;

    sget v12, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v13, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_102
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_eb .. :try_end_102} :catch_103

    goto :goto_c3

    :catch_103
    move-exception v1

    sget v10, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v10, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_c3

    :catch_10a
    move-exception v1

    sget v10, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-direct {p0, v10, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCameraAccessException(ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_e4

    nop

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_68
        :pswitch_59
        :pswitch_60
    .end packed-switch
.end method

.method public onShutterButtonClick()V
    .registers 5

    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onShutterButtonClick"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isTakingPicture()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_47

    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->shouldStopShot()Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "ImageSaver is full, wait for a moment!"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    const v1, 0x7f0e0224

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return-void

    :cond_6a
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->takePicture()V

    return-void
.end method

.method public onShutterButtonLongClick()V
    .registers 3

    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "onShutterButtonLongClick"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSingleTapUp(II)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isPaused()Z

    move-result v0

    if-nez v0, :cond_77

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCamerasOpened:Z

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAutoFocusRegionSupported:Z

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAutoExposureRegionSupported:Z

    if-eqz v0, :cond_77

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isTouchToFocusAllowed()Z

    move-result v0

    if-eqz v0, :cond_77

    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSingleTapUp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showStart()V

    iput-boolean v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCancelAutoFocusIfMove:Z

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    :goto_76
    return-void

    :cond_77
    return-void

    :pswitch_78
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->triggerFocusAtPoint(FFI)V

    int-to-float v0, p1

    int-to-float v1, p2

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->triggerFocusAtPoint(FFI)V

    goto :goto_76

    :pswitch_85
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->triggerFocusAtPoint(FFI)V

    goto :goto_76

    :pswitch_8b
    int-to-float v0, p1

    int-to-float v1, p2

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->triggerFocusAtPoint(FFI)V

    goto :goto_76

    :cond_93
    int-to-float v0, p1

    int-to-float v1, p2

    sget v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->triggerFocusAtPoint(FFI)V

    goto :goto_76

    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_78
        :pswitch_85
        :pswitch_8b
    .end packed-switch
.end method

.method public onStop()V
    .registers 1

    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    :cond_11
    return-void
.end method

.method public onUserInteraction()V
    .registers 1

    return-void
.end method

.method public onZoomChanged(F)V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/camera/module/Base2Module;->onZoomChanged(F)V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getCameraMode()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    :goto_11
    return-void

    :pswitch_12
    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyZoomAndUpdate(I)V

    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyZoomAndUpdate(I)V

    goto :goto_11

    :pswitch_1b
    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyZoomAndUpdate(I)V

    goto :goto_11

    :pswitch_1f
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyZoomAndUpdate(I)V

    goto :goto_11

    :cond_25
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->applyZoomAndUpdate(I)V

    goto :goto_11

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1b
        :pswitch_1f
    .end packed-switch
.end method

.method protected openSettingActivity()V
    .registers 5

    const-string/jumbo v1, "CaptureModule"

    const-string/jumbo v2, "openSettingActivity"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "from_where"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "IsCaptureIntent"

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isImageCaptureIntent()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, ":miui:starting_window_label"

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_48

    const-string/jumbo v1, "StartActivityWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_48
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setJumpFlag(I)V

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "pref_settings"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isShutterButtonClickable()Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    if-nez p1, :cond_23

    if-eqz p2, :cond_20

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onShutterButtonClick()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isCountDownMode()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "capture_times_volume"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mVolumeLongPress:Z

    goto :goto_1f

    :cond_23
    if-eqz p2, :cond_1f

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mVolumeLongPress:Z

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onShutterButtonLongClick()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mVolumeLongPress:Z

    goto :goto_1f
.end method

.method public reinit()V
    .registers 3

    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "reinit"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setCurrentMode()V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->reinit(I)V

    return-void
.end method

.method protected setDisplayOrientation()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDisplayRotation:I

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDisplayRotation:I

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getMainCameraId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mDisplayOrientation:I

    return-void
.end method

.method public triggerFocusAtPoint(FFI)V
    .registers 13

    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerFocusAtPoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mUI:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSurfaceViewSize()Landroid/graphics/Point;

    move-result-object v7

    iget v3, v7, Landroid/graphics/Point;->x:I

    iget v4, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAFRegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aget-object v6, v0, p3

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->afaeRectangle(FFIIFLandroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    aput-object v0, v8, p3

    iget-object v8, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mAERegions:[[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCropRegion:[Landroid/graphics/Rect;

    aget-object v6, v0, p3

    const/high16 v5, 0x3fc00000    # 1.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->afaeRectangle(FFIIFLandroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    aput-object v0, v8, p3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->mCameraHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-direct {p0, p3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->autoFocusTrigger(I)V

    return-void
.end method
