.class public Lcom/android/camera/hardware/MTKCameraProxy;
.super Lcom/android/camera/hardware/CameraHardwareProxy;
.source "MTKCameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;,
        Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;,
        Lcom/android/camera/hardware/MTKCameraProxy$StereoDataCallback;,
        Lcom/android/camera/hardware/MTKCameraProxy$StereoWarningCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelContinuousMode(Landroid/hardware/Camera;)V
    .registers 8

    const/4 v4, 0x1

    :try_start_1
    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "cancelContinuousShot"

    const-string/jumbo v5, "()V"

    invoke-static {v3, v4, v5}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, p1, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1d
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_1 .. :try_end_1d} :catch_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    const-string/jumbo v4, "MTKCameraProxy"

    const-string/jumbo v5, "cancelContinuousMode IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :catch_29
    move-exception v1

    goto :goto_1d
.end method

.method public enableRaw(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .registers 9

    const/4 v3, 0x1

    :try_start_1
    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "enableRaw16"

    const-string/jumbo v4, "(Z)V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_23

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, p1, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_22
    return-void

    :cond_23
    const-string/jumbo v3, "MTKCameraProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disableRawCallback NoSuchMethodException ownerClazz="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_40} :catch_41

    goto :goto_22

    :catch_41
    move-exception v0

    const-string/jumbo v3, "MTKCameraProxy"

    const-string/jumbo v4, "disableRawCallback IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public enableStereoMode()V
    .registers 7

    const/4 v5, 0x0

    const-class v1, Landroid/hardware/Camera;

    const-string/jumbo v2, "setProperty"

    const-string/jumbo v3, "(Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static {v1, v2, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_23

    const-class v1, Landroid/hardware/Camera;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "client.appmode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "MtkStereo"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v5, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_23
    return-void
.end method

.method public getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .registers 5
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

    const/4 v2, 0x0

    const-string/jumbo v1, "flash-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    return-object v2

    :cond_11
    const-string/jumbo v1, "off,on,auto,red-eye,torch"

    invoke-static {v1}, Lcom/android/camera/hardware/MTKCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "snapshot-picture-flip"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .registers 4
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

    const-string/jumbo v1, "exposure-meter-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/hardware/MTKCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedCaptureMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .registers 4
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

    const-string/jumbo v1, "cap-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/hardware/MTKCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;
    .registers 4
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

    const-string/jumbo v1, "manual"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .registers 4
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

    const-string/jumbo v1, "iso-speed-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/hardware/MTKCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedStereoPictureSizes(Lcom/android/camera/CameraManager$CameraProxy;Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraManager$CameraProxy;",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    const-string/jumbo v1, "refocus-picture-size-values"

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->splitSize(Lcom/android/camera/CameraManager$CameraProxy;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "video-hfr"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .registers 4

    const-string/jumbo v0, "1"

    invoke-virtual {p0, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isZSLMode(Landroid/hardware/Camera$Parameters;)Z
    .registers 4

    const-string/jumbo v0, "on"

    const-string/jumbo v1, "zsd-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "3dnr-mode"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "exposure-meter"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V
    .registers 4

    const-string/jumbo v0, "burst-num"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setBurstShotSpeed(Landroid/hardware/Camera;I)V
    .registers 10

    :try_start_0
    const-string/jumbo v3, "MTKCameraProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBurstShotSpeed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " fps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "setContinuousShotSpeed"

    const-string/jumbo v4, "(I)V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_47

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, p1, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_47} :catch_48

    :cond_47
    :goto_47
    return-void

    :catch_48
    move-exception v0

    const-string/jumbo v3, "MTKCameraProxy"

    const-string/jumbo v4, "setBurstShotSpeed IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method

.method public setCameraMode(Landroid/hardware/Camera$Parameters;I)V
    .registers 4

    const-string/jumbo v0, "mtk-cam-mode"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setCaptureMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "cap-mode"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContinuousShotCallback(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V
    .registers 16

    invoke-static {}, Lcom/android/camera/Device;->getContinuousShotCallbackClass()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/Device;->getContinuousShotCallbackSetter()Ljava/lang/String;

    move-result-object v8

    if-eqz v2, :cond_c

    if-nez v8, :cond_3e

    :cond_c
    const-string/jumbo v10, "MTKCameraProxy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Insufficient continuous shot callback info[class:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " setter:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ContinuousShotCallback"

    const-string/jumbo v8, "setContinuousShotCallback"

    :cond_3e
    const/4 v1, 0x0

    if-eqz p2, :cond_6c

    :try_start_41
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "android.hardware.Camera$"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    new-instance v12, Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;

    invoke-direct {v12, p0, p2}, Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;-><init>(Lcom/android/camera/hardware/MTKCameraProxy;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    invoke-static {v10, v11, v12}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    :cond_6c
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "(Landroid/hardware/Camera$"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";)V"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v10}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_a3

    const/4 v10, 0x0

    aget-object v10, v7, v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {v6, v10, p1, v11}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_a3} :catch_af
    .catch Ljava/lang/ClassNotFoundException; {:try_start_41 .. :try_end_a3} :catch_a4

    :cond_a3
    :goto_a3
    return-void

    :catch_a4
    move-exception v3

    const-string/jumbo v10, "MTKCameraProxy"

    const-string/jumbo v11, "ClassNotFoundException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a3

    :catch_af
    move-exception v4

    const-string/jumbo v10, "MTKCameraProxy"

    const-string/jumbo v11, "IllegalArgumentException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a3
.end method

.method public setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "contrast"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "fb-enlarge-eye"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    const-string/jumbo v0, "fb-enlarge-eye"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "fb-extreme-beauty"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFaceBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "face-beauty"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFacePosition(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "fb-face-pos"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "iso-speed"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "snapshot-picture-flip"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSaturation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "saturation"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSharpness(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "edge"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "fb-skin-color"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    const-string/jumbo v0, "fb-skin-color"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public setSlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "fb-slim-face"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    const-string/jumbo v0, "fb-slim-face"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public setSlowMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "slow-motion"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSmoothLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "fb-smooth-level"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStereoDataCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .registers 13

    const-string/jumbo v6, "MTKCameraProxy"

    const-string/jumbo v7, "setStereoDataCallback"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v6

    if-eqz v6, :cond_74

    :try_start_f
    const-string/jumbo v6, "MTKCameraProxy"

    const-string/jumbo v7, "setStereoDataCallback 366"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p2, :cond_37

    const-string/jumbo v6, "android.hardware.Camera$StereoCameraDataCallback"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    new-instance v8, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;

    const-class v9, Lcom/android/camera/hardware/MTKCameraProxy$StereoDataCallback;

    invoke-direct {v8, p2, v9}, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    :cond_37
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v6, "MTKCameraProxy"

    const-string/jumbo v7, "setStereoDataCallback 375"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "setStereoCameraDataCallback"

    const-string/jumbo v7, "(Landroid/hardware/Camera$StereoCameraDataCallback;)V"

    invoke-static {v5, v6, v7}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v4

    const-string/jumbo v6, "MTKCameraProxy"

    const-string/jumbo v7, "setStereoDataCallback 378"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_74

    const-string/jumbo v6, "MTKCameraProxy"

    const-string/jumbo v7, "setStereoDataCallback 380"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v4, v6, p1, v7}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_74} :catch_80
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_74} :catch_75

    :cond_74
    :goto_74
    return-void

    :catch_75
    move-exception v2

    const-string/jumbo v6, "MTKCameraProxy"

    const-string/jumbo v7, "ClassNotFoundException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_74

    :catch_80
    move-exception v3

    const-string/jumbo v6, "MTKCameraProxy"

    const-string/jumbo v7, "IllegalArgumentException"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_74
.end method

.method public setStereoWarningCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .registers 13

    const-string/jumbo v6, "MTKCameraProxy"

    const-string/jumbo v7, "setStereoWarningCallback"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v6

    if-eqz v6, :cond_50

    const/4 v1, 0x0

    if-eqz p2, :cond_2e

    :try_start_12
    const-string/jumbo v6, "android.hardware.Camera$StereoCameraWarningCallback"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    new-instance v8, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;

    const-class v9, Lcom/android/camera/hardware/MTKCameraProxy$StereoWarningCallback;

    invoke-direct {v8, p2, v9}, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    :cond_2e
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v6, "setStereoCameraWarningCallback"

    const-string/jumbo v7, "(Landroid/hardware/Camera$StereoCameraWarningCallback;)V"

    invoke-static {v5, v6, v7}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_50

    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v4, v6, p1, v7}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_50} :catch_5c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_50} :catch_51

    :cond_50
    :goto_50
    return-void

    :catch_51
    move-exception v2

    const-string/jumbo v6, "MTKCameraProxy"

    const-string/jumbo v7, "ClassNotFoundException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    :catch_5c
    move-exception v3

    const-string/jumbo v6, "MTKCameraProxy"

    const-string/jumbo v7, "IllegalArgumentException"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50
.end method

.method public setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "video-hfr"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "stereo-dof-level"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V
    .registers 5

    const-string/jumbo v1, "stereo-vsdof-mode"

    if-eqz p2, :cond_c

    const-string/jumbo v0, "on"

    :goto_8
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const-string/jumbo v0, "off"

    goto :goto_8
.end method

.method public setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "zsd-mode"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
