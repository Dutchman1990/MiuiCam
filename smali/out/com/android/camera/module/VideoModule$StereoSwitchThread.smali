.class public Lcom/android/camera/module/VideoModule$StereoSwitchThread;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StereoSwitchThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method protected constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    return-void
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->openCamera()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->hasCameraException()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onCameraException()V

    return-void

    :cond_1d
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_22

    return-void

    :cond_22
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onCameraOpen()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->-wrap8(Lcom/android/camera/module/VideoModule;)V

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_40

    return-void

    :cond_40
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
