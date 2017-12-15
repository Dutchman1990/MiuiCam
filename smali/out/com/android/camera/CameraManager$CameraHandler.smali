.class Lcom/android/camera/CameraManager$CameraHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20

    :try_start_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I
    :try_end_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_4} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_6c

    sparse-switch v1, :sswitch_data_4aa

    :cond_7
    :goto_7
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get10(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    return-void

    :sswitch_13
    :try_start_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set0(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set2(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_2e
    .catch Ljava/util/ConcurrentModificationException; {:try_start_13 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_2e} :catch_6c

    goto :goto_7

    :catch_2f
    move-exception v10

    const-string/jumbo v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ConcurrentModificationException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/util/ConcurrentModificationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :sswitch_4f
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set7(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_57
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4f .. :try_end_57} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_57} :catch_6c

    :try_start_57
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_62} :catch_63
    .catch Ljava/util/ConcurrentModificationException; {:try_start_57 .. :try_end_62} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_62} :catch_6c

    goto :goto_7

    :catch_63
    move-exception v11

    :try_start_64
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1, v11}, Lcom/android/camera/CameraManager;->-set7(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_6b
    .catch Ljava/util/ConcurrentModificationException; {:try_start_64 .. :try_end_6b} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_6b} :catch_6c

    goto :goto_7

    :catch_6c
    move-exception v9

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_e3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get1(Lcom/android/camera/CameraManager;)Z

    move-result v1

    if-nez v1, :cond_bb

    :try_start_89
    const-string/jumbo v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "camera hardware state test, use getParameters, msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "CameraManager"

    const-string/jumbo v2, "camera hardware state is normal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_bb} :catch_490

    :cond_bb
    :goto_bb
    :try_start_bb
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c6} :catch_49d

    :goto_c6
    if-eqz v13, :cond_d3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get3(Lcom/android/camera/CameraManager;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->notifyHardwareError()V

    :cond_d3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set0(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set2(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;

    :cond_e3
    const-string/jumbo v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception in camerahandler, mCameraError="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->-get1(Lcom/android/camera/CameraManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get1(Lcom/android/camera/CameraManager;)Z

    move-result v1

    if-nez v1, :cond_7

    if-nez v13, :cond_7

    throw v9

    :sswitch_11d
    :try_start_11d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    goto/16 :goto_7

    :sswitch_12a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V
    :try_end_135
    .catch Ljava/util/ConcurrentModificationException; {:try_start_11d .. :try_end_135} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_11d .. :try_end_135} :catch_6c

    goto/16 :goto_7

    :sswitch_137
    :try_start_137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_148} :catch_14a
    .catch Ljava/util/ConcurrentModificationException; {:try_start_137 .. :try_end_148} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_137 .. :try_end_148} :catch_6c

    goto/16 :goto_7

    :catch_14a
    move-exception v7

    :try_start_14b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :sswitch_151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    return-void

    :sswitch_15d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_7

    :sswitch_16a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_7

    :sswitch_17d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_7

    :sswitch_190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_7

    :sswitch_1a3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_7

    :sswitch_1b6
    const-string/jumbo v14, "cancelAutoFocus failed"
    :try_end_1b9
    .catch Ljava/util/ConcurrentModificationException; {:try_start_14b .. :try_end_1b9} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_14b .. :try_end_1b9} :catch_6c

    :try_start_1b9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1c4} :catch_1c6
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1b9 .. :try_end_1c4} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_1b9 .. :try_end_1c4} :catch_6c

    goto/16 :goto_7

    :catch_1c6
    move-exception v8

    :try_start_1c7
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_1db
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_7

    :sswitch_1ee
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_7

    :sswitch_1ff
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_7

    :sswitch_212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_7

    :sswitch_225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startFaceDetection()V

    goto/16 :goto_7

    :sswitch_232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V

    goto/16 :goto_7

    :sswitch_23f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    goto/16 :goto_7

    :sswitch_24c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    goto/16 :goto_7

    :sswitch_25f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_7

    :sswitch_27a
    const-string/jumbo v14, "getParameters failed (empty parameters)"
    :try_end_27d
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1c7 .. :try_end_27d} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_1c7 .. :try_end_27d} :catch_6c

    const/16 v16, 0x3

    move/from16 v17, v16

    :goto_281
    add-int/lit8 v16, v17, -0x1

    if-lez v17, :cond_7

    :try_start_285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set5(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_298
    .catch Ljava/lang/Exception; {:try_start_285 .. :try_end_298} :catch_29a
    .catch Ljava/util/ConcurrentModificationException; {:try_start_285 .. :try_end_298} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_285 .. :try_end_298} :catch_6c

    goto/16 :goto_7

    :catch_29a
    move-exception v8

    :try_start_29b
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2aa

    if-eqz v16, :cond_2aa

    move/from16 v17, v16

    goto :goto_281

    :cond_2aa
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2b4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_7

    :sswitch_2c7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->addRawImageCallbackBuffer([B)V

    goto/16 :goto_7

    :sswitch_2da
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->isNeedFlashOn(Landroid/hardware/Camera;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set3(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_7

    :sswitch_2f7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->isFocusSuccessful(Landroid/hardware/Camera;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set4(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_7

    :sswitch_314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->cancelContinuousMode(Landroid/hardware/Camera;)V

    goto/16 :goto_7

    :sswitch_329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getWBCurrentCCT(Landroid/hardware/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set8(Lcom/android/camera/CameraManager;I)I

    goto/16 :goto_7

    :sswitch_346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setLongshotMode(Landroid/hardware/Camera;Z)V

    goto/16 :goto_7

    :sswitch_365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    return-void

    :sswitch_37f
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v3, v15, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v15, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/hardware/CameraHardwareProxy;->startObjectTrack(Landroid/hardware/Camera;IIII)V

    goto/16 :goto_7

    :sswitch_3aa
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->stopObjectTrack(Landroid/hardware/Camera;)V

    goto/16 :goto_7

    :sswitch_3bf
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMetadataCb(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    goto/16 :goto_7

    :sswitch_3da
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->isPreviewEnabled(Landroid/hardware/Camera;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set6(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_7

    :sswitch_3f7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBurstShotSpeed(Landroid/hardware/Camera;I)V
    :try_end_40e
    .catch Ljava/util/ConcurrentModificationException; {:try_start_29b .. :try_end_40e} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_29b .. :try_end_40e} :catch_6c

    goto/16 :goto_7

    :sswitch_410
    :try_start_410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_421
    .catch Ljava/io/IOException; {:try_start_410 .. :try_end_421} :catch_423
    .catch Ljava/util/ConcurrentModificationException; {:try_start_410 .. :try_end_421} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_410 .. :try_end_421} :catch_6c

    goto/16 :goto_7

    :catch_423
    move-exception v7

    :try_start_424
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :sswitch_42a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setContinuousShotCallback(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    goto/16 :goto_7

    :sswitch_445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStereoDataCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_7

    :sswitch_45e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStereoWarningCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_7

    :sswitch_477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->enableRaw(Landroid/hardware/Camera;Ljava/lang/Object;)V
    :try_end_48e
    .catch Ljava/util/ConcurrentModificationException; {:try_start_424 .. :try_end_48e} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_424 .. :try_end_48e} :catch_6c

    goto/16 :goto_7

    :catch_490
    move-exception v12

    const-string/jumbo v1, "CameraManager"

    const-string/jumbo v2, "camera hardware crashed "

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v13, 0x1

    goto/16 :goto_bb

    :catch_49d
    move-exception v12

    const-string/jumbo v1, "CameraManager"

    const-string/jumbo v2, "Fail to release the camera."

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v13, 0x1

    goto/16 :goto_c6

    :sswitch_data_4aa
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_4f
        0x3 -> :sswitch_11d
        0x4 -> :sswitch_12a
        0x5 -> :sswitch_137
        0x6 -> :sswitch_151
        0x7 -> :sswitch_15d
        0x8 -> :sswitch_16a
        0x9 -> :sswitch_190
        0xa -> :sswitch_1a3
        0xb -> :sswitch_1b6
        0xc -> :sswitch_1db
        0xd -> :sswitch_1ee
        0xe -> :sswitch_1ff
        0xf -> :sswitch_212
        0x10 -> :sswitch_225
        0x11 -> :sswitch_232
        0x12 -> :sswitch_24c
        0x13 -> :sswitch_25f
        0x14 -> :sswitch_27a
        0x15 -> :sswitch_365
        0x16 -> :sswitch_7
        0x17 -> :sswitch_2b4
        0x18 -> :sswitch_2c7
        0x19 -> :sswitch_23f
        0x64 -> :sswitch_2da
        0x67 -> :sswitch_329
        0x68 -> :sswitch_314
        0x69 -> :sswitch_346
        0x6a -> :sswitch_37f
        0x6b -> :sswitch_3aa
        0x6c -> :sswitch_3bf
        0x6d -> :sswitch_2f7
        0x6e -> :sswitch_3da
        0x6f -> :sswitch_3f7
        0x70 -> :sswitch_410
        0x71 -> :sswitch_42a
        0x72 -> :sswitch_17d
        0x73 -> :sswitch_445
        0x74 -> :sswitch_45e
        0x75 -> :sswitch_477
    .end sparse-switch
.end method
