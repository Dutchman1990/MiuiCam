.class public Lcom/android/camera/camera_adapter/camera2/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camera_adapter/camera2/SettingsManager$CompareSizesByArea;,
        Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;,
        Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;,
        Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;
    }
.end annotation


# static fields
.field private static final mCharacteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/camera/camera_adapter/camera2/SettingsManager;


# instance fields
.field private mIsFrontCameraPresent:Z

.field private mIsMonoCameraPresent:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 14

    const/4 v11, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v9, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mIsMonoCameraPresent:Z

    iput-boolean v9, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mIsFrontCameraPresent:Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mListeners:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget-object v9, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    const-string/jumbo v9, "camera"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CameraManager;

    :try_start_24
    invoke-virtual {v7}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    :goto_29
    array-length v9, v1

    if-ge v6, v9, :cond_78

    aget-object v0, v1, v6

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_31
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_24 .. :try_end_31} :catch_6d

    move-result-object v2

    const/4 v8, 0x0

    :try_start_33
    sget-object v9, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_61
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_33 .. :try_end_3e} :catch_6d

    move-result v8

    :goto_3f
    if-ne v8, v11, :cond_46

    :try_start_41
    sput v6, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mIsMonoCameraPresent:Z

    :cond_46
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_59

    sput v6, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mIsFrontCameraPresent:Z

    :cond_59
    sget-object v9, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v9, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :catch_61
    move-exception v4

    const-string/jumbo v9, "SettingsManager"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_41 .. :try_end_6c} :catch_6d

    goto :goto_3f

    :catch_6d
    move-exception v3

    const-string/jumbo v9, "SettingsManager"

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_78
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/camera/camera_adapter/camera2/SettingsManager;
    .registers 3

    const-class v1, Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->sInstance:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->sInstance:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    :cond_e
    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->sInstance:Lcom/android/camera/camera_adapter/camera2/SettingsManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLongshotShotLimit()I
    .registers 2

    const-string/jumbo v0, "persist.camera.longshot_shotlimit"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPersistSceneMode(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "persist.camera.scene_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPictureSizeRatio()F
    .registers 10

    const v3, 0x3faaaaab

    const-string/jumbo v6, "pref_camera_picturesize_key"

    invoke-virtual {p0, v6}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2d

    const-string/jumbo v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_2d

    const/4 v6, 0x0

    :try_start_17
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_28} :catch_2e

    move-result v1

    int-to-float v6, v5

    int-to-float v7, v1

    div-float v3, v6, v7

    :cond_2d
    :goto_2d
    return v3

    :catch_2e
    move-exception v0

    const-string/jumbo v6, "SettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid picture size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private getPreferredCameraId(Landroid/app/Activity;)I
    .registers 4

    const/4 v1, -0x1

    invoke-static {p1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    if-ne v0, v1, :cond_b

    invoke-static {p1}, Lcom/android/camera/Util;->getStartCameraId(Landroid/app/Activity;)I

    move-result v0

    :cond_b
    if-ne v0, v1, :cond_13

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    :cond_13
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    return v0
.end method

.method public static isClearSightOn(Landroid/content/SharedPreferences;)Z
    .registers 3

    const-string/jumbo v0, "persist.camera.clear_sight"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMonoPreviewOn()Z
    .registers 2

    const-string/jumbo v0, "persist.camera.mono_preview"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMpoOn(Landroid/content/SharedPreferences;)Z
    .registers 3

    const-string/jumbo v0, "persist.camera.mpo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private mapToCamera2Value(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_ac

    const-string/jumbo v0, "pref_camera_antibanding_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2AntiBanding(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    const-string/jumbo v0, "pref_camera_flashmode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2FlashMode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_46
    const-string/jumbo v0, "pref_camera_whitebalance_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2WhiteBalance(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_68
    const-string/jumbo v0, "pref_camera_jpegquality_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8a
    const-string/jumbo v0, "pref_camera_scenemode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2SceneMode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_ac
    return-object p2
.end method

.method private notifyListeners(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;

    invoke-interface {v0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;->onSettingsChanged(Ljava/util/List;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private setLocalIdAndInitialize(I)V
    .registers 4

    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    goto :goto_a
.end method


# virtual methods
.method public getAeCompensationRange(I)Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    return-object v0
.end method

.method public getAeCompensationStep(I)F
    .registers 5

    sget-object v1, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v1

    return v1
.end method

.method public getCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 3

    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method public getJpegQuality()I
    .registers 6

    :try_start_0
    const-string/jumbo v3, "pref_camera_jpegquality_key"

    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_12

    move-result v2

    if-ltz v2, :cond_1d

    const/16 v3, 0x64

    if-gt v2, v3, :cond_1d

    return v2

    :catch_12
    move-exception v1

    const-string/jumbo v3, "SettingsManager"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    const/16 v3, 0x57

    return v3
.end method

.method public getMaxPictureSize(II)Landroid/util/Size;
    .registers 12

    const/4 v5, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getPictureSizeRatio()F

    move-result v1

    sget-object v7, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v3, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    new-instance v7, Lcom/android/camera/camera_adapter/camera2/SettingsManager$CompareSizesByArea;

    invoke-direct {v7}, Lcom/android/camera/camera_adapter/camera2/SettingsManager$CompareSizesByArea;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v7, v6

    add-int/lit8 v2, v7, -0x1

    :goto_24
    if-ltz v2, :cond_45

    aget-object v7, v6, v2

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    aget-object v8, v6, v2

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v4, v7, v8

    sub-float v7, v1, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3c23d70a    # 0.01f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4d

    aget-object v5, v6, v2

    :cond_45
    if-nez v5, :cond_4c

    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v5, v6, v7
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4c} :catch_50

    :cond_4c
    :goto_4c
    return-object v5

    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    :catch_50
    move-exception v0

    new-instance v5, Landroid/util/Size;

    const/16 v7, 0x1040

    const/16 v8, 0xc30

    invoke-direct {v5, v7, v8}, Landroid/util/Size;-><init>(II)V

    goto :goto_4c
.end method

.method public getMaxZoom(I)F
    .registers 4

    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMaxZoom(Ljava/util/List;)F
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)F"
        }
    .end annotation

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getMaxZoom(I)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_7

    :cond_20
    return v2
.end method

.method public getSensorActiveArraySize(I)Landroid/graphics/Rect;
    .registers 4

    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_3a

    const-string/jumbo v5, "pref_camera_antibanding_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    const v5, 0x7f0e00d3

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v2

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v6, p1, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2AntiBanding(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3a
    :goto_3a
    const-string/jumbo v5, "SettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_7e

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v5, p1, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    return-object v4

    :cond_7f
    const-string/jumbo v5, "pref_camera_flashmode_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "off"

    invoke-static {v6}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2FlashMode(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3a

    :cond_a4
    const-string/jumbo v5, "pref_camera_whitebalance_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/CameraSettings;->getWhiteBalance()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2WhiteBalance(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3a

    :cond_cb
    const-string/jumbo v5, "pref_camera_exposure_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3a

    :cond_f0
    const-string/jumbo v5, "pref_qc_camera_iso_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fe

    const-string/jumbo v4, "auto"

    goto/16 :goto_3a

    :cond_fe
    const-string/jumbo v5, "pref_camera_jpegquality_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_128

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraSettings;->getJpegQuality(Lcom/android/camera/preferences/CameraSettingPreferences;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3a

    :cond_128
    const-string/jumbo v5, "pref_camera2_redeyereduction_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_136

    const-string/jumbo v4, "disable"

    goto/16 :goto_3a

    :cond_136
    const-string/jumbo v5, "pref_camera_scenemode_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e00b2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "pref_camera_scenemode_setting_key"

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15c

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v6, "pref_camera_scenemode_key"

    invoke-virtual {v5, v6, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_15c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2SceneMode(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3a
.end method

.method public init(Landroid/app/Activity;)V
    .registers 5

    const-string/jumbo v1, "SettingsManager"

    const-string/jumbo v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getPreferredCameraId(Landroid/app/Activity;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->setLocalIdAndInitialize(I)V

    return-void
.end method

.method public isAutoExposureRegionSupported(I)Z
    .registers 6

    const/4 v2, 0x0

    sget-object v1, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1b

    const/4 v1, 0x1

    :goto_1a
    return v1

    :cond_1b
    move v1, v2

    goto :goto_1a
.end method

.method public isAutoExposureRegionSupported(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isAutoExposureRegionSupported(I)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    return v2

    :cond_1c
    const/4 v2, 0x1

    return v2
.end method

.method public isAutoFocusRegionSupported(I)Z
    .registers 6

    const/4 v2, 0x0

    sget-object v1, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1b

    const/4 v1, 0x1

    :goto_1a
    return v1

    :cond_1b
    move v1, v2

    goto :goto_1a
.end method

.method public isAutoFocusRegionSupported(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isAutoFocusRegionSupported(I)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    return v2

    :cond_1c
    const/4 v2, 0x1

    return v2
.end method

.method public isFlashSupported(I)Z
    .registers 4

    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isZoomSupported(I)Z
    .registers 4

    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isZoomSupported(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isZoomSupported(I)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    return v2

    :cond_1c
    const/4 v2, 0x1

    return v2
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    if-nez p1, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mapToCamera2Value(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;

    new-instance v3, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;

    invoke-direct {v3, v2, v4}, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p1, v3}, Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;-><init>(Ljava/lang/String;Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->notifyListeners(Ljava/util/List;)V

    return-void
.end method

.method public registerListener(Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reinit(I)V
    .registers 5

    const-string/jumbo v0, "SettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reinit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->setLocalIdAndInitialize(I)V

    return-void
.end method

.method public unregisterListener(Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
