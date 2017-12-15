.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;
.super Landroid/os/Handler;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MpoSaveHandler"
.end annotation


# instance fields
.field private bayerImage:Landroid/media/Image;

.field private captureStartTime:Ljava/lang/Long;

.field private monoImage:Landroid/media/Image;

.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private processNewImage(Landroid/os/Message;)V
    .registers 5

    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MpoSaveHandler:processNewImage for cam id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne v0, v1, :cond_34

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->saveMpoImage()V

    :cond_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    if-nez v0, :cond_28

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    goto :goto_28
.end method

.method private saveMpoImage()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get21(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/NamedImages;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->captureStartTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->nameNewImage(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get21(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/NamedImages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->getNextNameEntity()Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    move-result-object v15

    if-nez v15, :cond_b9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :goto_27
    if-nez v15, :cond_bd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_STEREO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-static {v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/media/Image;)[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    invoke-static {v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/media/Image;)[B

    move-result-object v6

    invoke-static {v5}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get17(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_d5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v8

    :goto_7d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get15(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-nez v3, :cond_e6

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/android/camera/storage/ImageSaver;->addMpo([B[B[BIILjava/lang/String;JLandroid/location/Location;I)V

    :cond_9f
    :goto_9f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    const/4 v15, 0x0

    return-void

    :cond_b9
    iget-wide v10, v15, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->date:J

    goto/16 :goto_27

    :cond_bd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v15, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_STEREO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_41

    :cond_d5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v8

    goto :goto_7d

    :cond_e6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/storage/ImageSaver;->saveMpoImage([B[B[B)[B

    move-result-object v14

    if-eqz v14, :cond_9f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3, v14}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set6(Lcom/android/camera/camera_adapter/camera2/CaptureModule;[B)[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v3

    new-instance v4, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler$1;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;I)V

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_9f
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->captureStartTime:Ljava/lang/Long;

    goto :goto_5

    :pswitch_d
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->processNewImage(Landroid/os/Message;)V

    goto :goto_5

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_d
    .end packed-switch
.end method
