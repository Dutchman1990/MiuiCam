.class Lcom/android/camera/module/CameraModule$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    return-void
.end method

.method public run()V
    .registers 10

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_4
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v2, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string/jumbo v3, "open_camera_times_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->prepareOpenCamera()V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setHardwareListener(Lcom/android/camera/CameraManager$HardwareErrorListener;)V

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v2, :cond_36

    return-void

    :cond_36
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CameraStartUpThread mCameraDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v4, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-wrap10(Lcom/android/camera/module/CameraModule;)V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get9(Lcom/android/camera/module/CameraModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_a0

    :cond_80
    new-instance v2, Lcom/android/camera/CameraHardwareException;

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "Failed to get parameters"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_8e
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_4 .. :try_end_8e} :catch_8e
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_4 .. :try_end_8e} :catch_11f

    :catch_8e
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2, v6}, Lcom/android/camera/module/CameraModule;->-set2(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v7, v2, Lcom/android/camera/module/CameraModule;->mOpenCameraFail:Z

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_9f
    return-void

    :cond_a0
    :try_start_a0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get24(Lcom/android/camera/module/CameraModule;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-nez v2, :cond_b4

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-wrap12(Lcom/android/camera/module/CameraModule;)V

    :cond_b4
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v2, :cond_b9

    return-void

    :cond_b9
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->setDisplayOrientation()V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v2, :cond_d2

    return-void

    :cond_d2
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v2, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_e8

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_132

    :cond_e8
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->startPreview()V

    :goto_ed
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->onCameraStartPreview()V

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/camera/module/CameraModule;->-set11(Lcom/android/camera/module/CameraModule;J)J

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v2, "Camera"

    const-string/jumbo v3, "CameraStartUpThread done"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_a0 .. :try_end_11e} :catch_8e
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_a0 .. :try_end_11e} :catch_11f

    goto :goto_9f

    :catch_11f
    move-exception v0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2, v6}, Lcom/android/camera/module/CameraModule;->-set2(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v7, v2, Lcom/android/camera/module/CameraModule;->mCameraDisabled:Z

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_9f

    :cond_132
    :try_start_132
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1e

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_13d
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_132 .. :try_end_13d} :catch_8e
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_132 .. :try_end_13d} :catch_11f

    goto :goto_ed
.end method
