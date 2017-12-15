.class Lcom/android/camera/module/CameraModule$MediaProviderClientDaemonTask;
.super Landroid/os/AsyncTask;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaProviderClientDaemonTask"
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
.field mIsCreate:Z

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$MediaProviderClientDaemonTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean p2, p0, Lcom/android/camera/module/CameraModule$MediaProviderClientDaemonTask;->mIsCreate:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$MediaProviderClientDaemonTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule$MediaProviderClientDaemonTask;->mIsCreate:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MediaProviderClientDaemonTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-get14(Lcom/android/camera/module/CameraModule;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MediaProviderClientDaemonTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MediaProviderClientDaemonTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "media"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->-set10(Lcom/android/camera/module/CameraModule;Landroid/content/ContentProviderClient;)Landroid/content/ContentProviderClient;

    :cond_1d
    :goto_1d
    return-object v3

    :cond_1e
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MediaProviderClientDaemonTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-get14(Lcom/android/camera/module/CameraModule;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MediaProviderClientDaemonTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-get14(Lcom/android/camera/module/CameraModule;)Landroid/content/ContentProviderClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MediaProviderClientDaemonTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, v3}, Lcom/android/camera/module/CameraModule;->-set10(Lcom/android/camera/module/CameraModule;Landroid/content/ContentProviderClient;)Landroid/content/ContentProviderClient;

    goto :goto_1d
.end method
