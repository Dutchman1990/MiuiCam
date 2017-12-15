.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public notifyDevicePostureChanged()V
    .registers 1

    return-void
.end method

.method public onDeviceBecomeStable()V
    .registers 1

    return-void
.end method

.method public onDeviceBeginMoving()V
    .registers 1

    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .registers 10

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap8(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get8(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isTakingPicture()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isEvAdjustedTime()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get18(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap12(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)I

    move-result v0

    packed-switch v0, :pswitch_data_76

    goto :goto_19

    :pswitch_53
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_19

    :pswitch_60
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_19

    :pswitch_66
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_19

    :cond_6e
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_19

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_53
        :pswitch_60
        :pswitch_66
    .end packed-switch
.end method

.method public onDeviceOrientationChanged(FZ)V
    .registers 3

    return-void
.end method
