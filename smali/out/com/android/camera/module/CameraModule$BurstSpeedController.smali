.class Lcom/android/camera/module/CameraModule$BurstSpeedController;
.super Ljava/lang/Object;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurstSpeedController"
.end annotation


# instance fields
.field private mBurstStartTime:J

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/module/CameraModule$BurstSpeedController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->onPictureTaken()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/module/CameraModule$BurstSpeedController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->onShutter()V

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$BurstSpeedController;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$BurstSpeedController;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method

.method private getBurstSpeed()I
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->mBurstStartTime:J

    sub-long v2, v4, v6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    if-lez v1, :cond_1e

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    div-long/2addr v4, v2

    long-to-int v0, v4

    :cond_1e
    sget-boolean v1, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v1, :cond_43

    const-string/jumbo v1, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "current burst Speed is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " fps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return v0
.end method

.method private onPictureTaken()V
    .registers 6

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/storage/ImageSaver;->isNeedStopCapture()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_23

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v3, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/storage/ImageSaver;->isNeedSlowDown()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->getBurstSpeed()I

    move-result v0

    int-to-float v2, v0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/storage/ImageSaver;->getSuitableBurstShotSpeed()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    if-nez v1, :cond_50

    const/4 v1, 0x1

    const-string/jumbo v2, "Camera"

    const-string/jumbo v3, "current performance is very poor, will set the speed = 1 to native "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    sget-boolean v2, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v2, :cond_75

    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set BurstShotSpeed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " fps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setBurstShotSpeed(I)V

    goto :goto_22
.end method

.method private onShutter()V
    .registers 8

    const/4 v6, 0x0

    iget-wide v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->mBurstStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->mBurstStartTime:J

    :cond_17
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v1

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v1, :cond_22

    :cond_21
    :goto_21
    return-void

    :cond_22
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver;->isNeedStopCapture()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4a

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v2, 0x2

    invoke-virtual {v1, v6, v2}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    goto :goto_21

    :cond_4a
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver;->getBurstDelay()I

    move-result v0

    if-nez v0, :cond_5e

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->-wrap14(Lcom/android/camera/module/CameraModule;)V

    goto :goto_21

    :cond_5e
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    const/16 v4, 0x1e

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_21
.end method


# virtual methods
.method public capture()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->mBurstStartTime:J

    return-void
.end method
