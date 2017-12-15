.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;->captureStillPicture(I)V
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

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iput p2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;->val$id:I

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 7

    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "capture onCaptureCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap9(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    :cond_29
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 7

    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "capture onCaptureFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 8

    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "capture onCaptureSequenceCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iget v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;->val$id:I

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap26(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 9

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;->val$id:I

    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap6(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_e
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;->val$id:I

    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-eq v0, v1, :cond_1f

    :cond_14
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap28(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$7;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap15(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    :cond_1f
    return-void
.end method
