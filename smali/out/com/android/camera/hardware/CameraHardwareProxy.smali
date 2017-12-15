.class public Lcom/android/camera/hardware/CameraHardwareProxy;
.super Ljava/lang/Object;
.source "CameraHardwareProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;,
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;,
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;,
        Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;
    }
.end annotation


# static fields
.field private static sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;


# instance fields
.field protected mHalCoordinate:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v2, 0x3e8

    const/16 v1, -0x3e8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    return-void
.end method

.method public static declared-synchronized getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;
    .registers 2

    const-class v1, Lcom/android/camera/hardware/CameraHardwareProxy;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/QcomCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    :cond_14
    :goto_14
    sget-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    monitor-exit v1

    return-object v0

    :cond_18
    :try_start_18
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Lcom/android/camera/hardware/LCCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/LCCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_26

    goto :goto_14

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_29
    :try_start_29
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_37

    new-instance v0, Lcom/android/camera/hardware/NvidiaCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    goto :goto_14

    :cond_37
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_45

    new-instance v0, Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/MTKCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    goto :goto_14

    :cond_45
    new-instance v0, Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    :try_end_4c
    .catchall {:try_start_29 .. :try_end_4c} :catchall_26

    goto :goto_14
.end method

.method protected static split(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p0, :cond_4

    return-object v4

    :cond_4
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v2, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_27
    return-object v3
.end method

.method private strToSize(Lcom/android/camera/CameraManager$CameraProxy;Ljava/lang/String;)Landroid/hardware/Camera$Size;
    .registers 10

    const/4 v6, 0x0

    if-nez p2, :cond_4

    return-object v6

    :cond_4
    const/16 v3, 0x78

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2d

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/hardware/Camera$Size;

    invoke-virtual {p1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    return-object v3

    :cond_2d
    const-string/jumbo v3, "CameraHardwareProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid size parameter string="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method


# virtual methods
.method public cancelContinuousMode(Landroid/hardware/Camera;)V
    .registers 2

    return-void
.end method

.method public enableRaw(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRotation(Landroid/hardware/Camera$Parameters;)I
    .registers 4

    const-string/jumbo v1, "rotation"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v1, -0x1

    return v1

    :cond_b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "xiaomi-still-beautify-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/portability/ICameraParameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/camera/portability/ICameraParameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2b

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    sget v5, Lcom/android/camera/Util;->sWindowHeight:I

    if-gt v4, v5, :cond_f

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    sget v5, Lcom/android/camera/Util;->sWindowWidth:I

    if-gt v4, v5, :cond_f

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2b
    return-object v0
.end method

.method public getSupportedWhiteBalance(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/portability/ICameraParameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/camera/portability/ICameraParameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeWatermark(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "xiaomi-time-watermark"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "off"

    return-object v0
.end method

.method public getWBCurrentCCT(Landroid/hardware/Camera;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isFocusSuccessful(Landroid/hardware/Camera;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedFlashOn(Landroid/hardware/Camera;)Z
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_3
    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const-string/jumbo v5, "getFlashOn"

    const-string/jumbo v6, "()I"

    invoke-static {v2, v5, v6}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_31

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, p1, v6}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_21} :catch_27

    move-result v5

    if-ne v5, v3, :cond_25

    :goto_24
    return v3

    :cond_25
    move v3, v4

    goto :goto_24

    :catch_27
    move-exception v0

    const-string/jumbo v3, "CameraHardwareProxy"

    const-string/jumbo v5, "isNeedFlashOn IllegalArgumentException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return v4
.end method

.method public isPreviewEnabled(Landroid/hardware/Camera;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isZSLMode(Landroid/hardware/Camera$Parameters;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .registers 3

    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public setAnalyzeAgeGender(Landroid/hardware/Camera$Parameters;Z)V
    .registers 5

    const-string/jumbo v1, "xiaomi-face-age-gender-analyze"

    if-eqz p2, :cond_c

    const-string/jumbo v0, "on"

    :goto_8
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const-string/jumbo v0, "off"

    goto :goto_8
.end method

.method public setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "xiaomi-beauty-enlarge-eye"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifySkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "xiaomi-beauty-skin-color"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifySkinSmooth(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "xiaomi-beauty-skin-smooth"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "xiaomi-beauty-slim-face"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautyRank(Landroid/hardware/Camera$Parameters;Z)V
    .registers 5

    const-string/jumbo v1, "xiaomi-face-beauty-rank"

    if-eqz p2, :cond_c

    const-string/jumbo v0, "on"

    :goto_8
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const-string/jumbo v0, "off"

    goto :goto_8
.end method

.method public setBurstShotSpeed(Landroid/hardware/Camera;I)V
    .registers 3

    return-void
.end method

.method public setContinuousShotCallback(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V
    .registers 3

    return-void
.end method

.method public setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V
    .registers 5

    const-string/jumbo v1, "xiaomi-face-watermark"

    if-eqz p2, :cond_17

    const-string/jumbo v0, "on"

    :goto_8
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "watermark_age"

    if-eqz p2, :cond_1b

    const-string/jumbo v0, "on"

    :goto_13
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    const-string/jumbo v0, "off"

    goto :goto_8

    :cond_1b
    const-string/jumbo v0, "off"

    goto :goto_13
.end method

.method public setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p2, :cond_43

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_43

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFocusAreas fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    return-void

    :cond_43
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    return-void
.end method

.method public setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method public setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "mi-hdr"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLongshotMode(Landroid/hardware/Camera;Z)V
    .registers 3

    return-void
.end method

.method public setMetadataCb(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V
    .registers 12

    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v1, 0x0

    if-eqz p2, :cond_23

    :try_start_9
    const-string/jumbo v6, "android.hardware.Camera$CameraMetaDataCallback"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    new-instance v8, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;

    invoke-direct {v8, p2}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;-><init>(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    :cond_23
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v6, "setMetadataCb"

    const-string/jumbo v7, "(Landroid/hardware/Camera$CameraMetaDataCallback;)V"

    invoke-static {v5, v6, v7}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_45

    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v4, v6, p1, v7}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_45} :catch_51
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_45} :catch_46

    :cond_45
    :goto_45
    return-void

    :catch_46
    move-exception v2

    const-string/jumbo v6, "CameraHardwareProxy"

    const-string/jumbo v7, "ClassNotFoundException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    :catch_51
    move-exception v3

    const-string/jumbo v6, "CameraHardwareProxy"

    const-string/jumbo v7, "IllegalArgumentException"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45
.end method

.method public setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p2, :cond_43

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_43

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMeteringAreas fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    return-void

    :cond_43
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    return-void
.end method

.method public setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "xiaomi-multi-face-beautify"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "night-anti-motion"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "night-shot"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOIS(Landroid/hardware/Camera$Parameters;Z)V
    .registers 3

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->dump()V

    :cond_a
    return-void
.end method

.method public setStereoDataCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public setStereoWarningCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "xiaomi-still-beautify-values"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStillMore(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "xiaomi-time-watermark"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "watermark"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTimeWatermarkValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "xiaomi-time-watermark-value"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "watermark_value"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    return-void
.end method

.method public setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected splitSize(Lcom/android/camera/CameraManager$CameraProxy;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraManager$CameraProxy;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p2, :cond_4

    return-object v6

    :cond_4
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v4, p2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->strToSize(Lcom/android/camera/CameraManager$CameraProxy;Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_34

    return-object v6

    :cond_34
    return-object v3
.end method

.method public startObjectTrack(Landroid/hardware/Camera;IIII)V
    .registers 6

    return-void
.end method

.method public stopObjectTrack(Landroid/hardware/Camera;)V
    .registers 2

    return-void
.end method
