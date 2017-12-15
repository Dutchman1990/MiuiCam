.class public Lcom/android/camera/camera_adapter/VideoQcom;
.super Lcom/android/camera/module/VideoModule;
.source "VideoQcom.java"


# static fields
.field private static final VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;

.field private static sProxy:Lcom/android/camera/hardware/QcomCameraProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/high16 v7, -0x80000000

    sget-boolean v2, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v2, :cond_55

    const-string/jumbo v2, "90"

    :goto_c
    sput-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    check-cast v2, Lcom/android/camera/hardware/QcomCameraProxy;

    sput-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v2

    if-eqz v2, :cond_54

    const-string/jumbo v2, "android.media.CamcorderProfile"

    const-string/jumbo v5, "QUALITY_HIGH_SPEED_480P"

    const-string/jumbo v6, "I"

    invoke-static {v2, v8, v5, v6}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eq v0, v7, :cond_59

    :goto_31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "android.media.CamcorderProfile"

    const-string/jumbo v3, "QUALITY_HIGH_SPEED_720P"

    const-string/jumbo v5, "I"

    invoke-static {v2, v8, v3, v5}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eq v1, v7, :cond_5b

    :goto_4d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    return-void

    :cond_55
    const-string/jumbo v2, "120"

    goto :goto_c

    :cond_59
    move v0, v3

    goto :goto_31

    :cond_5b
    move v1, v4

    goto :goto_4d
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected configMediaRecorder(Landroid/media/MediaRecorder;)V
    .registers 10

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_93

    const-string/jumbo v5, "slow"

    iget-object v6, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mHfr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_13
    sget-object v5, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/QcomCameraProxy;->getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1e} :catch_94

    move-result v1

    :goto_1f
    if-lez v1, :cond_3f

    const-string/jumbo v5, "VideoQcom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting capture-rate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-double v6, v1

    invoke-virtual {p1, v6, v7}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_3f
    const/16 v4, 0x1e

    const-string/jumbo v5, "VideoQcom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting target fps = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v5, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v5, Landroid/media/CamcorderProfile;->videoBitRate:I

    sget-boolean v5, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v5, :cond_b8

    sget-boolean v5, Lcom/android/camera/Device;->IS_MI5:Z

    :goto_68
    if-nez v5, :cond_76

    iget-object v5, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v5, v5, 0x1e

    iget-object v6, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int v0, v5, v6

    :cond_76
    const-string/jumbo v5, "VideoQcom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Scaled Video bitrate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :cond_93
    return-void

    :catch_94
    move-exception v3

    const-string/jumbo v5, "VideoQcom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid hfr("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :cond_b8
    const/4 v5, 0x1

    goto :goto_68
.end method

.method protected isShowHFRDuration()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected updateVideoParametersPreference()V
    .registers 7

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    sget-boolean v2, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v2, :cond_12

    sget-boolean v2, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v2, :cond_b9

    :cond_12
    array-length v2, v0

    if-lez v2, :cond_b9

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    aget v3, v0, v5

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :goto_1f
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object v3, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v2

    if-eqz v2, :cond_c4

    const-string/jumbo v2, "on"

    :goto_34
    invoke-virtual {v3, v4, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setVideoHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_37
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "preview-format"

    iget v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mQuality:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v2

    if-eqz v2, :cond_c9

    const-string/jumbo v2, "nv12-venus"

    :goto_4d
    invoke-virtual {v3, v4, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v2

    if-eqz v2, :cond_93

    const-string/jumbo v2, "slow"

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mHfr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cd

    const-string/jumbo v1, "off"

    :goto_64
    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/camera_adapter/VideoQcom;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_93

    const-string/jumbo v2, "VideoQcom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HighFrameRate value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_93
    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a7

    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "denoise-on"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/QcomCameraProxy;->setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_a7
    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/hardware/QcomCameraProxy;->setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V

    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "still-more-off"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/QcomCameraProxy;->setStillMore(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void

    :cond_b9
    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto/16 :goto_1f

    :cond_c4
    const-string/jumbo v2, "off"

    goto/16 :goto_34

    :cond_c9
    const-string/jumbo v2, "yuv420sp"

    goto :goto_4d

    :cond_cd
    sget-object v1, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;

    goto :goto_64
.end method
