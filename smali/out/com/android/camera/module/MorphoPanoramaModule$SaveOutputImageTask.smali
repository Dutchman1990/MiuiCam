.class Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutputImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mSaveImage:Z

.field start_time:J

.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;Landroid/content/Context;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean p3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->mSaveImage:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 12

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "doInBackground start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap3(Lcom/android/camera/module/MorphoPanoramaModule;)V

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/panorama/MorphoPanoramaGP;->end()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->mSaveImage:Z

    if-eqz v3, :cond_cb

    if-eqz v2, :cond_3e

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "%s:end() -> 0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get22()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_87

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getBoundingRect(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_76

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getBoundingRect() -> 0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get21(Lcom/android/camera/module/MorphoPanoramaModule;)J

    move-result-wide v4

    invoke-static {v3, v4, v5, v9}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap1(Lcom/android/camera/module/MorphoPanoramaModule;JI)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3, v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap8(Lcom/android/camera/module/MorphoPanoramaModule;Ljava/lang/String;Landroid/graphics/Rect;)V

    :cond_87
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get22()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_cb

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_ba

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getClippingRect() -> 0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get21(Lcom/android/camera/module/MorphoPanoramaModule;)J

    move-result-wide v4

    invoke-static {v3, v4, v5, v8}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap1(Lcom/android/camera/module/MorphoPanoramaModule;JI)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3, v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap8(Lcom/android/camera/module/MorphoPanoramaModule;Ljava/lang/String;Landroid/graphics/Rect;)V

    :cond_cb
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "doInBackground end"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SaveOutputImageTask onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->finish()I

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-set3(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/panorama/MorphoPanoramaGP;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->-get10(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->-get7(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->-get7(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_35
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-boolean v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPaused:Z

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0, v8}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap9(Lcom/android/camera/module/MorphoPanoramaModule;Z)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView()V

    :cond_4b
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->-get2(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    :cond_60
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-boolean v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_6d
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-get20(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v1, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap7(Lcom/android/camera/module/MorphoPanoramaModule;)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v0, v3}, Lcom/android/camera/module/MorphoPanoramaModule;->enableCameraControls(Z)V

    :cond_8f
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0, v8}, Lcom/android/camera/module/MorphoPanoramaModule;->-set2(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->-get4(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0, v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-set0(Lcom/android/camera/module/MorphoPanoramaModule;I)I

    :cond_a1
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[MORTIME] PanoramaFinish time = %d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->start_time:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->start_time:J

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
