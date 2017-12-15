.class Lcom/android/camera/module/VideoModule$7;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;

.field final synthetic val$statusBarVisible:Z


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$7;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean p2, p0, Lcom/android/camera/module/VideoModule$7;->val$statusBarVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$7;->val$statusBarVisible:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$7;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/camera/ui/V6RecordingTimeView;->animateIn(Ljava/lang/Runnable;IZ)V

    :cond_17
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$7;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v0

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PauseRecordingButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$7;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/camera/ui/V6PauseRecordingButton;->animateIn(Ljava/lang/Runnable;IZ)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$7;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6PauseRecordingButton;->enableControls(Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$7;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/camera/ui/V6VideoCaptureButton;->animateIn(Ljava/lang/Runnable;IZ)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$7;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6VideoCaptureButton;->enableControls(Z)V

    return-void
.end method
