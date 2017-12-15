.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;
.super Lcom/android/camera/camera_adapter/camera2/CaptureModule$ImageAvailableListener;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setUpCameraOutputs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {p0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$ImageAvailableListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 24

    const-string/jumbo v3, "CaptureModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "image available for cam: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->mCamId:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap7(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_44

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get20(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->mCamId:I

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v12, v8, v14, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :goto_43
    return-void

    :cond_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get21(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/NamedImages;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->nameNewImage(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get21(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/NamedImages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->getNextNameEntity()Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    move-result-object v19

    if-nez v19, :cond_10f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_79
    if-nez v19, :cond_115

    const-wide/16 v6, -0x1

    :goto_7d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/media/Image;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get17(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)I

    move-result v3

    add-int/2addr v3, v13

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_11b

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image;->getWidth()I

    move-result v10

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image;->getHeight()I

    move-result v11

    :goto_a4
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get15(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-nez v3, :cond_124

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v3 .. v17}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    :goto_cd
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image;->close()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap9(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_e5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->mCamId:I

    invoke-static {v3, v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap30(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    :cond_e5
    const-string/jumbo v3, "CaptureModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "singleJpegTime="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v12}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get11(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    :cond_10f
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto/16 :goto_79

    :cond_115
    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->date:J

    goto/16 :goto_7d

    :cond_11b
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image;->getHeight()I

    move-result v10

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image;->getWidth()I

    move-result v11

    goto :goto_a4

    :cond_124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set6(Lcom/android/camera/camera_adapter/camera2/CaptureModule;[B)[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    new-instance v12, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[B

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_165

    const/4 v3, 0x0

    :goto_148
    invoke-direct {v12, v14, v15, v13, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;[BIZ)V

    invoke-static {v8, v12}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;)Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get12(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    move-result-object v3

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v3, v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap33(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    goto/16 :goto_cd

    :cond_165
    const/4 v3, 0x1

    goto :goto_148
.end method
