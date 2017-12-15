.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;
.super Landroid/os/Handler;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap8(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_54

    :goto_16
    return-void

    :pswitch_17
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap27(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_16

    :pswitch_1d
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CANCEL_TOUCH_FOCUS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap13(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)I

    move-result v1

    if-ne v0, v1, :cond_4d

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v1

    new-instance v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler$1;

    invoke-direct {v2, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler$1;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4d
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap36(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_16

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1d
    .end packed-switch
.end method
