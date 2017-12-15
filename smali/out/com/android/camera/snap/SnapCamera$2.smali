.class Lcom/android/camera/snap/SnapCamera$2;
.super Landroid/view/OrientationEventListener;
.source "SnapCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/snap/SnapCamera;->initOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapCamera;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 8

    const/16 v5, 0xe1

    const/16 v4, 0x87

    const/4 v0, 0x0

    const/16 v3, 0x2d

    if-gt v3, p1, :cond_3d

    if-ge p1, v4, :cond_3d

    const/16 v0, 0xb4

    :goto_d
    const/4 v2, -0x1

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v4}, Lcom/android/camera/snap/SnapCamera;->-get2(Lcom/android/camera/snap/SnapCamera;)I

    move-result v4

    aget-object v1, v3, v4

    const/4 v3, -0x1

    if-eq v0, v3, :cond_52

    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4f

    rsub-int v3, v0, 0x168

    rem-int/lit16 v2, v3, 0x168

    :goto_2a
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v3}, Lcom/android/camera/snap/SnapCamera;->-get5(Lcom/android/camera/snap/SnapCamera;)I

    move-result v3

    if-eq v3, v2, :cond_3c

    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v3, v2}, Lcom/android/camera/snap/SnapCamera;->updateCameraOrientation(I)V

    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v3, v2}, Lcom/android/camera/snap/SnapCamera;->-set0(Lcom/android/camera/snap/SnapCamera;I)I

    :cond_3c
    return-void

    :cond_3d
    if-gt v4, p1, :cond_44

    if-ge p1, v5, :cond_44

    const/16 v0, 0x10e

    goto :goto_d

    :cond_44
    if-gt v5, p1, :cond_4c

    const/16 v3, 0x13b

    if-ge p1, v3, :cond_4c

    const/4 v0, 0x0

    goto :goto_d

    :cond_4c
    const/16 v0, 0x5a

    goto :goto_d

    :cond_4f
    rem-int/lit16 v2, v0, 0x168

    goto :goto_2a

    :cond_52
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_2a
.end method
