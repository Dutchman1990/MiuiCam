.class public Lcom/android/camera/AudioCaptureManager;
.super Ljava/lang/Object;
.source "AudioCaptureManager.java"

# interfaces
.implements Lcom/android/camera/AudioCapture$Callback;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAudioCapture:Lcom/android/camera/AudioCapture;

.field private mCameraModule:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/ActivityBase;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    iput-object p2, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CameraModule == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/android/camera/AudioCapture;

    invoke-direct {v0, p0}, Lcom/android/camera/AudioCapture;-><init>(Lcom/android/camera/AudioCapture$Callback;)V

    iput-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->pause()V

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setAudioProgress(F)V

    :cond_2b
    return-void
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    return-object v0
.end method

.method public hideDelayNumber()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPanel;->hideDelayNumber()V

    return-void
.end method

.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    :goto_b
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    return-void

    :cond_19
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->open()V

    goto :goto_b
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    :cond_b
    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->open()V

    :cond_9
    return-void
.end method

.method public open()V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->start()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f0e011f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_22
.end method

.method public readyToAudioCapture()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->readyToAudioCapture()Z

    move-result v0

    return v0
.end method

.method public releaseShutter()V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    const/16 v1, 0x2bc

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->sendDelayedCaptureMessage(II)V

    return-void
.end method

.method public setDelayStep(I)V
    .registers 4

    if-ltz p1, :cond_15

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->showDelayNumber(Ljava/lang/String;)V

    :cond_15
    return-void
.end method
