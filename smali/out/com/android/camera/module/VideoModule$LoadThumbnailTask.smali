.class Lcom/android/camera/module/VideoModule$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mThumbnail:Lcom/android/camera/Thumbnail;

.field mUri:Landroid/net/Uri;

.field mVideoPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {p1}, Lcom/android/camera/module/VideoModule;->-get3(Lcom/android/camera/module/VideoModule;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/camera/module/VideoModule;->-get2(Lcom/android/camera/module/VideoModule;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mVideoPath:Ljava/lang/String;

    return-void
.end method

.method private updateThumbnail()V
    .registers 4

    const-string/jumbo v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LoadThumbnailTask updateThumbnail mThumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v2, v2, Lcom/android/camera/module/VideoModule;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_49

    :cond_35
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_4a

    const/4 v0, 0x0

    :goto_46
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    :cond_49
    return-void

    :cond_4a
    const/4 v0, 0x1

    goto :goto_46
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mVideoPath:Ljava/lang/String;

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_15

    return-object v3

    :cond_15
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-static {v1, v0, v4, v4}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    :cond_1f
    return-object v3
.end method

.method protected onCancelled()V
    .registers 3

    const-string/jumbo v0, "videocamera"

    const-string/jumbo v1, "LoadThumbnailTask onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->updateThumbnail()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->updateThumbnail()V

    return-void
.end method
