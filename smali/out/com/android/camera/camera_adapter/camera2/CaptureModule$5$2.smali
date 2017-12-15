.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$2;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$2;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$2;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap18(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$2;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    return-void
.end method
