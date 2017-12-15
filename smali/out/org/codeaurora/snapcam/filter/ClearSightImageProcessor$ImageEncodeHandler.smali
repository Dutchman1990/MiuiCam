.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;
.super Landroid/os/Handler;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageEncodeHandler"
.end annotation


# instance fields
.field private mBayerImage:Landroid/media/Image;

.field private mClearSightImage:Landroid/media/Image;

.field private mEncodeRequest:S

.field private mEncodeResults:S

.field private mHasFailure:Z

.field private mMonoImage:Landroid/media/Image;

.field private mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

.field private mReadyToSave:Z

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method public constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private processNewEvent(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_64

    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNewEncodeEvent - newImg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_44

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    iget-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    iput-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    :goto_32
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    invoke-static {v1, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap4(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/media/Image;Landroid/media/Image;)V

    :cond_43
    :goto_43
    return-void

    :cond_44
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    if-nez v1, :cond_56

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    iget-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    goto :goto_32

    :cond_56
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    iget-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    goto :goto_32

    :cond_64
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_86

    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNewEncodeEvent - newResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_86
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNewEncodeEvent - newFailure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mHasFailure:Z

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_b0

    iget-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    iput-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    goto :goto_43

    :cond_b0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureFailure;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureFailure;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c7

    iget-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    goto/16 :goto_43

    :cond_c7
    iget-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    goto/16 :goto_43
.end method

.method private saveMpoImage()V
    .registers 27

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mReadyToSave:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-short v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeRequest:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    if-eq v2, v3, :cond_1a

    :cond_10
    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "saveMpoImage - not yet ready to save"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "saveMpoImage"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mHasFailure:Z

    if-eqz v2, :cond_52

    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "saveMpoImage has failure - aborting."

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap3(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    if-eqz v2, :cond_4e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    invoke-interface {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure()V

    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->resetParams()V

    return-void

    :cond_52
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap2(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    invoke-virtual {v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v18

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v12

    invoke-static {v12}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get18(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v2

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_14c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v11

    :goto_9d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    invoke-virtual {v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v16

    if-eqz v16, :cond_166

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    if-eqz v2, :cond_c0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    invoke-interface {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightSuccess()V

    :cond_c0
    :goto_c0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v2, v14, v15}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-set1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;J)J

    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encodeTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get6(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get17(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v20

    sub-long v14, v14, v20

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " csTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get6(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get3(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v20

    sub-long v14, v14, v20

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    if-nez v2, :cond_196

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_11e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    if-nez v2, :cond_19d

    invoke-static {v6, v7}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    :goto_128
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    if-nez v18, :cond_1a7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    if-eqz v16, :cond_1a4

    move-object/from16 v4, v16

    :goto_13e
    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v3 .. v17}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    :cond_148
    :goto_148
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->resetParams()V

    return-void

    :cond_14c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v11

    goto/16 :goto_9d

    :cond_166
    if-eqz v17, :cond_17f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    if-eqz v2, :cond_c0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    invoke-interface {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure()V

    goto/16 :goto_c0

    :cond_17f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    if-eqz v2, :cond_c0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    invoke-interface {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure()V

    goto/16 :goto_c0

    :cond_196
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    iget-wide v6, v2, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->date:J

    goto :goto_11e

    :cond_19d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    iget-object v5, v2, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_128

    :cond_1a4
    move-object/from16 v4, v17

    goto :goto_13e

    :cond_1a7
    if-eqz v17, :cond_148

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_STEREO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move/from16 v19, v10

    move/from16 v20, v11

    move-wide/from16 v22, v6

    move-object/from16 v24, v9

    move/from16 v25, v13

    invoke-virtual/range {v15 .. v25}, Lcom/android/camera/storage/ImageSaver;->addMpo([B[B[BIILjava/lang/String;JLandroid/location/Location;I)V

    goto/16 :goto_148
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "encode - drop msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->resetParams()V

    return-void

    :cond_28
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5e

    :goto_2d
    :pswitch_2d
    return-void

    :pswitch_2e
    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "ImageEncodeEvent - START_CAPTURE"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->resetParams()V

    goto :goto_2d

    :pswitch_3b
    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "ImageEncodeEvent - END_CAPTURE"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-short v0, v0

    iput-short v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeRequest:S

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mReadyToSave:Z

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->saveMpoImage()V

    goto :goto_2d

    :pswitch_56
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->processNewEvent(Landroid/os/Message;)V

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->saveMpoImage()V

    goto :goto_2d

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_2d
        :pswitch_2d
        :pswitch_3b
    .end packed-switch
.end method

.method resetParams()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    :cond_d
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    :cond_18
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    :cond_23
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mReadyToSave:Z

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mHasFailure:Z

    iput-short v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeRequest:S

    iput-short v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    return-void
.end method
