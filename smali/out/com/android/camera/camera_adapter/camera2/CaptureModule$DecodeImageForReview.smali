.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;
.super Lcom/android/camera/module/Base2Module$DecodeTask;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeImageForReview"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;[BIZ)V
    .registers 5

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/Base2Module$DecodeTask;-><init>(Lcom/android/camera/module/Base2Module;[BIZ)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get14(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get25(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewImage()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get25(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewImage()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get25(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;)Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    return-void

    :cond_3d
    return-void
.end method
