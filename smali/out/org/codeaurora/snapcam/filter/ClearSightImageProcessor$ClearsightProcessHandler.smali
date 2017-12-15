.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;
.super Landroid/os/Handler;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearsightProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private createEncodeReprocRequest(Landroid/hardware/camera2/TotalCaptureResult;I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get2(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get10(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_3e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_3e} :catch_3f

    :goto_3e
    return-object v1

    :catch_3f
    move-exception v0

    const-string/jumbo v2, "CSImageProcessor"

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e
.end method

.method private processClearSight(Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;)V
    .registers 16

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get13(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceImage(Z)Landroid/media/Image;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->createEncodeReprocRequest(Landroid/hardware/camera2/TotalCaptureResult;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->initProcessImage()Z

    move-result v6

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReferenceMonoEncodeRequest()V

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReferenceBayerEncodeRequest()V

    const/4 v7, 0x6

    int-to-short v5, v7

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->reset()V

    if-eqz v6, :cond_b1

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-set2(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;J)J

    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "jpegTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v9}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get17(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v10

    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v9}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get3(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v7

    if-eqz v7, :cond_8b

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v7

    invoke-interface {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onReleaseShutterLock()V

    :cond_8b
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get16(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageWriter;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v4

    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;

    invoke-direct {v0, v4}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;-><init>(Landroid/media/Image;)V

    invoke-virtual {v4, v2, v3}, Landroid/media/Image;->setTimestamp(J)V

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->processImage(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;)Z

    move-result v7

    if-eqz v7, :cond_c1

    or-int/lit8 v7, v5, 0x1

    int-to-short v5, v7

    const/4 v7, 0x0

    invoke-direct {p0, v1, v4, v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReprocessRequest(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/Image;I)V

    :cond_b1
    :goto_b1
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get13(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    move-result-object v7

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v9, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_c1
    const/4 v0, 0x0

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    goto :goto_b1
.end method

.method private sendReferenceBayerEncodeRequest()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->createEncodeReprocRequest(Landroid/hardware/camera2/TotalCaptureResult;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceImage(Z)Landroid/media/Image;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReprocessRequest(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/Image;I)V

    return-void
.end method

.method private sendReferenceMonoEncodeRequest()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->createEncodeReprocRequest(Landroid/hardware/camera2/TotalCaptureResult;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceImage(Z)Landroid/media/Image;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReprocessRequest(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/Image;I)V

    return-void
.end method

.method private sendReprocessRequest(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/Image;I)V
    .registers 11

    const/4 v6, 0x1

    :try_start_1
    sget-object v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->JpegCropEnableKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_17
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/media/Image;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_26
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap0(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    sget-object v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->JpegCropRectKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    new-array v3, v3, [I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    const/4 v5, 0x2

    aput v4, v3, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x3

    aput v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-ne p3, v6, :cond_99

    sget-object v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->JpegRoiRectKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v3, v5

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get11(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    const/4 v5, 0x2

    aput v4, v3, v5

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get11(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x3

    aput v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_78
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get16(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageWriter;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v2, p2}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get2(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    new-instance v4, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;

    invoke-direct {v4, p0, p3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    :goto_98
    return-void

    :cond_99
    sget-object v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->JpegRoiRectKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v3, v5

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    const/4 v5, 0x2

    aput v4, v3, v5

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x3

    aput v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_c3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_c3} :catch_c4

    goto :goto_78

    :catch_c4
    move-exception v1

    const-string/jumbo v2, "CSImageProcessor"

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_98
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "process - drop msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    :goto_2a
    return-void

    :pswitch_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->processClearSight(Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;)V

    goto :goto_2a

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2b
    .end packed-switch
.end method
