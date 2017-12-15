.class Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;
.super Lcom/android/camera/module/CameraModule$JpegPictureCallback;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StereoPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method public constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;Landroid/location/Location;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 6

    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[mJpegPictureCallback] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/CameraMTK;->-get4(Lcom/android/camera/camera_adapter/CameraMTK;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->-get9(Lcom/android/camera/camera_adapter/CameraMTK;)Z

    move-result v0

    if-eqz v0, :cond_29

    return-void

    :cond_29
    if-eqz p1, :cond_50

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->-get4(Lcom/android/camera/camera_adapter/CameraMTK;)Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_33
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->-get2(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutter()V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->-set6(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->-wrap2(Lcom/android/camera/camera_adapter/CameraMTK;)V

    const-string/jumbo v0, "Camera"

    const-string/jumbo v1, "[mJpegPictureCallback] end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_50
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    if-nez p1, :cond_33

    return-void
.end method
