.class public Lcom/android/camera/camera_adapter/CameraNv;
.super Lcom/android/camera/module/CameraModule;
.source "CameraNv.java"


# static fields
.field private static RAW_META_DATA:I

.field private static sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mNSLBurstCount:I

.field private mPreviewPausedDisabled:Z

.field private mRawBuffer:[B

.field private mRawBufferSize:I

.field private mSetAohdrLater:Z

.field private mSkipSetNSLAfterMultiShot:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0xf4240

    sput v0, Lcom/android/camera/camera_adapter/CameraNv;->RAW_META_DATA:I

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/NvidiaCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    const-string/jumbo v0, "CameraNv"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    return-void
.end method

.method private allocRawBufferIfNeeded()V
    .registers 6

    const/4 v4, 0x0

    sget v2, Lcom/android/camera/camera_adapter/CameraNv;->RAW_META_DATA:I

    const v3, 0x190aa00

    add-int v1, v2, v3

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    if-ge v2, v1, :cond_16

    :cond_10
    :try_start_10
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I
    :try_end_16
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    iput-object v4, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    const-string/jumbo v2, "CameraNv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Raw OutOfMemoryError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private getNSLBuffersNeededCount()I
    .registers 6

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    if-eqz v1, :cond_d

    return v4

    :cond_d
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getZSL()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e010e

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return v3

    :cond_1f
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    sget-object v1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    if-eqz v1, :cond_3b

    :cond_3a
    return v3

    :cond_3b
    sget-object v1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e00cb

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    if-nez v1, :cond_3a

    :cond_61
    return v4
.end method

.method private getPreviewPausedDisabled()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    if-eqz v0, :cond_7b

    :cond_16
    :goto_16
    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    const-string/jumbo v0, "CameraNv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreviewPausedDisabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mIsImageCaptureIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    return v0

    :cond_7b
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e00cb

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_78

    goto :goto_16
.end method

.method private getZSL()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "on"

    return-object v0
.end method

.method private updateNvCameraParametersPreference()V
    .registers 15

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v11, "pref_qc_camera_saturation_key"

    const v12, 0x7f0e00ae

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v10, -0x64

    if-lt v5, v10, :cond_23

    const/16 v10, 0x64

    if-gt v5, v10, :cond_23

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v5}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;I)V

    :cond_23
    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Saturation = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v11, "pref_qc_camera_contrast_key"

    const v12, 0x7f0e00ac

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Contrast = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v11, "pref_qc_camera_sharpness_key"

    const v12, 0x7f0e00b0

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v10, -0x64

    if-lt v7, v10, :cond_91

    const/16 v10, 0x64

    if-gt v7, v10, :cond_91

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v7}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setEdgeEnhancement(Landroid/hardware/Camera$Parameters;I)V

    :cond_91
    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Sharpness = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAutoRotation(Landroid/hardware/Camera$Parameters;)Z

    move-result v10

    if-nez v10, :cond_bd

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAutoRotation(Landroid/hardware/Camera$Parameters;Z)V

    :cond_bd
    const-string/jumbo v10, "pref_qc_camera_iso_key"

    const v11, 0x7f0e00c2

    invoke-virtual {p0, v11}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/camera/camera_adapter/CameraNv;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v4}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "PictureISO = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "pref_qc_camera_exposuretime_key"

    const v11, 0x7f0e013a

    invoke-virtual {p0, v11}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/camera/camera_adapter/CameraNv;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ExposureTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v10

    if-nez v10, :cond_347

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v10

    if-eqz v10, :cond_2ed

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    const-string/jumbo v10, "CameraNv"

    const-string/jumbo v11, "Hand Nigh = true"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_146
    :goto_146
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStopRequest:Z

    if-eqz v10, :cond_14d

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    :cond_14d
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v10

    iput v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getNSLBuffersNeededCount()I

    move-result v0

    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v10, :cond_1bb

    iget v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-eq v10, v0, :cond_1bb

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V

    if-nez v0, :cond_186

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "normal"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    :cond_186
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v10

    iput v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Allocate NSLNumBuffers = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1bb
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    if-eqz v10, :cond_39e

    iget v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v10, :cond_392

    if-lez v0, :cond_392

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "shot2shot"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    :goto_1cf
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    sget v12, Lcom/android/camera/camera_adapter/CameraNv;->BURST_SHOOTING_COUNT:I

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    :goto_1e0
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    if-eqz v10, :cond_230

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v10, "off"

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3dd

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v11, "off"

    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    :cond_219
    :goto_219
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    :cond_230
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getPreviewPausedDisabled()Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;Z)V

    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preview disabled = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v13, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v10

    if-eqz v10, :cond_408

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v10

    :goto_26b
    if-nez v10, :cond_40b

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v10

    if-eqz v10, :cond_40b

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "on"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_27f
    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SetTimeWatermark ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v13, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getTimeWatermark(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->setBeautyParams()V

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v11, "pref_camera_show_gender_age_key"

    const v12, 0x7f0e0154

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Ljava/lang/String;)V

    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SetShowGenderAndAge ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "on"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string/jumbo v10, "CameraNv"

    const-string/jumbo v11, "SetMultiFaceBeautify =on"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2ed
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v10

    if-eqz v10, :cond_30c

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v12, 0xd

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setRawDumpFlag(Landroid/hardware/Camera$Parameters;I)V

    const-string/jumbo v10, "CameraNv"

    const-string/jumbo v11, "Raw Data = true"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->allocRawBufferIfNeeded()V

    goto/16 :goto_146

    :cond_30c
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v10

    if-eqz v10, :cond_32c

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z

    move-result v10

    if-nez v10, :cond_146

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    const-string/jumbo v10, "CameraNv"

    const-string/jumbo v11, "AO HDR = true"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_146

    :cond_32c
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v10

    if-eqz v10, :cond_146

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V

    const-string/jumbo v10, "CameraNv"

    const-string/jumbo v11, "Morpho HDR = true"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_146

    :cond_347
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    if-eqz v10, :cond_357

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    :cond_357
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setRawDumpFlag(Landroid/hardware/Camera$Parameters;I)V

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z

    move-result v10

    if-eqz v10, :cond_388

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    :cond_388
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_146

    :cond_392
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "normal"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    goto/16 :goto_1cf

    :cond_39e
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v10, :cond_3cc

    iget v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v10, :cond_3cc

    if-lez v0, :cond_3cc

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v10

    if-eqz v10, :cond_3cc

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    :goto_3c0
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "normal"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    goto/16 :goto_1e0

    :cond_3cc
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_3c0

    :cond_3dd
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v10

    if-eqz v10, :cond_219

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V

    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    goto/16 :goto_219

    :cond_408
    const/4 v10, 0x0

    goto/16 :goto_26b

    :cond_40b
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "off"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_27f
.end method


# virtual methods
.method protected isLongShotMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    return v0
.end method

.method protected isZeroShotMode()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .registers 3

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    if-nez v1, :cond_1f

    :cond_17
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method protected needSetupPreview()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStopRequest:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method protected needSwitchZeroShotMode()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v3, :cond_26

    iget v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v3, :cond_27

    const-string/jumbo v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v2

    if-nez v2, :cond_26

    :cond_1f
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_26
    :goto_26
    return v1

    :cond_27
    move v1, v2

    goto :goto_26
.end method

.method public onPauseBeforeSuper()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    :cond_d
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->onPauseBeforeSuper()V

    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "pref_focus_position_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;I)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    :goto_20
    return-void

    :cond_21
    const-string/jumbo v0, "pref_qc_manual_whitebalance_k_value_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setColorTemperature(Landroid/hardware/Camera$Parameters;I)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_20

    :cond_3d
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_20
.end method

.method protected prepareCapture()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "horizontal"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFlipStill(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_10
    const-string/jumbo v0, "CameraNv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set JPEG horizontal flip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->isFrontMirror(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFlipStill(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_10
.end method

.method protected updateCameraParametersPreference()V
    .registers 1

    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->updateNvCameraParametersPreference()V

    return-void
.end method
