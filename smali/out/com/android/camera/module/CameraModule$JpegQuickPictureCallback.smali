.class final Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegQuickPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field mPressDownTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method

.method private getBurstShotTitle()Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get25(Lcom/android/camera/module/CameraModule;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get1(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get1(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2, v4}, Lcom/android/camera/module/CameraModule;->-set1(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    :cond_25
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get1(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_54

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/module/CameraModule;->-set1(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get1(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_54

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/module/CameraModule;->-set1(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    :cond_54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get1(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_90

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_UBIFOCUS_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_87
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_BURST"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_87
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v2, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v2, :cond_a

    if-nez p1, :cond_b

    :cond_a
    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v2, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    if-eqz v2, :cond_a3

    :cond_40
    :goto_40
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v2

    if-eqz v2, :cond_fe

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_a2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v2, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v2, :cond_a2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v4, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v4, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    if-eqz v4, :cond_fc

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmpl-double v4, v8, v16

    if-nez v4, :cond_f8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmpl-double v4, v8, v16

    if-eqz v4, :cond_fa

    const/4 v7, 0x1

    :goto_97
    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/module/CameraModule;->trackPictureTaken(IZIIZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-wrap19(Lcom/android/camera/module/CameraModule;)V

    :cond_a2
    return-void

    :cond_a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->onShutter()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get25(Lcom/android/camera/module/CameraModule;)Z

    move-result v2

    if-eqz v2, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get13(Lcom/android/camera/module/CameraModule;)Z

    move-result v2

    if-eqz v2, :cond_e1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get5(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->changeJpegTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    :cond_e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/storage/ImageSaver;->updateImage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    :cond_f8
    const/4 v7, 0x1

    goto :goto_97

    :cond_fa
    const/4 v7, 0x0

    goto :goto_97

    :cond_fc
    const/4 v7, 0x0

    goto :goto_97

    :cond_fe
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_112

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    :cond_112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_290

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-gt v2, v3, :cond_290

    const/4 v14, 0x1

    :goto_160
    if-eqz v14, :cond_293

    const/4 v13, 0x0

    :goto_163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    add-int/2addr v2, v13

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_299

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v10, v2, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v11, v2, Landroid/hardware/Camera$Size;->height:I

    :goto_17e
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_2ab

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2ab

    const/4 v15, 0x1

    :goto_19f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_2ae

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ne v2, v3, :cond_2ae

    const/4 v2, 0x1

    :goto_1ba
    if-nez v2, :cond_1e1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    check-cast v8, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object v17

    const/4 v12, 0x0

    const/16 v16, 0x1

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v17}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    :cond_1e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v2, v3, :cond_1f7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v2, Lcom/android/camera/module/CameraModule;->mMultiSnapStopRequest:Z

    if-eqz v2, :cond_2c1

    :cond_1f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v8, v3, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long/2addr v6, v8

    iput-wide v6, v2, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_2b1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/module/CameraModule;->-wrap24(Lcom/android/camera/module/CameraModule;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    :goto_223
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_2ba

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v8, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    :goto_239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_2bd

    const/4 v9, 0x0

    :goto_246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    if-eqz v2, :cond_2bf

    const/4 v12, 0x1

    :goto_24d
    invoke-virtual/range {v7 .. v12}, Lcom/android/camera/module/CameraModule;->trackPictureTaken(IZIIZ)V

    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Burst shooting finished. Total:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "pictures, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "cost consuming:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v6, v4, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28f
    return-void

    :cond_290
    const/4 v14, 0x0

    goto/16 :goto_160

    :cond_293
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v13

    goto/16 :goto_163

    :cond_299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v10, v2, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v11, v2, Landroid/hardware/Camera$Size;->width:I

    goto/16 :goto_17e

    :cond_2ab
    const/4 v15, 0x0

    goto/16 :goto_19f

    :cond_2ae
    const/4 v2, 0x0

    goto/16 :goto_1ba

    :cond_2b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-wrap19(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_223

    :cond_2ba
    const/4 v8, 0x1

    goto/16 :goto_239

    :cond_2bd
    const/4 v9, 0x1

    goto :goto_246

    :cond_2bf
    const/4 v12, 0x0

    goto :goto_24d

    :cond_2c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_2d5

    if-eqz v15, :cond_2d5

    invoke-static/range {p1 .. p1}, Lcom/android/camera/Util;->isProduceFocusInfoSuccess([B)Z

    move-result v2

    if-eqz v2, :cond_2e1

    :cond_2d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get2(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/module/CameraModule$BurstSpeedController;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->-wrap0(Lcom/android/camera/module/CameraModule$BurstSpeedController;)V

    goto :goto_28f

    :cond_2e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const v3, 0x7f0e018e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/module/CameraModule;->updateWarningMessage(IZ)V

    goto :goto_28f
.end method
