.class public Lcom/android/camera/module/MorphoPanoramaModule;
.super Lcom/android/camera/module/BaseModule;
.source "MorphoPanoramaModule.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;,
        Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;,
        Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;,
        Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;,
        Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;,
        Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;,
        Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final USE_PREVIEW_IMAGE:Z

.field private static sSaveOutputType:I


# instance fields
.field private MAX_DST_IMG_WIDTH:I

.field private final USE_MULTI_THREAD:Z

.field private mAeLockSupported:Z

.field private mAppDeviceRotation:I

.field private mAppPanoramaDirection:I

.field private mAppPanoramaDirectionSettings:I

.field private mAttachPosOffsetX:I

.field private mAttachPosOffsetY:I

.field protected mAwbLockSupported:Z

.field private mCameraPreviewBuff:[B

.field private mCameraState:I

.field private mCaptureInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCntProcessd:I

.field private mCntReqShoot:I

.field private mDeviceOrientationAtCapture:I

.field private mDirection:[I

.field private mDispPreviewImage:Landroid/graphics/Bitmap;

.field private mFrameRatio:F

.field private mImageID:[I

.field private mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

.field private mIsShooting:Z

.field private mLeftIndicator:Landroid/view/View;

.field private mLocation:Landroid/location/Location;

.field protected final mMainHandler:Landroid/os/Handler;

.field private mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

.field private mMotionData:[B

.field private mMotionlessThres:I

.field private mMoveReferenceLine:Landroid/view/View;

.field private mMoveSpeed:[I

.field private mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

.field private mPanoramaPreview:Landroid/widget/ImageView;

.field private mPanoramaViewRoot:Landroid/view/ViewGroup;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mPrevDirection:I

.field private mPreviewCount:I

.field private mPreviewCroppingAdjustByAuto:I

.field private final mPreviewCroppingRatio:I

.field private mPreviewDisplayRatio:F

.field private mPreviewHeight:I

.field private mPreviewImage:Landroid/graphics/Bitmap;

.field private mPreviewRefY:I

.field private mPreviewSkipCount:I

.field private mPreviewWidth:I

.field private mRequestTakePicture:Z

.field private mRightIndicator:Landroid/view/View;

.field private mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

.field private mSensorSyncObj:Ljava/lang/Object;

.field private mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

.field private mSnapshotFocusMode:Ljava/lang/String;

.field private mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mStatus:[I

.field private mStillPreview:Lcom/android/camera/ui/GLTextureView;

.field private mStillPreviewHintArea:Landroid/view/View;

.field private mStillPreviewRender:Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

.field private mStillPreviewTextureHeight:I

.field private mStillPreviewTextureOffsetX:I

.field private mStillPreviewTextureOffsetY:I

.field private mStillPreviewTextureWidth:I

.field private mStillProcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;",
            ">;"
        }
    .end annotation
.end field

.field private mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

.field private mSyncObj:Ljava/lang/Object;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mTimeTaken:J

.field private mUseHint:Landroid/widget/TextView;

.field private mUseHintArea:Landroid/view/View;

.field private mUseImage:I

.field private mUseSensorAWF:Z

.field private mUseSensorThres:I

.field private mUseThres:I

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .registers 1

    sget-boolean v0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/os/ConditionVariable;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/ui/GLTextureView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureHeight:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureOffsetX:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureOffsetY:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureWidth:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/module/MorphoPanoramaModule;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/camera/module/MorphoPanoramaModule;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    return-wide v0
.end method

.method static synthetic -get22()I
    .registers 1

    sget v0, Lcom/android/camera/module/MorphoPanoramaModule;->sSaveOutputType:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/module/MorphoPanoramaModule;)[B
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/module/MorphoPanoramaModule;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/module/MorphoPanoramaModule;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/module/MorphoPanoramaModule;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/panorama/MorphoPanoramaGP;)Lcom/android/camera/panorama/MorphoPanoramaGP;
    .registers 2

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;
    .registers 2

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/module/MorphoPanoramaModule;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isZslMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/module/MorphoPanoramaModule;JI)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/MorphoPanoramaModule;->createNameString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setupCaptureParams()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->showSmallPreview()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startCameraPreview()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/camera/module/MorphoPanoramaModule;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/camera/module/MorphoPanoramaModule;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/module/MorphoPanoramaModule;Landroid/hardware/Camera$Parameters;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->finishAttachStillImageTask()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initCommenConfig()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initPreviewLayout()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initializeCapabilities()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetToPreview()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/camera/module/MorphoPanoramaModule;Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/MorphoPanoramaModule;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/camera/module/MorphoPanoramaModule;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->setProgressUI(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/Device;->isPanoUsePreviewFrame()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    const/4 v0, 0x1

    sput v0, Lcom/android/camera/module/MorphoPanoramaModule;->sSaveOutputType:I

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    const-string/jumbo v0, "continuous-picture"

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    const-string/jumbo v0, "auto"

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSnapshotFocusMode:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSensorSyncObj:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_MULTI_THREAD:Z

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    iput-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseImage:I

    iput v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseThres:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    const v0, 0x8000

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionlessThres:I

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorThres:I

    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorAWF:Z

    iput v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingRatio:I

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppDeviceRotation:I

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirection:I

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirectionSettings:I

    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    return-void
.end method

.method private addImageAsApplication(Ljava/lang/String;Landroid/graphics/Rect;I)V
    .registers 15

    const/4 v10, 0x0

    sget-boolean v1, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    if-nez v1, :cond_56

    :goto_5
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    iget-wide v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    iget-object v6, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLocation:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object v2, p1

    move v3, p3

    invoke-static/range {v1 .. v8}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v9

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "capture_nums_panorama"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "camera_picture_taken_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    if-eqz v9, :cond_55

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v9}, Lcom/android/camera/Camera;->addSecureUri(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v9, v10}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1, v9}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1, v0, v10}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    :cond_55
    return-void

    :cond_56
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    invoke-static {p1, p3, v1, v2, v3}, Lcom/android/camera/ExifHelper;->writeExif(Ljava/lang/String;ILandroid/location/Location;J)V

    goto :goto_5
.end method

.method private addStillImage(Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    if-nez v0, :cond_15

    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    invoke-direct {v0, p0}, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->start()V

    :cond_15
    return-void
.end method

.method private allocateDisplayBuffers(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    if-eq v1, v2, :cond_2b

    :cond_1d
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    :cond_2b
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_71

    packed-switch p1, :pswitch_data_13c

    :pswitch_32
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v2, v2

    div-float v0, v1, v2

    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetY:I

    :cond_71
    :goto_71
    return-void

    :pswitch_72
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v2, v2

    div-float v0, v1, v2

    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetY:I

    goto :goto_71

    :pswitch_b7
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v2, v2

    div-float v0, v1, v2

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x50

    div-int/lit8 v2, v2, 0x64

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetX:I

    goto/16 :goto_71

    :pswitch_fc
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v2, v2

    div-float v0, v1, v2

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x50

    div-int/lit8 v2, v2, 0x64

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetX:I

    goto/16 :goto_71

    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_72
        :pswitch_32
        :pswitch_32
        :pswitch_b7
    .end packed-switch
.end method

.method private calibrateRotation(I)I
    .registers 3

    if-eqz p1, :cond_f

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_f

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_f

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_f

    const/4 p1, 0x0

    :cond_f
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDeviceOrientationAtCapture:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private createContentView()V
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->inflatePanoramaView()V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPanoramaViewRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f09004a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHintArea:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090047

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLeftIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090049

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRightIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f09004b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090045

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090048

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLTextureView;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f09004c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PanoMovingIndicatorView;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090044

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveReferenceLine:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const v2, 0x7f090046

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    if-nez v0, :cond_fc

    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewRender:Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GLTextureView;->setEGLContextClientVersion(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    new-instance v2, Lcom/android/camera/module/MorphoPanoramaModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/module/MorphoPanoramaModule$2;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GLTextureView;->setEGLShareContextGetter(Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewRender:Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    :goto_b2
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_107

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerGroup()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-nez v0, :cond_107

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_e9
    sub-int v0, v3, v0

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/ui/V6ModeExitView;->setLayoutParameters(II)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    return-void

    :cond_fc
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewRender:Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;

    goto :goto_b2

    :cond_107
    move v0, v1

    goto :goto_e9
.end method

.method private createNameString(JI)Ljava/lang/String;
    .registers 7

    const v1, 0x7f0e00de

    invoke-virtual {p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/camera/module/MorphoPanoramaModule;->sSaveOutputType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2b

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_bounding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2b
    return-object v0
.end method

.method private finishAttachStillImageTask()V
    .registers 5

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v1, :cond_15

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    if-le v1, v2, :cond_15

    const-wide/16 v2, 0x64

    :try_start_c
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_15
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    return-void
.end method

.method private initCommenConfig()V
    .registers 3

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    return-void
.end method

.method private initPreviewLayout()V
    .registers 9

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v5}, Lcom/android/camera/ui/GLTextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v3

    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    mul-int/lit8 v5, v5, 0x50

    div-int/lit8 v0, v5, 0x64

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/2addr v5, v4

    div-int/2addr v5, v0

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureWidth:I

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureHeight:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureOffsetX:I

    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureHeight:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureOffsetY:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v5}, Lcom/android/camera/ui/GLTextureView;->requestLayout()V

    return-void
.end method

.method private initializeCapabilities()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    return-void
.end method

.method private initializeMiscControls()V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42a00000    # 80.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

    return-void
.end method

.method private isProcessingFinishTask()Z
    .registers 3

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private isZslMode()Z
    .registers 3

    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->isZSLMode(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private keepScreenOnAwhile()V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getScreenDelay()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private onCaptureOrientationDecided()V
    .registers 5

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveReferenceLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e00f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    aget v1, v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetX:I

    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setMovingAttibute(III)V

    return-void
.end method

.method private onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->onLayoutChange(II)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setRenderSize(II)V

    :cond_26
    return-void
.end method

.method private onPreviewMoving()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->isTooFast()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e01df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->isFar()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e01de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_18

    :cond_2a
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e00f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_18
.end method

.method private releaseCamera()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    :cond_1b
    return-void
.end method

.method private releaseResources()V
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->releaseCamera()V

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    return-void
.end method

.method private resetScreenOn()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private resetToPreview()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetUI()V

    :cond_b
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isZslMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-boolean v0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    if-eqz v0, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startCameraPreview()V

    goto :goto_19
.end method

.method private resetUI()V
    .registers 7

    const v5, 0x7f020035

    const/16 v3, 0x64

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/V6ThumbnailButton;->animateIn(Ljava/lang/Runnable;IZ)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/V6ModulePicker;->animateIn(Ljava/lang/Runnable;IZ)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/camera/ui/V6ShutterButton;->changeImageWithAnimation(IJ)V

    :goto_3d
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveReferenceLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHintArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->showSmallPreview()V

    return-void

    :cond_5a
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    goto :goto_3d
.end method

.method private saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x1

    new-array v2, v9, [I

    invoke-static {p1}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v4, v1, p2, v0, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[I)I

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v4, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "%s:saveOutputJpeg() -> 0x%x"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->calibrateRotation(I)I

    move-result v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->addImageAsApplication(Ljava/lang/String;Landroid/graphics/Rect;I)V

    return-void
.end method

.method private setProgressUI(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureProgressBar()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_f
    const/16 v0, 0x8

    goto :goto_b
.end method

.method private setShootUI()V
    .registers 8

    const/4 v6, 0x0

    const/16 v5, 0x64

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHintArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseHint:Landroid/widget/TextView;

    const v1, 0x7f0e00f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveReferenceLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v3}, Lcom/android/camera/ui/V6ThumbnailButton;->animateOut(Ljava/lang/Runnable;IZ)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v3}, Lcom/android/camera/ui/V6ModulePicker;->animateOut(Ljava/lang/Runnable;IZ)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOn()V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const-wide/16 v2, 0xc8

    const v1, 0x7f02010d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/V6ShutterButton;->changeImageWithAnimation(IJ)V

    invoke-virtual {p0, v4}, Lcom/android/camera/module/MorphoPanoramaModule;->enableCameraControls(Z)V

    return-void
.end method

.method private setZsl()V
    .registers 4

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-eqz v0, :cond_10

    :cond_1f
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_10

    :cond_2a
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private setupCaptureParams()V
    .registers 16

    const/4 v14, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v11

    invoke-static {v10, v11, v14}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPanoPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v6

    iget v10, v6, Lcom/android/camera/PictureSize;->width:I

    iput v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    iget v10, v6, Lcom/android/camera/PictureSize;->height:I

    iput v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "picture h = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , w = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v8

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    sget v11, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v11, v11

    sget v12, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v10, v8, v12, v13}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v7

    if-nez v7, :cond_6c

    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "Can not find suitable preview size for panorama"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_6c
    iget v10, v7, Landroid/hardware/Camera$Size;->width:I

    iput v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    iput v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preview h = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , w = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iget v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-virtual {v5, v7}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c0

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    :cond_c0
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    aget v4, v10, v14

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const/4 v11, 0x1

    aget v3, v10, v11

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v4, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preview fps: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_1a7

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :goto_11b
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v14}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v14}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v14}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v11, "pref_camera_antibanding_key"

    const v12, 0x7f0e00d3

    invoke-static {v12}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/android/camera/module/MorphoPanoramaModule;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "antiBanding value ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/module/MorphoPanoramaModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_168

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    :cond_168
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setZsl()V

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v10}, Lcom/android/camera/module/MorphoPanoramaModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v10

    if-eqz v10, :cond_181

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v11, "t2t"

    const-string/jumbo v12, "off"

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_181
    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v10, v14}, Lcom/android/camera/module/MorphoPanoramaModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    iget-object v10, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v10}, Lcom/android/camera/module/MorphoPanoramaModule;->resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "off"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v14}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v11, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "still-more-off"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillMore(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void

    :cond_1a7
    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot set the focus mode to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " because the mode is not supported."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11b
.end method

.method private showSmallPreview()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onResume()V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private startCameraPreview()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopCameraPreview()V

    :cond_14
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setDisplayOrientation()V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    :cond_2c
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_35
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    return-void
.end method

.method private startPanoramaGP()Z
    .registers 13

    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-nez v5, :cond_127

    new-array v0, v6, [I

    new-instance v5, Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-direct {v5}, Lcom/android/camera/panorama/MorphoPanoramaGP;-><init>()V

    iput-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    new-instance v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    invoke-direct {v5}, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;-><init>()V

    iput-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    const-string/jumbo v8, "YVU420_SEMIPLANAR"

    iput-object v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->format:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseThres:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->use_threshold:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_width:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_height:I

    sget-boolean v5, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    if-nez v5, :cond_183

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_width:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_height:I

    :goto_40
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v8

    float-to-double v8, v8

    iput-wide v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->angle_of_view_degree:D

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iput v7, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->draw_cur_image:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraId:I

    invoke-static {v1, v5}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v4

    iput v7, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirectionSettings:I

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirection:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iput v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->direction:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_height:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_width:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_height:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_width:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    packed-switch v4, :pswitch_data_19c

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    const/16 v8, 0x5a

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    :goto_98
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    sget v9, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_shrink_ratio:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    const-wide v8, 0x4076800000000000L    # 360.0

    invoke-static {v5, v8, v9}, Lcom/android/camera/panorama/MorphoPanoramaGP;->calcImageSize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;D)I

    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    if-ge v5, v8, :cond_d4

    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    int-to-float v8, v8

    div-float v3, v5, v8

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    :cond_d4
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    if-ge v5, v8, :cond_f5

    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v8, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    int-to-float v8, v8

    div-float v3, v5, v8

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    :cond_f5
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    invoke-virtual {v5, v8, v0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->initialize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;[I)I

    move-result v2

    if-eqz v2, :cond_127

    sget-object v5, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "%s:initialize() -> 0x%x"

    new-array v9, v11, [Ljava/lang/Object;

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_127
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionlessThres:I

    invoke-virtual {v5, v8}, Lcom/android/camera/panorama/MorphoPanoramaGP;->setMotionlessThreshold(I)I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorThres:I

    invoke-virtual {v5, v8}, Lcom/android/camera/panorama/MorphoPanoramaGP;->setUseSensorThreshold(I)I

    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppDeviceRotation:I

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirection:I

    add-int/2addr v5, v8

    invoke-direct {p0, v5}, Lcom/android/camera/module/MorphoPanoramaModule;->allocateDisplayBuffers(I)V

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget-boolean v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorAWF:Z

    if-eqz v5, :cond_199

    move v5, v6

    :goto_144
    invoke-virtual {v8, v7, v5}, Lcom/android/camera/panorama/MorphoPanoramaGP;->setUseSensorAssist(II)I

    move-result v2

    if-eqz v2, :cond_162

    sget-object v5, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "%s:setUseSensorAssist() -> 0x%x"

    new-array v9, v11, [Ljava/lang/Object;

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_162
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v5}, Lcom/android/camera/panorama/MorphoPanoramaGP;->start()I

    move-result v2

    if-eqz v2, :cond_19b

    sget-object v5, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "%s:start() -> 0x%x"

    new-array v9, v11, [Ljava/lang/Object;

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_183
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_width:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_height:I

    goto/16 :goto_40

    :pswitch_191
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    const/16 v8, 0x10e

    iput v8, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    goto/16 :goto_98

    :cond_199
    move v5, v7

    goto :goto_144

    :cond_19b
    return v6

    :pswitch_data_19c
    .packed-switch 0x10e
        :pswitch_191
    .end packed-switch
.end method

.method private stopCameraPreview()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    :cond_16
    iput v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    return-void
.end method

.method private stopPanoramaShooting(Z)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPanoramaShooting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOnAwhile()V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-nez v0, :cond_16

    :cond_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    :cond_21
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    if-nez p1, :cond_2a

    iput-boolean v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    :cond_2a
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    :cond_33
    const/4 p1, 0x0

    :cond_34
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetUI()V

    return-void
.end method

.method private switchToCameraMode()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToOtherMode(I)V

    return-void
.end method

.method private switchToOtherMode(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    return-void
.end method

.method private waitCameraStartUpThread()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->cancel()V

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v1}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method


# virtual methods
.method public getSupportedSettingKeys()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraQcom;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_23
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraLC;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_34
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraMTK;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_45
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraPadOne;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 14

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/BaseModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v8

    :cond_9
    sparse-switch p2, :sswitch_data_96

    return v4

    :sswitch_d
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/module/MorphoPanoramaModule;->onThumbnailClicked(Landroid/view/View;)V

    return v8

    :sswitch_12
    if-nez p1, :cond_26

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick()V

    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-ne v3, v8, :cond_25

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string/jumbo v4, "capture_times_shutter"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    :cond_25
    :goto_25
    return v8

    :cond_26
    const/4 v3, 0x2

    if-ne p1, v3, :cond_49

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_25

    move-object v2, p3

    check-cast v2, Landroid/graphics/Point;

    move-object v0, p4

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/camera/ui/V6SmartShutterButton;->flyin(IIII)V

    goto :goto_25

    :cond_49
    const/4 v3, 0x3

    if-ne p1, v3, :cond_25

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonFocus(Z)V

    goto :goto_25

    :sswitch_56
    new-instance v1, Lcom/android/camera/module/MorphoPanoramaModule$1;

    invoke-direct {v1, p0, p3}, Lcom/android/camera/module/MorphoPanoramaModule$1;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6ShutterButton;->onPause()V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/BottomControlLowerPanel;->animationSwitchToVideo(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    return v8

    :sswitch_82
    iput-boolean v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToCameraMode()V

    return v8

    :sswitch_88
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->openSettingActivity()V

    return v8

    :sswitch_8c
    if-ne p1, v8, :cond_95

    check-cast p3, Landroid/view/View;

    check-cast p4, Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4}, Lcom/android/camera/module/MorphoPanoramaModule;->onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_95
    return v8

    :sswitch_data_96
    .sparse-switch
        0x7f09000e -> :sswitch_d
        0x7f090012 -> :sswitch_12
        0x7f090015 -> :sswitch_56
        0x7f090084 -> :sswitch_8c
        0x7f09008e -> :sswitch_82
        0x7f090090 -> :sswitch_88
    .end sparse-switch
.end method

.method public isCameraEnabled()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v2, :cond_b

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-ne v2, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method public onBackPressed()Z
    .registers 5

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->playCameraSound(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_2a

    monitor-exit v1

    return v3

    :cond_18
    monitor-exit v1

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToCameraMode()V

    return v3

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCreate(Lcom/android/camera/Camera;)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->createContentView()V

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraId:I

    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->start()V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCreate()V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->useProperView()V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->createContentView()V

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initializeMiscControls()V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaViewRoot:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const v1, 0x7f09006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->setLayoutParameters(II)V

    const-string/jumbo v0, "pref_camera_panoramamode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-eqz v2, :cond_7

    return v1

    :cond_7
    sparse-switch p1, :sswitch_data_72

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick()V

    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v2, "capture_times_finger"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    :cond_36
    return v1

    :sswitch_37
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick()V

    return v1

    :sswitch_4f
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x18

    if-eq p1, v2, :cond_65

    const/16 v2, 0x58

    if-ne p1, v2, :cond_66

    :cond_65
    move v0, v1

    :cond_66
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    nop

    :sswitch_data_72
    .sparse-switch
        0x17 -> :sswitch_37
        0x18 -> :sswitch_4f
        0x19 -> :sswitch_4f
        0x1b -> :sswitch_f
        0x42 -> :sswitch_f
        0x57 -> :sswitch_4f
        0x58 -> :sswitch_4f
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-eqz v0, :cond_6

    return v2

    :cond_6
    sparse-switch p1, :sswitch_data_1c

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setPressed(Z)V

    return v2

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1b -> :sswitch_e
        0x42 -> :sswitch_e
    .end sparse-switch
.end method

.method public onPauseAfterSuper()V
    .registers 8

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseAfterSuper()V

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_a
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->playCameraSound(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    :cond_16
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    :cond_20
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    :cond_2c
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_36
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    :cond_42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B
    :try_end_45
    .catchall {:try_start_a .. :try_end_45} :catchall_93

    monitor-exit v2

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->waitCameraStartUpThread()V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    :goto_55
    if-nez v0, :cond_98

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->releaseResources()V

    :goto_5a
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    :cond_65
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetScreenOn()V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onPause()V

    invoke-direct {p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->setProgressUI(Z)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :catchall_93
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_96
    move v0, v1

    goto :goto_55

    :cond_98
    iput-boolean v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    goto :goto_5a
.end method

.method public onPauseBeforeSuper()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseBeforeSuper()V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 12

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    sget-object v1, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPictureTaken"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v8

    :try_start_e
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_50

    if-nez v1, :cond_18

    :cond_16
    monitor-exit v8

    return-void

    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;

    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    iget v2, v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mId:I

    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;II[B[B)V

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->addStillImage(Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;)V

    iget v1, v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mStatus:I

    sparse-switch v1, :sswitch_data_76

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isZslMode()Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V
    :try_end_41
    .catchall {:try_start_18 .. :try_end_41} :catchall_50

    :cond_41
    :goto_41
    monitor-exit v8

    sget-object v1, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPictureTaken done"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_4b
    const/4 v1, 0x1

    :try_start_4c
    invoke-direct {p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_41

    :catchall_50
    move-exception v1

    monitor-exit v8

    throw v1

    :cond_53
    const-wide/16 v2, 0x32

    :try_start_55
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_58} :catch_71
    .catchall {:try_start_55 .. :try_end_58} :catchall_50

    :goto_58
    :try_start_58
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_41

    :catch_71
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_75
    .catchall {:try_start_58 .. :try_end_75} :catchall_50

    goto :goto_58

    :sswitch_data_76
    .sparse-switch
        0x1 -> :sswitch_4b
        0x3 -> :sswitch_4b
        0xb -> :sswitch_4b
    .end sparse-switch
.end method

.method public onPictureTakenPreview([B)V
    .registers 10

    iget-object v7, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_46

    if-nez v1, :cond_9

    monitor-exit v7

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;

    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    iget v2, v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mId:I

    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;II[B[B)V

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->addStillImage(Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;)V

    iget v1, v6, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mStatus:I

    sparse-switch v1, :sswitch_data_4a

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_3f
    .catchall {:try_start_9 .. :try_end_3f} :catchall_46

    :cond_3f
    :goto_3f
    monitor-exit v7

    return-void

    :sswitch_41
    const/4 v1, 0x1

    :try_start_42
    invoke-direct {p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_3f

    :catchall_46
    move-exception v1

    monitor-exit v7

    throw v1

    nop

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_41
        0x3 -> :sswitch_41
        0xb -> :sswitch_41
    .end sparse-switch
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 25

    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreviewFrame"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_362

    if-nez v2, :cond_1d

    :cond_1b
    monitor-exit v21

    return-void

    :cond_1d
    :try_start_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    if-lez v2, :cond_40

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V
    :try_end_3e
    .catchall {:try_start_1d .. :try_end_3e} :catchall_362

    monitor-exit v21

    return-void

    :cond_40
    :try_start_40
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mSensorSyncObj:Ljava/lang/Object;

    monitor-enter v2

    monitor-exit v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseImage:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachPreview([BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result v17

    if-eqz v17, :cond_93

    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "%s:attachPreview() -> 0x%x"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreviewFrame attachPreview status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-eqz v2, :cond_ec

    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":attachPreview Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3da

    :cond_ec
    :goto_ec
    :pswitch_ec
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    invoke-virtual {v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getCurrentDirection([I)I

    move-result v17

    if-eqz v17, :cond_115

    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "%s:getCurrentDirection() -> 0x%x"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_115
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    if-eqz v2, :cond_3a9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3a9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3a9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {v10, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v10, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v13, v2, v3, v14, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v18, v18, v2

    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v3, v18, 0xa

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v4, v18, 0x5a

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v10, v2, v0, v13, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v2, v9, v15}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getGuidancePos(Landroid/graphics/Point;Landroid/graphics/Point;)I

    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreviewFrame getGuidancePos attachedPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  guidePos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3ec

    :goto_1cd
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1e1

    if-ge v14, v12, :cond_39f

    int-to-float v2, v12

    move/from16 v0, v18

    int-to-float v3, v0

    div-float/2addr v2, v3

    :goto_1dd
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    :cond_1e1
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    if-eqz v2, :cond_20d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_20d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    :cond_20d
    iget v2, v9, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v9, Landroid/graphics/Point;->x:I

    iget v2, v9, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v9, Landroid/graphics/Point;->y:I

    iget v2, v15, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v15, Landroid/graphics/Point;->x:I

    iget v2, v15, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v15, Landroid/graphics/Point;->y:I

    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreviewFrame change position with ratio Point="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " output_rotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mDirection[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    invoke-virtual {v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getMoveSpeed([I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3a6

    const/4 v2, 0x1

    :goto_29a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setToofast(ZI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMovingDirectionView:Lcom/android/camera/ui/PanoMovingIndicatorView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    invoke-virtual {v2, v9, v3}, Lcom/android/camera/ui/PanoMovingIndicatorView;->setPosition(Landroid/graphics/Point;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onPreviewMoving()V

    :cond_2b2
    :goto_2b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaPreview:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_3cc

    move-object/from16 v11, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v16, Landroid/os/Handler;

    invoke-direct/range {v16 .. v16}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/camera/module/MorphoPanoramaModule$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule$3;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;[B)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    :goto_301
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6ShutterButton;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_31b

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6ShutterButton;->setEnabled(Z)V

    :cond_31b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreviewFrame mPrevDirection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_343
    .catchall {:try_start_40 .. :try_end_343} :catchall_362

    monitor-exit v21

    return-void

    :pswitch_345
    const/4 v2, 0x1

    :try_start_346
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V
    :try_end_34b
    .catchall {:try_start_346 .. :try_end_34b} :catchall_362

    monitor-exit v21

    return-void

    :pswitch_34d
    const/4 v2, 0x1

    :try_start_34e
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V
    :try_end_353
    .catchall {:try_start_34e .. :try_end_353} :catchall_362

    monitor-exit v21

    return-void

    :pswitch_355
    :try_start_355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    invoke-virtual {v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getMoveSpeed([I)I
    :try_end_360
    .catchall {:try_start_355 .. :try_end_360} :catchall_362

    goto/16 :goto_ec

    :catchall_362
    move-exception v2

    monitor-exit v21

    throw v2

    :pswitch_365
    :try_start_365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    if-eqz v2, :cond_377

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_38b

    :cond_377
    iget v2, v9, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Point;->y:I

    iget v2, v15, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v2, v3

    iput v2, v15, Landroid/graphics/Point;->y:I

    goto/16 :goto_1cd

    :cond_38b
    iget v2, v9, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Point;->x:I

    iget v2, v15, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v2, v3

    iput v2, v15, Landroid/graphics/Point;->x:I

    goto/16 :goto_1cd

    :cond_39f
    int-to-float v2, v14

    move/from16 v0, v20

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto/16 :goto_1dd

    :cond_3a6
    const/4 v2, 0x0

    goto/16 :goto_29a

    :cond_3a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-eqz v2, :cond_2b2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2b2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2b2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onCaptureOrientationDecided()V

    goto/16 :goto_2b2

    :cond_3cc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V
    :try_end_3d7
    .catchall {:try_start_365 .. :try_end_3d7} :catchall_362

    goto/16 :goto_301

    nop

    :pswitch_data_3da
    .packed-switch 0x4
        :pswitch_345
        :pswitch_355
        :pswitch_34d
        :pswitch_ec
        :pswitch_34d
        :pswitch_34d
        :pswitch_345
    .end packed-switch

    :pswitch_data_3ec
    .packed-switch 0x2
        :pswitch_365
        :pswitch_365
    .end packed-switch
.end method

.method public onResumeAfterSuper()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeAfterSuper()V

    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSetupCameraThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCameraDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mWaitForRelease="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    if-nez v0, :cond_81

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_81

    :cond_53
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSetupCameraThread:Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->start()V

    :cond_5f
    :goto_5f
    iput-boolean v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onResume()V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOnAwhile()V

    return-void

    :cond_81
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitForRelease:Z

    if-eqz v0, :cond_5f

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startCameraPreview()V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5f
.end method

.method public onResumeBeforeSuper()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeBeforeSuper()V

    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->switchToCameraMode()V

    :cond_12
    return-void
.end method

.method public onShutterButtonClick()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1c
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-nez v0, :cond_29

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->playCameraSound(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startPanoramaShooting()V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_32

    :goto_27
    monitor-exit v1

    return-void

    :cond_29
    const/4 v0, 0x3

    :try_start_2a
    invoke-virtual {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->playCameraSound(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_27

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onShutterButtonFocus(Z)V
    .registers 2

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->releaseResources()V

    :cond_14
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-nez v0, :cond_17

    :cond_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    return-void
.end method

.method public onUserInteraction()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOnAwhile()V

    :cond_a
    return-void
.end method

.method protected openSettingActivity()V
    .registers 6

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "from_where"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, ":miui:starting_window_label"

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_32

    const-string/jumbo v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_32
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

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

    if-nez p1, :cond_16

    if-eqz p2, :cond_16

    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick()V

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "capture_times_volume"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public requestRender()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewHintArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    :cond_d
    return-void
.end method

.method public startPanoramaShooting()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPanoramaShooting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startPanoramaGP()Z

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->direction:I

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    iput v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    iput v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessd:I

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    iput v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDeviceOrientationAtCapture:I

    iput-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    :cond_40
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_49
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLocation:Landroid/location/Location;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSnapshotFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setShootUI()V

    return-void
.end method
