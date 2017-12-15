.class public Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;
.super Ljava/lang/Object;
.source "ClearSightNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;,
        Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;,
        Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;,
        Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
    }
.end annotation


# static fields
.field private static mInstance:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

.field private static mLibLoaded:Z


# instance fields
.field private mCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;",
            ">;"
        }
    .end annotation
.end field

.field private mImageHeight:I

.field private mImageWidth:I

.field private mOtpCalibData:[B

.field private mRefColorImage:Landroid/media/Image;

.field private mRefColorResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private mRefMonoImage:Landroid/media/Image;

.field private mRefMonoResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private mSrcColor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcMono:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;",
            ">;"
        }
    .end annotation
.end field

.field private mVUStride:I

.field private mYStride:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-string/jumbo v1, "jni_clearsight"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mLibLoaded:Z

    const-string/jumbo v1, "ClearSightNativeEngine"

    const-string/jumbo v2, "successfully loaded clearsight lib"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v1, "ClearSightNativeEngine"

    const-string/jumbo v2, "failed to load clearsight lib"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    sput-boolean v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mLibLoaded:Z

    goto :goto_12
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mCache:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    return-void
.end method

.method private cacheSourceImage(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;)V
    .registers 5

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ClearSightNativeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cacheSourceImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static createInstance()V
    .registers 1

    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    if-nez v0, :cond_b

    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;-><init>()V

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    :cond_b
    return-void
.end method

.method public static getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;
    .registers 1

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->createInstance()V

    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    return-object v0
.end method

.method private getNewSourceImage()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
    .registers 4

    const-string/jumbo v0, "ClearSightNativeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNewSourceImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mCache:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    return-object v0
.end method

.method private final native nativeClearSightProcess(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II[I)Z
.end method

.method private final native nativeClearSightProcessInit(I[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;[[FIIII[Ljava/nio/ByteBuffer;[[FIII[BIIFF)Z
.end method

.method private final native nativeClearSightRegisterImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[F)Z
.end method

.method private setReferenceColorImage(Landroid/media/Image;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorImage:Landroid/media/Image;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    iput-object v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorImage:Landroid/media/Image;

    :cond_c
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorImage:Landroid/media/Image;

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorImage:Landroid/media/Image;

    if-eqz v4, :cond_52

    const-string/jumbo v4, "ClearSightNativeEngine"

    const-string/jumbo v5, "setRefColorImage"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getNewSourceImage()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mVU:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mVU:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    return-void
.end method

.method private setReferenceColorResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 2

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method

.method private setReferenceMonoImage(Landroid/media/Image;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoImage:Landroid/media/Image;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    iput-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoImage:Landroid/media/Image;

    :cond_c
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoImage:Landroid/media/Image;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoImage:Landroid/media/Image;

    if-eqz v3, :cond_3e

    const-string/jumbo v3, "ClearSightNativeEngine"

    const-string/jumbo v4, "setRefMonoImage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getNewSourceImage()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    return-void
.end method

.method private setReferenceMonoResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 2

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->reset()V

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageWidth:I

    iput v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageHeight:I

    iput v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mYStride:I

    iput v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mVUStride:I

    return-void
.end method

.method public getImageCount(Z)I
    .registers 3

    if-eqz p1, :cond_9

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_8
.end method

.method public getReferenceImage(Z)Landroid/media/Image;
    .registers 3

    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorImage:Landroid/media/Image;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoImage:Landroid/media/Image;

    goto :goto_4
.end method

.method public getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;
    .registers 3

    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefColorResult:Landroid/hardware/camera2/TotalCaptureResult;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoResult:Landroid/hardware/camera2/TotalCaptureResult;

    goto :goto_4
.end method

.method public hasReferenceImage(Z)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getImageCount(Z)I

    move-result v1

    if-lez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public init(IIILorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;)V
    .registers 9

    invoke-virtual {p4}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ClearSightNativeEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OTP calibration data: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mOtpCalibData:[B

    iput p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageWidth:I

    iput p3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageHeight:I

    iput p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mYStride:I

    iput p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mVUStride:I

    :goto_2c
    if-lez p1, :cond_3f

    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    mul-int v2, p2, p3

    mul-int v3, p2, p3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;II)V

    invoke-direct {p0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->cacheSourceImage(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2c

    :cond_3f
    return-void
.end method

.method public initProcessImage()Z
    .registers 27

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v2, v7, :cond_49

    const-string/jumbo v2, "ClearSightNativeEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processImage - numImages mismatch - bayer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mono: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Ljava/nio/ByteBuffer;

    new-array v5, v3, [Ljava/nio/ByteBuffer;

    new-array v6, v3, [[F

    new-array v11, v3, [Ljava/nio/ByteBuffer;

    new-array v12, v3, [[F

    const-string/jumbo v2, "ClearSightNativeEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processImage - num Images: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    :goto_77
    move/from16 v0, v24

    if-ge v0, v3, :cond_b4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    aput-object v2, v4, v24

    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mVU:Ljava/nio/ByteBuffer;

    aput-object v2, v5, v24

    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mMetadata:[F

    aput-object v2, v6, v24

    move-object/from16 v0, v25

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    aput-object v2, v11, v24

    move-object/from16 v0, v25

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mMetadata:[F

    aput-object v2, v12, v24

    add-int/lit8 v24, v24, 0x1

    goto :goto_77

    :cond_b4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v7}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mRefMonoResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v7}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/32 v8, 0xf4240

    div-long v22, v22, v8

    const-string/jumbo v2, "ClearSightNativeEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processImage - iso: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " exposure ms: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageHeight:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mYStride:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mVUStride:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mYStride:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mOtpCalibData:[B

    move-object/from16 v16, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v17, v0

    const/16 v19, 0x0

    const/high16 v20, 0x3f000000    # 0.5f

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v20}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->nativeClearSightProcessInit(I[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;[[FIIII[Ljava/nio/ByteBuffer;[[FIII[BIIFF)Z

    move-result v2

    return v2
.end method

.method public processImage(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;)Z
    .registers 9

    invoke-virtual {p1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->getYBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->getVUBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v0, 0x4

    new-array v5, v0, [I

    const-string/jumbo v0, "ClearSightNativeEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processImage - dst size - y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " vu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mYStride:I

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mVUStride:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->nativeClearSightProcess(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II[I)Z

    move-result v6

    invoke-virtual {p1, v5}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->setRoiRect([I)V

    const-string/jumbo v0, "ClearSightNativeEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processImage - roiRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->getRoiRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public registerImage(ZLandroid/media/Image;)Z
    .registers 20

    if-eqz p1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "ClearSightNativeEngine"

    const-string/jumbo v5, "reference image not yet set"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    goto :goto_8

    :cond_20
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getNewSourceImage()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    move-result-object v12

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    invoke-virtual/range {p2 .. p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v13

    const/4 v1, 0x0

    aget-object v1, v13, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v2, v14, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    iget-object v9, v12, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aget-object v1, v13, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_58

    const/4 v1, 0x2

    aget-object v1, v13, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v10, v12, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mVU:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    aget-object v1, v13, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    :cond_58
    iget-object v11, v12, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mMetadata:[F

    move-object/from16 v0, p0

    iget v5, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mImageHeight:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->nativeClearSightRegisterImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[F)Z

    move-result v15

    if-eqz v15, :cond_6f

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6f
    invoke-virtual/range {p2 .. p2}, Landroid/media/Image;->close()V

    return v15
.end method

.method public reset()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcColor:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->cacheSourceImage(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;)V

    goto :goto_2

    :cond_16
    :goto_16
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->mSrcMono:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;

    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->cacheSourceImage(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;)V

    goto :goto_16

    :cond_2a
    invoke-direct {p0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceColorImage(Landroid/media/Image;)V

    invoke-direct {p0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceMonoImage(Landroid/media/Image;)V

    invoke-direct {p0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceColorResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-direct {p0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceMonoResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public setReferenceImage(ZLandroid/media/Image;)V
    .registers 3

    if-eqz p1, :cond_6

    invoke-direct {p0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceColorImage(Landroid/media/Image;)V

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceMonoImage(Landroid/media/Image;)V

    goto :goto_5
.end method

.method public setReferenceResult(ZLandroid/hardware/camera2/TotalCaptureResult;)V
    .registers 3

    if-eqz p1, :cond_6

    invoke-direct {p0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceColorResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceMonoResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_5
.end method
