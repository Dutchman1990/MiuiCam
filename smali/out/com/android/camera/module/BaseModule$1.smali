.class Lcom/android/camera/module/BaseModule$1;
.super Landroid/os/Handler;
.source "BaseModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/BaseModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/BaseModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/BaseModule;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/module/BaseModule$1;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$1;->this$0:Lcom/android/camera/module/BaseModule;

    iget v0, v0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule$1;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->showFrontCameraFirstUseHint()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule$1;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->cancelFrontCameraFirstUseHint(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    goto :goto_5

    :pswitch_21
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$1;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->dismissFrontCameraFirstUseHint()V

    goto :goto_5

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_21
    .end packed-switch
.end method
