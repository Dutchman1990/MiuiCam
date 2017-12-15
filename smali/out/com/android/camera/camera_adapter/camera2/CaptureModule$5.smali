.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSession(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iput p2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 5

    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "captureSession - onClosed"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_20
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 5

    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "captureSession - onConfigureFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "Camera Initialization Failed"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Closing Camera"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$2;

    invoke-direct {v1, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$2;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap8(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    aget-object v3, v3, v4

    if-nez v3, :cond_17

    :cond_16
    return-void

    :cond_17
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "captureSession - onConfigured "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    aput-object p1, v3, v4

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iget v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    invoke-static {v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap21(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v3

    new-instance v4, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$1;

    invoke-direct {v4, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$1;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5a
    :try_start_5a
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_6f

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iget v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    invoke-virtual {v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->linkBayerMono(I)V

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set5(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z

    :cond_6f
    iget v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    sget v4, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne v3, v4, :cond_7d

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_b8

    :cond_7d
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get23(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get9(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    :goto_a4
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_b7

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    if-nez v4, :cond_e9

    :goto_b4
    invoke-virtual {v3, v1, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->onCaptureSessionConfigured(ZLandroid/hardware/camera2/CameraCaptureSession;)V

    :cond_b7
    :goto_b7
    return-void

    :cond_b8
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get23(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get9(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_df
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5a .. :try_end_df} :catch_e0

    goto :goto_a4

    :catch_e0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    invoke-static {v1, v2, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap24(Lcom/android/camera/camera_adapter/camera2/CaptureModule;ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_b7

    :cond_e9
    move v1, v2

    goto :goto_b4
.end method
